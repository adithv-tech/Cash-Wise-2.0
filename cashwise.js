
// ===== STATE =====
let state = {
  points: 250, lessonsCompleted: [], badgesEarned: ['first-login','budget-beginner'],
  spendItems: [], goals: [], quizScore: 0, currentQ: 0, darkMode: true,
  tabsVisited: [], slideIdx: 0
};
try { const s = localStorage.getItem('cw'); if(s) state = {...state,...JSON.parse(s)}; } catch(e){}
function save() { try { localStorage.setItem('cw', JSON.stringify(state)); } catch(e){} }

function updatePoints(add) {
  state.points += add;
  document.querySelectorAll('.pts-display').forEach(el => el.textContent = state.points);
  document.getElementById('your-leaderboard-pts').textContent = state.points + ' pts';
  save();
}

// ===== NAVIGATION =====
const TAB_POINTS = { learn:25, tools:20, challenges:15, resources:15, profile:10 };
function showPage(id) {
  document.querySelectorAll('.page').forEach(p => p.classList.remove('active'));
  document.querySelectorAll('.nav-item').forEach(b => b.classList.remove('active'));
  document.getElementById('page-'+id).classList.add('active');
  const nb = document.getElementById('nav-'+id);
  if(nb) nb.classList.add('active');
  window.scrollTo(0,0);
  if(id==='profile') updateProfile();
  if(id==='challenges') renderBadges();
  if(id==='resources') filterResources('all');
  // Award points for visiting tabs
  if(TAB_POINTS[id] && !state.tabsVisited.includes(id)) {
    state.tabsVisited.push(id);
    updatePoints(TAB_POINTS[id]);
    showToast('🗺️ New tab explored! +'+TAB_POINTS[id]+' pts', '✨');
    save();
  }
}
function setToolTab(tab) {
  document.querySelectorAll('.tool-tab').forEach(b => b.classList.toggle('active', b.dataset.tab===tab));
  document.querySelectorAll('.tool-content').forEach(c => c.classList.remove('active'));
  document.getElementById('tool-'+tab).classList.add('active');
}
function setLearnTab(tab) {
  document.querySelectorAll('.learn-tab').forEach(b => b.classList.toggle('active', b.dataset.tab===tab));
  document.querySelectorAll('.learn-content').forEach(c => c.classList.remove('active'));
  document.getElementById('learn-'+tab).classList.add('active');
}
function toggleMenu() { document.getElementById('mobile-nav').classList.toggle('open'); }
function toggleDark() {
  state.darkMode = !state.darkMode;
  document.body.classList.toggle('dark', state.darkMode);
  save();
}
if(state.darkMode) document.body.classList.add('dark');

// ===== LEARN =====
function completeLesson(name) {
  if(!state.lessonsCompleted.includes(name)) {
    state.lessonsCompleted.push(name);
    updatePoints(75);
    checkBadges();
    showToast('Lesson complete! +75 pts 🎉', '📚');
    save();
    document.getElementById('profile-lessons').textContent = state.lessonsCompleted.length;
  } else { showToast('Already completed!', 'ℹ️'); }
}

// ===== BUDGET =====
function calcBudget() {
  const inc = parseFloat(document.getElementById('bi').value)||0;
  const needs = parseFloat(document.getElementById('bn').value)||0;
  const wants = parseFloat(document.getElementById('bw').value)||0;
  const sav = parseFloat(document.getElementById('bs').value)||0;
  if(!inc) return;
  const np=Math.round(needs/inc*100), wp=Math.round(wants/inc*100), sp=Math.round(sav/inc*100);
  const lo=inc-needs-wants-sav;
  document.getElementById('nb').style.width=Math.min(np,100)+'%';
  document.getElementById('wb').style.width=Math.min(wp,100)+'%';
  document.getElementById('sb').style.width=Math.min(sp,100)+'%';
  document.getElementById('np').textContent=np+'%';
  document.getElementById('wp').textContent=wp+'%';
  document.getElementById('spp').textContent=sp+'%';
  const loEl=document.querySelector('#blo .lo-val');
  loEl.textContent='$'+lo.toFixed(2);
  loEl.style.color=lo>=0?'var(--green)':'#EF4444';
  document.getElementById('btip').style.display='block';
  document.getElementById('btip-txt').textContent = sp<20?'Try to get savings to 20%+!':np>50?'Needs above 50%, look for cuts.':'✅ Great 50/30/20 balance!';
  updatePoints(5); save();
}

// ===== SAVINGS GOAL =====
function calcGoal() {
  const t=parseFloat(document.getElementById('gt').value)||0, s=parseFloat(document.getElementById('gs').value)||0, w=parseFloat(document.getElementById('gw').value)||0;
  const pr=document.getElementById('goal-preview'); if(!t){pr.innerHTML='<p style="color:var(--muted);text-align:center;padding:20px">Enter a target amount</p>';return;}
  const pct=Math.min(Math.round(s/t*100),100), rem=Math.max(t-s,0), wks=w>0?Math.ceil(rem/w):null;
  pr.innerHTML=`<div style="text-align:center"><div style="font-size:0.8rem;color:var(--muted)">${pct}% reached</div><div style="font-size:2rem;font-weight:900;color:var(--green)">$${s.toFixed(0)}<span style="font-size:1rem;color:var(--muted)"> / $${t.toFixed(0)}</span></div></div><div class="pbar-wrap" style="margin:12px 0;height:14px"><div class="pbar" style="width:${pct}%;background:linear-gradient(90deg,var(--green),var(--blue))"></div></div><div style="display:grid;grid-template-columns:1fr 1fr;gap:8px"><div class="mini-stat"><div class="ms-lbl">Still Needed</div><div class="ms-val" style="color:var(--purple)">$${rem.toFixed(0)}</div></div><div class="mini-stat"><div class="ms-lbl">ETA</div><div class="ms-val" style="color:var(--blue)">${wks?wks+' wks':'—'}</div></div></div>${pct>=100?'<div style="margin-top:10px;background:#065F46;border-radius:10px;padding:10px;text-align:center;font-weight:800">🎉 Goal Reached!</div>':''}`;
}
function addGoal() {
  const name=document.getElementById('gn').value.trim()||'My Goal', t=parseFloat(document.getElementById('gt').value)||0;
  if(!t){showToast('Enter a target amount!','⚠️');return;}
  const s=parseFloat(document.getElementById('gs').value)||0, w=parseFloat(document.getElementById('gw').value)||0;
  state.goals.push({id:Date.now(),name,target:t,saved:s,weekly:w}); save(); renderGoals();
  ['gn','gt','gs','gw'].forEach(id=>document.getElementById(id).value='');
  showToast(`Goal "${name}" added! 🎯`,'🎯');
}
function renderGoals() {
  const el=document.getElementById('goals-list'); if(!el) return;
  el.innerHTML=state.goals.length?state.goals.map(g=>{const p=Math.min(Math.round(g.saved/g.target*100),100),r=Math.max(g.target-g.saved,0),w=g.weekly>0?Math.ceil(r/g.weekly):null;return`<div class="saving-item"><div style="font-size:1.5rem">${p>=100?'✅':'🎯'}</div><div style="flex:1"><div style="font-weight:700">${g.name}</div><div style="font-size:0.8rem;color:var(--muted)">$${g.saved} saved of $${g.target} (${p}%)${w?' · ~'+w+' wks left':''}</div><div class="pbar-wrap" style="margin-top:4px"><div class="pbar" style="width:${p}%;background:var(--green)"></div></div></div><button onclick="removeGoal(${g.id})" style="background:none;border:none;cursor:pointer;color:var(--muted)">🗑️</button></div>`;}).join(''):'<p style="color:var(--muted);text-align:center;padding:20px">No goals yet!</p>';
}
function removeGoal(id){state.goals=state.goals.filter(g=>g.id!==id);save();renderGoals();}

// ===== SPENDING =====
const catColors={Food:'#FF7043',Transport:'var(--blue)',Entertainment:'var(--purple)',Clothing:'#F59E0B',Savings:'var(--green)',Other:'#64748B'};
const catEmoji={Food:'🍔',Transport:'🚌',Entertainment:'🎮',Clothing:'👕',Savings:'💰',Other:'📦'};
function addSpend(){
  const d=document.getElementById('sd').value.trim(),a=parseFloat(document.getElementById('sa').value)||0,c=document.getElementById('sc').value;
  if(!d){showToast('Enter description!','⚠️');return;}if(!a||a<=0){showToast('Enter valid amount!','⚠️');return;}
  state.spendItems.unshift({id:Date.now(),desc:d,amount:a,cat:c,date:new Date().toLocaleDateString()});save();renderSpend();
  document.getElementById('sd').value='';document.getElementById('sa').value='';
  showToast(`$${a.toFixed(2)} logged!`,'📊');
}
function removeSpend(id){state.spendItems=state.spendItems.filter(s=>s.id!==id);save();renderSpend();}
function renderSpend(){
  const tbody=document.getElementById('spend-tbody');
  if(tbody) tbody.innerHTML=state.spendItems.length?state.spendItems.slice(0,12).map(s=>`<tr><td><strong>${s.desc}</strong><br><small style="color:var(--muted)">${s.date}</small></td><td><span style="color:${catColors[s.cat]}">${catEmoji[s.cat]} ${s.cat}</span></td><td style="font-weight:800;color:var(--green)">$${Number(s.amount).toFixed(2)}</td><td><button onclick="removeSpend(${s.id})" style="background:none;border:none;cursor:pointer;color:var(--muted)">🗑️</button></td></tr>`).join(''):'<tr><td colspan="4" style="text-align:center;color:var(--muted);padding:20px">No transactions yet</td></tr>';
  const total=state.spendItems.reduce((a,b)=>a+Number(b.amount),0);
  const tv=document.getElementById('spend-total-val'); if(tv) tv.textContent='$'+total.toFixed(2);
  const chart=document.getElementById('spend-chart'); if(!chart) return;
  const cats={}; state.spendItems.forEach(s=>{cats[s.cat]=(cats[s.cat]||0)+Number(s.amount);});
  if(!Object.keys(cats).length){chart.innerHTML='<div style="display:flex;align-items:center;justify-content:center;height:100%;color:var(--muted)">Add expenses to see chart</div>';return;}
  const max=Math.max(...Object.values(cats));
  chart.innerHTML=Object.entries(cats).sort((a,b)=>b[1]-a[1]).map(([cat,val])=>`<div style="flex:1;display:flex;flex-direction:column;align-items:center;gap:4px" title="${cat}: $${val.toFixed(2)}"><div style="font-size:0.7rem;color:var(--muted)">$${val.toFixed(0)}</div><div style="width:100%;height:${Math.max(Math.round(val/max*130),6)}px;background:${catColors[cat]||'var(--blue)'};border-radius:6px 6px 0 0"></div><div style="font-size:0.65rem;color:var(--muted)">${catEmoji[cat]}</div></div>`).join('');
}

// ===== QUIZ =====
const questions=[
  {q:"What does the 50/30/20 rule mean?",opts:["50% taxes, 30% rent, 20% food","50% needs, 30% wants, 20% savings","50% savings, 30% needs, 20% fun","50% investing, 30% savings, 20% spending"],correct:1},
  {q:"What is compound interest?",opts:["Interest on original amount only","Interest charged by government","Interest earned on principal AND prior interest","A fixed monthly fee"],correct:2},
  {q:"What credit score range is 'good'?",opts:["300–500","500–600","670–739","900–999"],correct:2},
  {q:"What is an emergency fund for?",opts:["Vacation spending","3–6 months of living expenses","Investment losses","Credit card debt"],correct:1},
  {q:"What is dollar-cost averaging?",opts:["Buying only cheapest stocks","Investing fixed amount regularly","Timing the market","Averaging daily spending"],correct:1},
  {q:"Which is NOT a credit score factor?",opts:["Payment history","Credit utilization","Your income","Length of credit history"],correct:2},
  {q:"What is an index fund?",opts:["Invests in one company","Tracks a market index like S&P 500","Savings account with no interest","A government bond"],correct:1},
  {q:"Why pay yourself first?",opts:["To avoid taxes","Ensures savings happen before spending","To impress friends","To qualify for a loan"],correct:1},
  {q:"What does APR stand for?",opts:["Annual Profit Return","Annual Percentage Rate","Average Payment Record","Actual Price Reduction"],correct:1},
  {q:"When can teens start a Roth IRA?",opts:["13","16","At any age with earned income","21"],correct:2}
];
function startQuiz(){
  state.currentQ=0;state.quizScore=0;
  document.getElementById('quiz-container').style.display='block';
  document.getElementById('quiz-container').scrollIntoView({behavior:'smooth'});
  renderQuestion();
}
function renderQuestion(){
  const q=questions[state.currentQ];
  document.getElementById('quiz-q-num').textContent=`Question ${state.currentQ+1} of ${questions.length}`;
  document.getElementById('quiz-q').textContent=q.q;
  document.getElementById('quiz-opts').innerHTML=q.opts.map((o,i)=>`<button class="quiz-option" onclick="answerQ(${i})">${o}</button>`).join('');
  document.getElementById('quiz-feedback').className='quiz-feedback';
  document.getElementById('quiz-next').style.display='none';
  const prog=document.getElementById('quiz-progress');
  prog.innerHTML=questions.map((_,i)=>`<div class="progress-dot ${i<state.currentQ?'done':i===state.currentQ?'current':''}"></div>`).join('');
}
function answerQ(i){
  const q=questions[state.currentQ];
  document.querySelectorAll('.quiz-option').forEach(b=>b.disabled=true);
  document.querySelectorAll('.quiz-option')[i].classList.add(i===q.correct?'correct':'wrong');
  document.querySelectorAll('.quiz-option')[q.correct].classList.add('correct');
  const fb=document.getElementById('quiz-feedback');
  if(i===q.correct){state.quizScore++;fb.className='quiz-feedback correct show';fb.textContent='✅ Correct!';}
  else{fb.className='quiz-feedback wrong show';fb.textContent='❌ The correct answer is highlighted.';}
  document.getElementById('quiz-next').style.display='inline-flex';
}
function nextQuestion(){
  state.currentQ++;
  if(state.currentQ>=questions.length){
    const pts=state.quizScore*15;
    updatePoints(pts);
    if(state.quizScore>=8&&!state.badgesEarned.includes('quiz-master')){state.badgesEarned.push('quiz-master');showToast('Badge: Quiz Master! 🏅 +'+pts+' pts','🏅');}
    else showToast(`Quiz done! ${state.quizScore}/${questions.length} — +${pts} pts 🎉`,'🎉');
    document.getElementById('quiz-container').style.display='none';
    save();renderBadges();return;
  }
  renderQuestion();
}

// ===== BADGES =====
const ALL_BADGES=[
  {id:'first-login',icon:'🌟',name:'First Login',desc:'Joined CashWise!'},
  {id:'budget-beginner',icon:'💰',name:'Budget Beginner',desc:'Used the budget planner'},
  {id:'quiz-master',icon:'🧠',name:'Quiz Master',desc:'Score 8+/10 on a quiz'},
  {id:'saver-pro',icon:'🏦',name:'Saver Pro',desc:'Completed Saving module'},
  {id:'credit-wise',icon:'💳',name:'Credit Wise',desc:'Completed Credit module'},
  {id:'investor',icon:'📈',name:'Investor',desc:'Completed Investing module'},
  {id:'explorer',icon:'🗺️',name:'Explorer',desc:'Visited all tabs'},
  {id:'spender',icon:'📊',name:'Tracker',desc:'Logged 5+ expenses'},
];
function renderBadges(){
  const el=document.getElementById('badges-grid'); if(!el) return;
  el.innerHTML=ALL_BADGES.map(b=>`<div class="badge-item ${state.badgesEarned.includes(b.id)?'earned':'locked'}" title="${b.desc}"><div style="font-size:2rem">${b.icon}</div><div style="font-size:0.7rem;font-weight:700;margin-top:4px">${b.name}</div></div>`).join('');
}
function checkBadges(){
  if(state.lessonsCompleted.some(l=>l.includes('Saving'))&&!state.badgesEarned.includes('saver-pro')){state.badgesEarned.push('saver-pro');showToast('Badge: Saver Pro! 🏦','🏦');}
  if(state.lessonsCompleted.some(l=>l.includes('Credit'))&&!state.badgesEarned.includes('credit-wise')){state.badgesEarned.push('credit-wise');showToast('Badge: Credit Wise! 💳','💳');}
  if(state.lessonsCompleted.some(l=>l.includes('Investing'))&&!state.badgesEarned.includes('investor')){state.badgesEarned.push('investor');showToast('Badge: Investor! 📈','📈');}
  if(state.tabsVisited.length>=5&&!state.badgesEarned.includes('explorer')){state.badgesEarned.push('explorer');showToast('Badge: Explorer! 🗺️','🗺️');}
  if(state.spendItems.length>=5&&!state.badgesEarned.includes('spender')){state.badgesEarned.push('spender');showToast('Badge: Tracker! 📊','📊');}
  save();
}

// ===== RESOURCES =====
const resources=[
  {cat:'budgeting',icon:'📋',title:'Monthly Budget Worksheet',desc:'Printable template to track income and expenses every month.',type:'Worksheet'},
  {cat:'budgeting',icon:'📊',title:'50/30/20 Rule Guide',desc:'Illustrated breakdown of the most popular teen budgeting rule.',type:'Guide'},
  {cat:'saving',icon:'🎯',title:'Savings Goal Tracker',desc:'Set, track, and achieve your savings goals.',type:'Worksheet'},
  {cat:'saving',icon:'🛡️',title:'Emergency Fund Planner',desc:'Step-by-step guide to build your first emergency fund.',type:'Guide'},
  {cat:'credit',icon:'💳',title:'Credit Score Guide for Teens',desc:'Everything about credit scores and how to win the game.',type:'Guide'},
  {cat:'investing',icon:'📈',title:'Investing for Beginners',desc:'Plain-English guide to stocks, bonds, index funds, and compound growth.',type:'Guide'},
];
function filterResources(cat){
  document.querySelectorAll('.resource-cat').forEach(b=>b.classList.toggle('active',cat==='all'?b.dataset.cat==='all':b.dataset.cat===cat));
  const filtered=cat==='all'?resources:resources.filter(r=>r.cat===cat);
  document.getElementById('resources-list').innerHTML=filtered.map(r=>`<div class="resource-card"><div style="font-size:2rem">${r.icon}</div><h4>${r.title}</h4><p>${r.desc}</p><span class="res-badge">${r.type}</span></div>`).join('');
  updatePoints(10); save();
}

// ===== PROFILE =====
function updateProfile(){
  document.getElementById('profile-points').textContent=state.points;
  document.getElementById('profile-lessons').textContent=state.lessonsCompleted.length;
  document.getElementById('profile-badges-count').textContent=state.badgesEarned.length;
  const pb=document.getElementById('profile-badges');
  pb.innerHTML=ALL_BADGES.filter(b=>state.badgesEarned.includes(b.id)).map(b=>`<div class="badge-item earned" title="${b.desc}"><div style="font-size:1.8rem">${b.icon}</div><div style="font-size:0.7rem;font-weight:700;margin-top:4px">${b.name}</div></div>`).join('')||'<p style="color:var(--muted);font-size:0.85rem">No badges yet!</p>';
  const modules=[{name:'💰 Budgeting',lessons:['Budgeting 101','Zero-Based Budget','Budget Apps','Irregular Income','Envelope Method']},{name:'🏦 Saving',lessons:['Saving Fundamentals','High-Yield Savings','Automating Savings','Saving vs Investing','No-Spend Challenge']},{name:'💳 Credit',lessons:['Credit Basics','Credit Utilization','Building Credit at 18','Credit Card Traps','Freezing Your Credit']},{name:'📈 Investing',lessons:['Investing Basics','Index Funds','Roth IRA','Dollar-Cost Averaging','Diversification']}];
  document.getElementById('profile-progress').innerHTML=modules.map(m=>{const done=m.lessons.filter(l=>state.lessonsCompleted.includes(l)).length,pct=Math.round(done/m.lessons.length*100);return`<div class="progress-module"><div style="display:flex;justify-content:space-between;margin-bottom:8px"><span style="font-weight:800;font-size:0.9rem">${m.name}</span><span style="color:var(--muted);font-size:0.85rem">${done}/${m.lessons.length}</span></div><div class="pbar-wrap"><div class="pbar" style="width:${pct}%;background:${pct===100?'var(--green)':'var(--blue)'}"></div></div></div>`;}).join('');
}

// ===== TOAST =====
function showToast(msg,icon='🎉'){
  const t=document.getElementById('toast');
  document.getElementById('toast-msg').textContent=msg;
  document.getElementById('toast-icon').textContent=icon;
  t.classList.add('show');
  setTimeout(()=>t.classList.remove('show'),3500);
}

// ===== EMAIL =====
function sendEmail(){
  const msg=document.getElementById('contact-msg').value.trim();
  if(!msg){showToast('Please enter a message!','⚠️');return;}
  window.location.href=`mailto:vemiadith@gmail.com?subject=CashWise Message&body=${encodeURIComponent(msg)}`;
  document.getElementById('contact-msg').value='';
  showToast('Opening your email app! 📧','📧');
}

// ===== TESTIMONIAL SLIDESHOW =====
const slides=document.querySelectorAll('.testimonial-slide');
let autoSlide;
function changeSlide(dir){
  state.slideIdx=(state.slideIdx+dir+slides.length)%slides.length;
  updateSlideshow();
}
function goToSlide(i){state.slideIdx=i;updateSlideshow();}
function updateSlideshow(){
  slides.forEach((s,i)=>s.classList.toggle('active',i===state.slideIdx));
  document.querySelectorAll('.dot').forEach((d,i)=>d.classList.toggle('active',i===state.slideIdx));
  clearInterval(autoSlide);
  autoSlide=setInterval(()=>changeSlide(1),5000);
}
autoSlide=setInterval(()=>changeSlide(1),5000);

// ===== INIT =====
document.querySelectorAll('.pts-display').forEach(el=>el.textContent=state.points);
document.getElementById('profile-lessons').textContent=state.lessonsCompleted.length;
document.getElementById('your-leaderboard-pts').textContent=state.points+' pts';
renderGoals();
renderSpend();
renderBadges();
updateSlideshow();
