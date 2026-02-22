$f = 'CyberWave 2_21_26.css'
$h = @'
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>CashWise — Teen Financial Literacy</title><link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700;800;900&display=swap" rel="stylesheet"><style>
:root{--blue:#1A6FE8;--blue-d:#0D4BB5;--purple:#7C3AED;--purple-l:#A78BFA;--green:#00C47A;--green-l:#A7F3D0;--bg:#0F172A;--sidebar:#111827;--card:#1E293B;--card2:#263244;--text:#F1F5F9;--muted:#94A3B8;--border:#2D3F5A;--r:18px;--rs:12px;}
*{box-sizing:border-box;margin:0;padding:0;}html{scroll-behavior:smooth;}
body{font-family:'Nunito',sans-serif;background:var(--bg);color:var(--text);min-height:100vh;display:flex;}
.sidebar{width:220px;min-height:100vh;background:var(--sidebar);border-right:1px solid var(--border);display:flex;flex-direction:column;padding:20px 12px;position:fixed;top:0;left:0;bottom:0;z-index:100;}
.logo{font-size:1.3rem;font-weight:900;color:var(--blue);padding:8px 12px 20px;display:flex;align-items:center;gap:8px;flex-shrink:0;}
.logo span{color:var(--purple-l);}
.nav-section{flex:1;}
.nav-item{display:flex;align-items:center;gap:10px;padding:10px 14px;border-radius:50px;cursor:pointer;font-weight:700;font-size:0.9rem;color:var(--muted);border:none;background:none;width:100%;text-align:left;transition:all 0.2s;margin-bottom:4px;}
.nav-item:hover{background:var(--card2);color:var(--text);}
.nav-item.active{background:var(--blue);color:white;}
.nav-item .ni{font-size:1.1rem;width:22px;text-align:center;}
.sidebar-bottom{padding-top:12px;border-top:1px solid var(--border);}
.pts-pill{background:linear-gradient(135deg,var(--blue),var(--purple));border-radius:50px;padding:8px 14px;font-weight:800;font-size:0.85rem;text-align:center;cursor:pointer;margin-bottom:8px;}
.dark-btn{background:var(--card2);border:1px solid var(--border);border-radius:50px;padding:8px 14px;font-weight:700;font-size:0.85rem;color:var(--muted);cursor:pointer;width:100%;transition:all 0.2s;}
.dark-btn:hover{background:var(--card);color:var(--text);}
.main{margin-left:220px;flex:1;min-height:100vh;overflow-y:auto;}
.page{display:none;animation:fi 0.3s ease;padding:28px;}
.page.active{display:block;}
@keyframes fi{from{opacity:0;transform:translateY(12px);}to{opacity:1;transform:translateY(0);}}
.page-header{margin-bottom:24px;}
.page-title{font-size:1.8rem;font-weight:900;}
.page-sub{color:var(--muted);margin-top:4px;}
.metrics{display:grid;grid-template-columns:repeat(4,1fr);gap:16px;margin-bottom:24px;}
.metric-card{background:var(--card);border-radius:var(--r);padding:20px;border:1px solid var(--border);}
.metric-card .mc-lbl{font-size:0.78rem;color:var(--muted);font-weight:700;text-transform:uppercase;letter-spacing:0.05em;margin-bottom:6px;}
.metric-card .mc-val{font-size:1.8rem;font-weight:900;color:var(--blue);}
.metric-card .mc-val.green{color:var(--green);}
.metric-card .mc-val.purple{color:var(--purple-l);}
.metric-card .mc-sub{font-size:0.78rem;color:var(--muted);margin-top:2px;}
.card{background:var(--card);border-radius:var(--r);border:1px solid var(--border);padding:24px;}
.card-title{font-size:1rem;font-weight:800;margin-bottom:16px;display:flex;align-items:center;gap:8px;}
.grid2{display:grid;grid-template-columns:1fr 1fr;gap:18px;}
.grid3{display:grid;grid-template-columns:repeat(3,1fr);gap:16px;}
.btn{display:inline-flex;align-items:center;gap:6px;padding:10px 20px;border-radius:50px;border:none;font-family:'Nunito',sans-serif;font-weight:800;font-size:0.9rem;cursor:pointer;transition:all 0.2s;}
.btn-blue{background:var(--blue);color:white;}.btn-blue:hover{background:var(--blue-d);transform:scale(1.03);}
.btn-purple{background:var(--purple);color:white;}.btn-purple:hover{background:#5B21B6;transform:scale(1.03);}
.btn-green{background:var(--green);color:#065F46;font-weight:800;}.btn-green:hover{opacity:0.9;}
.btn-sm{padding:7px 14px;font-size:0.8rem;}
.pill{display:inline-flex;align-items:center;gap:4px;padding:3px 10px;border-radius:50px;font-size:0.75rem;font-weight:800;}
.pill-blue{background:#1E3A5F;color:var(--blue);}
.pill-green{background:#064E3B;color:var(--green);}
.pill-purple{background:#2D1A4E;color:var(--purple-l);}
.pbar-wrap{background:var(--border);border-radius:50px;height:8px;overflow:hidden;}
.pbar{height:100%;border-radius:50px;transition:width 0.5s;}
.form-group{margin-bottom:14px;}
.form-group label{display:block;font-weight:700;font-size:0.85rem;margin-bottom:6px;color:var(--muted);}
.form-group input,.form-group select,.form-group textarea{width:100%;padding:10px 14px;border-radius:var(--rs);border:1px solid var(--border);background:var(--bg);color:var(--text);font-family:'Nunito',sans-serif;font-size:0.9rem;outline:none;transition:border-color 0.2s;}
.form-group input:focus,.form-group select:focus,.form-group textarea:focus{border-color:var(--blue);}
.testimonial-box{position:relative;overflow:hidden;border-radius:var(--r);}
.testimonial-slide{display:none;background:var(--card);border-radius:var(--r);padding:24px;border:1px solid var(--border);}
.testimonial-slide.active{display:block;animation:fi 0.4s ease;}
.t-text{font-style:italic;color:var(--muted);margin-bottom:14px;line-height:1.6;}
.t-author{display:flex;align-items:center;gap:10px;}
.avatar{width:38px;height:38px;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:1.2rem;}
.slide-controls{display:flex;align-items:center;gap:8px;margin-top:12px;justify-content:center;}
.dot{width:8px;height:8px;border-radius:50%;background:var(--border);border:none;cursor:pointer;transition:all 0.3s;padding:0;}
.dot.active{background:var(--blue);width:20px;}
.slide-btn{background:var(--card2);border:1px solid var(--border);border-radius:50%;width:30px;height:30px;color:var(--text);cursor:pointer;font-size:1rem;display:flex;align-items:center;justify-content:center;transition:all 0.2s;}
.slide-btn:hover{background:var(--blue);color:white;}
.learn-tabs{display:flex;gap:6px;margin-bottom:20px;flex-wrap:wrap;}
.learn-tab{padding:8px 18px;border-radius:50px;border:1px solid var(--border);background:var(--card2);color:var(--muted);font-weight:700;font-size:0.85rem;cursor:pointer;transition:all 0.2s;}
.learn-tab.active{background:var(--blue);border-color:var(--blue);color:white;}
.learn-content{display:none;}.learn-content.active{display:block;animation:fi 0.3s ease;}
.lesson-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-top:16px;}
.lesson-card{background:var(--card2);border-radius:var(--rs);padding:16px;border:1px solid var(--border);cursor:pointer;transition:all 0.2s;}
.lesson-card:hover{border-color:var(--blue);transform:translateY(-2px);}
.lesson-card h4{font-size:0.9rem;font-weight:800;margin-bottom:6px;}
.lesson-card p{font-size:0.78rem;color:var(--muted);line-height:1.5;}
.lesson-card .lc-btn{margin-top:10px;}
.tool-tabs{display:flex;gap:6px;margin-bottom:20px;}
.tool-tab{padding:8px 18px;border-radius:50px;border:1px solid var(--border);background:var(--card2);color:var(--muted);font-weight:700;font-size:0.85rem;cursor:pointer;transition:all 0.2s;}
.tool-tab.active{background:var(--green);border-color:var(--green);color:#064E3B;}
.tool-content{display:none;}.tool-content.active{display:block;animation:fi 0.3s ease;}
.quiz-option{width:100%;padding:12px 16px;border-radius:var(--rs);border:1px solid var(--border);background:var(--card2);color:var(--text);font-family:'Nunito',sans-serif;font-weight:700;font-size:0.9rem;cursor:pointer;text-align:left;margin-bottom:10px;transition:all 0.2s;}
.quiz-option:hover:not(:disabled){border-color:var(--blue);background:var(--card);}
.quiz-option.correct{background:#064E3B;border-color:var(--green);color:var(--green);}
.quiz-option.wrong{background:#450A0A;border-color:#EF4444;color:#FCA5A5;}
.quiz-feedback{padding:12px 16px;border-radius:var(--rs);font-weight:700;display:none;margin-top:8px;}
.quiz-feedback.show{display:block;}
.quiz-feedback.correct{background:#064E3B;color:var(--green);}
.quiz-feedback.wrong{background:#450A0A;color:#FCA5A5;}
.progress-dot{width:10px;height:10px;border-radius:50%;background:var(--border);display:inline-block;margin-right:4px;transition:all 0.3s;}
.progress-dot.done{background:var(--green);}
.progress-dot.current{background:var(--blue);transform:scale(1.3);}
.challenge-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:14px;margin-bottom:24px;}
.challenge-card{background:var(--card);border-radius:var(--r);padding:20px;border:1px solid var(--border);text-align:center;cursor:pointer;transition:all 0.2s;}
.challenge-card:hover{border-color:var(--blue);transform:translateY(-3px);}
.challenge-card .cc-icon{font-size:2.2rem;margin-bottom:10px;}
.challenge-card h3{font-weight:800;margin-bottom:6px;font-size:0.95rem;}
.challenge-card p{font-size:0.78rem;color:var(--muted);margin-bottom:10px;}
.challenge-card .reward{color:var(--purple-l);font-weight:800;font-size:0.85rem;}
.badges-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;}
.badge-item{background:var(--card2);border-radius:var(--rs);padding:14px;text-align:center;border:1px solid var(--border);transition:all 0.2s;}
.badge-item.earned{border-color:var(--purple);background:#2D1A4E;}
.badge-item.locked{opacity:0.4;filter:grayscale(1);}
.leaderboard-item{display:flex;align-items:center;gap:12px;padding:12px 16px;border-bottom:1px solid var(--border);}
.leaderboard-item:last-child{border-bottom:none;}
.rank{width:26px;height:26px;border-radius:50%;display:flex;align-items:center;justify-content:center;font-weight:900;font-size:0.8rem;background:var(--border);}
.rank.gold{background:#FFD700;color:#7A5000;}.rank.silver{background:#94A3B8;color:white;}.rank.bronze{background:#D97706;color:white;}
.resource-cat{padding:7px 16px;border-radius:50px;border:1px solid var(--border);background:var(--card2);color:var(--muted);font-weight:700;font-size:0.82rem;cursor:pointer;transition:all 0.2s;}
.resource-cat.active{background:var(--purple);border-color:var(--purple);color:white;}
.resource-card{background:var(--card);border-radius:var(--r);padding:20px;border:1px solid var(--border);display:flex;flex-direction:column;gap:8px;}
.resource-card h4{font-weight:800;font-size:0.9rem;}
.resource-card p{font-size:0.78rem;color:var(--muted);}
.res-badge{display:inline-flex;padding:3px 10px;border-radius:50px;font-size:0.72rem;font-weight:800;background:#1E3A5F;color:var(--blue);}
.saving-item{display:flex;align-items:center;gap:10px;background:var(--card2);border-radius:var(--rs);padding:12px;border:1px solid var(--border);margin-bottom:8px;}
.spending-table{width:100%;border-collapse:collapse;}
.spending-table th,.spending-table td{padding:10px 14px;text-align:left;border-bottom:1px solid var(--border);font-size:0.85rem;}
.spending-table th{color:var(--muted);font-size:0.75rem;text-transform:uppercase;}
.mini-stat{background:var(--card2);border-radius:var(--rs);padding:12px;text-align:center;}
.ms-lbl{font-size:0.72rem;color:var(--muted);font-weight:700;text-transform:uppercase;margin-bottom:4px;}
.ms-val{font-size:1.3rem;font-weight:900;}
.progress-module{background:var(--card2);border-radius:var(--rs);padding:14px;margin-bottom:10px;}
.hero-cta{background:linear-gradient(135deg,var(--blue),var(--purple));border-radius:var(--r);padding:32px;color:white;margin-bottom:24px;}
.hero-cta h1{font-size:2rem;font-weight:900;margin-bottom:8px;}
.hero-cta p{opacity:0.85;margin-bottom:20px;}
.hero-btns{display:flex;gap:10px;flex-wrap:wrap;}
.toast{position:fixed;bottom:24px;right:24px;z-index:999;background:linear-gradient(135deg,var(--blue),var(--purple));color:white;padding:14px 20px;border-radius:var(--r);font-weight:700;font-size:0.9rem;box-shadow:0 8px 32px rgba(26,111,232,0.35);transform:translateY(120px);opacity:0;transition:all 0.4s cubic-bezier(0.34,1.56,0.64,1);display:flex;align-items:center;gap:10px;}
.toast.show{transform:translateY(0);opacity:1;}
@media(max-width:900px){.sidebar{display:none;}.main{margin-left:0;}}
</style></head><body>
<aside class="sidebar">
  <div class="logo">🪙 Cash<span>Wise</span></div>
  <div class="nav-section">
    <button class="nav-item active" id="nav-home" onclick="showPage('home')"><span class="ni">🏠</span>Home</button>
    <button class="nav-item" id="nav-learn" onclick="showPage('learn')"><span class="ni">📚</span>Learn</button>
    <button class="nav-item" id="nav-tools" onclick="showPage('tools')"><span class="ni">🛠️</span>Tools</button>
    <button class="nav-item" id="nav-challenges" onclick="showPage('challenges')"><span class="ni">🎯</span>Challenges</button>
    <button class="nav-item" id="nav-resources" onclick="showPage('resources')"><span class="ni">📄</span>Resources</button>
    <button class="nav-item" id="nav-profile" onclick="showPage('profile')"><span class="ni">👤</span>Profile</button>
  </div>
  <div class="sidebar-bottom">
    <div class="pts-pill" onclick="showPage('profile')">⭐ <span class="pts-display">250</span> pts</div>
    <button class="dark-btn" onclick="toggleDark()">🌙 Toggle Theme</button>
  </div>
</aside>

<main class="main">

<!-- HOME -->
<div class="page active" id="page-home">
  <div class="hero-cta">
    <h1>💸 Master Your <span style="color:var(--green-l)">Money</span> Before Life Gets Real</h1>
    <p>Learn budgeting, saving, credit & investing through fun, interactive lessons built just for teens.</p>
    <div class="hero-btns">
      <button class="btn btn-green" onclick="showPage('learn')">🚀 Start Learning</button>
      <button class="btn btn-purple" onclick="showPage('tools')">🛠️ Try the Tools</button>
    </div>
  </div>
  <div class="metrics">
    <div class="metric-card"><div class="mc-lbl">Your Points</div><div class="mc-val pts-display">250</div><div class="mc-sub">Keep learning to earn more!</div></div>
    <div class="metric-card"><div class="mc-lbl">Lessons Done</div><div class="mc-val green" id="home-lessons">0</div><div class="mc-sub">20 total available</div></div>
    <div class="metric-card"><div class="mc-lbl">Badges Earned</div><div class="mc-val purple" id="home-badges">2</div><div class="mc-sub">8 badges to collect</div></div>
    <div class="metric-card"><div class="mc-lbl">Day Streak</div><div class="mc-val" style="color:var(--purple-l)">🔥 3</div><div class="mc-sub">Keep it up!</div></div>
  </div>
  <div class="grid2">
    <div class="card">
      <div class="card-title">💬 What Teens Say</div>
      <div class="testimonial-box">
        <div class="testimonial-slide active"><p class="t-text">"CashWise helped me save $400 in 3 months for my first laptop! The budgeting tools are super easy."</p><div class="t-author"><div class="avatar" style="background:#1E3A5F">👧</div><div><div style="font-weight:800;font-size:0.9rem">Mia T., 16</div><div style="color:var(--muted);font-size:0.78rem">San Francisco, CA</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"The investing module blew my mind. I opened my first Roth IRA at 17 because of CashWise!"</p><div class="t-author"><div class="avatar" style="background:#064E3B">👦</div><div><div style="font-weight:800;font-size:0.9rem">Jordan K., 17</div><div style="color:var(--muted);font-size:0.78rem">Austin, TX</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"The quizzes make learning fun. 12 badges earned and I'm addicted to the challenges 😂"</p><div class="t-author"><div class="avatar" style="background:#2D1A4E">🧒</div><div><div style="font-weight:800;font-size:0.9rem">Priya S., 15</div><div style="color:var(--muted);font-size:0.78rem">Chicago, IL</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"I saved $600 for prom using the spending tracker. My friends were shocked how much I had!"</p><div class="t-author"><div class="avatar" style="background:#1E3A5F">👩</div><div><div style="font-weight:800;font-size:0.9rem">Destiny R., 17</div><div style="color:var(--muted);font-size:0.78rem">Atlanta, GA</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"I thought investing was only for adults. CashWise proved me totally wrong — invested $250 at 16!"</p><div class="t-author"><div class="avatar" style="background:#064E3B">👦</div><div><div style="font-weight:800;font-size:0.9rem">Marcus L., 16</div><div style="color:var(--muted);font-size:0.78rem">Houston, TX</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"Credit module was eye-opening. I'm building credit at 18 and my score is already 700+!"</p><div class="t-author"><div class="avatar" style="background:#2D1A4E">👩</div><div><div style="font-weight:800;font-size:0.9rem">Aaliyah M., 18</div><div style="color:var(--muted);font-size:0.78rem">Detroit, MI</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"My parents were shocked I knew what a Roth IRA was. CashWise made me the family financial expert!"</p><div class="t-author"><div class="avatar" style="background:#1E3A5F">🧑</div><div><div style="font-weight:800;font-size:0.9rem">Sam P., 15</div><div style="color:var(--muted);font-size:0.78rem">Seattle, WA</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"30-Day Savings Sprint was amazing. I saved $320 in a month by following the tips here!"</p><div class="t-author"><div class="avatar" style="background:#064E3B">👧</div><div><div style="font-weight:800;font-size:0.9rem">Zoe C., 16</div><div style="color:var(--muted);font-size:0.78rem">Phoenix, AZ</div></div></div></div>
        <div class="testimonial-slide"><p class="t-text">"I never understood budgeting until CashWise. The 50/30/20 rule changed everything for me!"</p><div class="t-author"><div class="avatar" style="background:#2D1A4E">👦</div><div><div style="font-weight:800;font-size:0.9rem">Tyler W., 17</div><div style="color:var(--muted);font-size:0.78rem">Boston, MA</div></div></div></div>
        <div class="slide-controls">
          <button class="slide-btn" onclick="changeSlide(-1)">‹</button>
          <button class="dot active" onclick="goToSlide(0)"></button>
          <button class="dot" onclick="goToSlide(1)"></button>
          <button class="dot" onclick="goToSlide(2)"></button>
          <button class="dot" onclick="goToSlide(3)"></button>
          <button class="dot" onclick="goToSlide(4)"></button>
          <button class="dot" onclick="goToSlide(5)"></button>
          <button class="dot" onclick="goToSlide(6)"></button>
          <button class="dot" onclick="goToSlide(7)"></button>
          <button class="dot" onclick="goToSlide(8)"></button>
          <button class="slide-btn" onclick="changeSlide(1)">›</button>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-title">📧 Contact Us</div>
      <p style="color:var(--muted);font-size:0.85rem;margin-bottom:14px">Have a question or feedback? Send us a message directly!</p>
      <div class="form-group"><label>Your Message</label><textarea id="contact-msg" rows="4" placeholder="Type your message, question, or story..."></textarea></div>
      <button class="btn btn-blue" onclick="sendEmail()">📧 Send Email</button>
    </div>
  </div>
</div>

<!-- LEARN -->
<div class="page" id="page-learn">
  <div class="page-header"><div class="page-title">📚 Learn Financial Skills</div><div class="page-sub">Interactive lessons with real-world examples. +75 pts per lesson!</div></div>
  <div class="learn-tabs">
    <button class="learn-tab active" data-tab="budgeting" onclick="setLearnTab('budgeting')">💰 Budgeting</button>
    <button class="learn-tab" data-tab="saving" onclick="setLearnTab('saving')">🏦 Saving</button>
    <button class="learn-tab" data-tab="credit" onclick="setLearnTab('credit')">💳 Credit</button>
    <button class="learn-tab" data-tab="investing" onclick="setLearnTab('investing')">📈 Investing</button>
  </div>
  <div class="learn-content active" id="learn-budgeting">
    <div class="card" style="margin-bottom:16px"><div class="card-title">💰 Budgeting Fundamentals</div><p style="color:var(--muted);line-height:1.7;margin-bottom:12px">A budget is a plan for your money. The popular <strong style="color:var(--blue)">50/30/20 rule</strong> splits income into 50% needs, 30% wants, and 20% savings — a simple framework that works at any income level.</p><button class="btn btn-blue btn-sm" onclick="completeLesson('Budgeting 101')">✅ Complete: Budgeting 101</button></div>
    <div class="lesson-grid">
      <div class="lesson-card"><h4>📊 Zero-Based Budgeting</h4><p>Give every dollar a job. Income minus all expenses equals zero — you plan every penny before the month starts.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Zero-Based Budget')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>📱 Budget Apps & Tools</h4><p>YNAB, Mint, and EveryDollar make budgeting automatic. Learn which apps work best for teens with irregular income.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Budget Apps')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🎭 Irregular Income Budgeting</h4><p>When you earn differently each month (gigs, tips, seasonal jobs), budget from your lowest expected month.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Irregular Income')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>✉️ The Envelope Method</h4><p>Divide cash into envelopes by category. When the envelope is empty, spending stops. Old-school but powerful for impulse control.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Envelope Method')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🔄 Monthly Budget Reviews</h4><p>At month-end, compare planned vs actual. Even 15 minutes of review can reveal huge opportunities to save more.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Budget Reviews')">✅ Mark Complete</button></div>
    </div>
  </div>
  <div class="learn-content" id="learn-saving">
    <div class="card" style="margin-bottom:16px"><div class="card-title">🏦 The Power of Saving</div><p style="color:var(--muted);line-height:1.7;margin-bottom:12px">Saving is the foundation of financial security. Start with a <strong style="color:var(--green)">$500–$1,000 emergency fund</strong>, then build toward 3–6 months of expenses. Even saving $25/week adds up to $1,300 in a year!</p><button class="btn btn-green btn-sm" onclick="completeLesson('Saving Fundamentals')">✅ Complete: Saving Fundamentals</button></div>
    <div class="lesson-grid">
      <div class="lesson-card"><h4>🏛️ High-Yield Savings Accounts</h4><p>HYSA accounts pay 4–5% APY vs 0.01% at big banks. Your emergency fund should always be in a HYSA.</p><button class="btn btn-green btn-sm lc-btn" onclick="completeLesson('High-Yield Savings')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>⚙️ Automating Your Savings</h4><p>Set up auto-transfers the same day you get paid. "Pay yourself first" removes willpower from the equation entirely.</p><button class="btn btn-green btn-sm lc-btn" onclick="completeLesson('Automating Savings')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>⚖️ Saving vs Investing</h4><p>Savings = safe, accessible, low return. Investing = higher risk, higher reward, for money you won't need for 5+ years.</p><button class="btn btn-green btn-sm lc-btn" onclick="completeLesson('Saving vs Investing')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🚫 No-Spend Challenges</h4><p>Pick one category (eating out, clothes, entertainment) and spend $0 for 30 days. Most teens save $50–$200 per challenge.</p><button class="btn btn-green btn-sm lc-btn" onclick="completeLesson('No-Spend Challenge')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🪣 Savings Buckets Strategy</h4><p>Open multiple savings accounts for different goals: emergencies, travel, tech, car. Label each one to reduce temptation.</p><button class="btn btn-green btn-sm lc-btn" onclick="completeLesson('Savings Buckets')">✅ Mark Complete</button></div>
    </div>
  </div>
  <div class="learn-content" id="learn-credit">
    <div class="card" style="margin-bottom:16px"><div class="card-title">💳 Understanding Credit</div><p style="color:var(--muted);line-height:1.7;margin-bottom:12px">Your credit score (300–850) tells lenders how trustworthy you are. A score of <strong style="color:var(--purple-l)">740+</strong> saves you thousands on loans. Payment history (35%) is the biggest factor — never miss a payment!</p><button class="btn btn-purple btn-sm" onclick="completeLesson('Credit Basics')">✅ Complete: Credit Basics</button></div>
    <div class="lesson-grid">
      <div class="lesson-card"><h4>📉 Credit Utilization Deep Dive</h4><p>Keep usage below 30% of your limit — ideally under 10%. High utilization is the #2 reason for score drops.</p><button class="btn btn-purple btn-sm lc-btn" onclick="completeLesson('Credit Utilization')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🚀 Building Credit at 18</h4><p>Get a secured card with a $200–$500 deposit. Use it for one recurring bill. Pay in full monthly. Score builds fast.</p><button class="btn btn-purple btn-sm lc-btn" onclick="completeLesson('Building Credit at 18')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>⚠️ Credit Card Traps</h4><p>Minimum payments keep you in debt for years. A $1,000 balance at 25% APR paying minimums takes 7+ years and costs $800+ in interest.</p><button class="btn btn-purple btn-sm lc-btn" onclick="completeLesson('Credit Card Traps')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🔒 Freezing Your Credit</h4><p>Free at all three bureaus (Equifax, Experian, TransUnion). Freeze your credit now to prevent identity theft — unfreeze when you need a loan.</p><button class="btn btn-purple btn-sm lc-btn" onclick="completeLesson('Freezing Your Credit')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>📝 Reading Your Credit Report</h4><p>Get free reports at annualcreditreport.com. Check for errors — 1 in 5 Americans has a credit report error affecting their score.</p><button class="btn btn-purple btn-sm lc-btn" onclick="completeLesson('Credit Reports')">✅ Mark Complete</button></div>
    </div>
  </div>
  <div class="learn-content" id="learn-investing">
    <div class="card" style="margin-bottom:16px"><div class="card-title">📈 Start Investing Early</div><p style="color:var(--muted);line-height:1.7;margin-bottom:12px"><strong style="color:var(--green)">Compound interest</strong> makes time your superpower. $1,000 invested at 15 becomes $45,000+ by retirement. Index funds (VTI, VOO) are the perfect starting point — diversified, low-cost, historically unbeatable.</p><button class="btn btn-blue btn-sm" onclick="completeLesson('Investing Basics')">✅ Complete: Investing Basics</button></div>
    <div class="lesson-grid">
      <div class="lesson-card"><h4>📊 Index Funds Explained</h4><p>An index fund owns tiny pieces of hundreds of companies. It tracks an index like the S&P 500. Simple, cheap, and crushes most pros.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Index Funds')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🏦 Roth IRA for Teens</h4><p>Tax-free growth forever. With earned income (job, babysitting), a parent can open a custodial Roth IRA. Contribute up to $7,000/year.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Roth IRA')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>📅 Dollar-Cost Averaging</h4><p>Invest the same amount every month regardless of market price. Removes emotion and reduces risk. Even $25/month builds wealth.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Dollar-Cost Averaging')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🥚 Diversification Strategy</h4><p>Don't put all eggs in one basket. Mix stocks, bonds, and international funds so one bad investment can't wipe you out.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Diversification')">✅ Mark Complete</button></div>
      <div class="lesson-card"><h4>🧠 Behavioral Investing</h4><p>The biggest investing mistakes are emotional: panic selling in crashes, FOMO buying at peaks. Stay the course — time in market beats timing.</p><button class="btn btn-blue btn-sm lc-btn" onclick="completeLesson('Behavioral Investing')">✅ Mark Complete</button></div>
    </div>
  </div>
</div>

<!-- TOOLS -->
<div class="page" id="page-tools">
  <div class="page-header"><div class="page-title">🛠️ Financial Tools</div><div class="page-sub">Interactive calculators and trackers. Results save automatically.</div></div>
  <div class="tool-tabs">
    <button class="tool-tab active" data-tab="budget" onclick="setToolTab('budget')">💰 Budget Planner</button>
    <button class="tool-tab" data-tab="savings" onclick="setToolTab('savings')">🎯 Savings Goal</button>
    <button class="tool-tab" data-tab="spending" onclick="setToolTab('spending')">📊 Spending Tracker</button>
  </div>
  <div class="tool-content active" id="tool-budget">
    <div class="grid2">
      <div class="card">
        <div class="card-title">📋 Monthly Budget Planner</div>
        <div class="form-group"><label>Monthly Income ($)</label><input type="number" id="bi" placeholder="e.g. 500" oninput="calcBudget()"></div>
        <div class="form-group"><label>Needs (rent, food, transport) ($)</label><input type="number" id="bn" placeholder="e.g. 250" oninput="calcBudget()"></div>
        <div class="form-group"><label>Wants (fun, clothes, dining) ($)</label><input type="number" id="bw" placeholder="e.g. 150" oninput="calcBudget()"></div>
        <div class="form-group"><label>Savings / Debt Repayment ($)</label><input type="number" id="bs" placeholder="e.g. 100" oninput="calcBudget()"></div>
      </div>
      <div>
        <div class="card" style="margin-bottom:14px">
          <div class="card-title">📊 Budget Summary</div>
          <div style="display:flex;flex-direction:column;gap:12px">
            <div><div style="display:flex;justify-content:space-between;margin-bottom:5px;font-size:0.85rem"><span style="font-weight:700">Needs</span><span id="np">0%</span></div><div class="pbar-wrap"><div class="pbar" id="nb" style="width:0%;background:var(--blue)"></div></div></div>
            <div><div style="display:flex;justify-content:space-between;margin-bottom:5px;font-size:0.85rem"><span style="font-weight:700">Wants</span><span id="wp">0%</span></div><div class="pbar-wrap"><div class="pbar" id="wb" style="width:0%;background:var(--purple)"></div></div></div>
            <div><div style="display:flex;justify-content:space-between;margin-bottom:5px;font-size:0.85rem"><span style="font-weight:700">Savings</span><span id="spp">0%</span></div><div class="pbar-wrap"><div class="pbar" id="sb" style="width:0%;background:var(--green)"></div></div></div>
          </div>
          <div id="blo" style="margin-top:16px;background:var(--card2);border-radius:var(--rs);padding:12px;text-align:center;border:1px solid var(--border)"><div style="font-size:0.78rem;color:var(--muted)">Leftover</div><div class="lo-val" style="font-size:1.6rem;font-weight:900;color:var(--green)">$0</div></div>
        </div>
        <div class="card" id="btip" style="display:none;background:linear-gradient(135deg,#1E293B,#1A2E28)"><div style="font-weight:800;margin-bottom:4px">💡 CashWise Tip</div><div id="btip-txt" style="font-size:0.85rem;color:var(--muted)"></div></div>
      </div>
    </div>
  </div>
  <div class="tool-content" id="tool-savings">
    <div class="grid2">
      <div class="card">
        <div class="card-title">🎯 Savings Goal Tracker</div>
        <div class="form-group"><label>Goal Name</label><input type="text" id="gn" placeholder="e.g. New iPhone, Gaming PC"></div>
        <div class="form-group"><label>Target Amount ($)</label><input type="number" id="gt" placeholder="e.g. 800" oninput="calcGoal()"></div>
        <div class="form-group"><label>Already Saved ($)</label><input type="number" id="gs" placeholder="e.g. 200" oninput="calcGoal()"></div>
        <div class="form-group"><label>Weekly Savings ($)</label><input type="number" id="gw" placeholder="e.g. 30" oninput="calcGoal()"></div>
        <button class="btn btn-green" onclick="addGoal()">+ Add Goal</button>
      </div>
      <div>
        <div class="card" style="margin-bottom:14px"><div class="card-title">Goal Preview</div><div id="goal-preview"><p style="color:var(--muted);text-align:center;padding:20px">Enter goal details above</p></div></div>
        <div class="card"><div class="card-title">My Goals</div><div id="goals-list"><p style="color:var(--muted);text-align:center;padding:20px;font-size:0.85rem">No goals yet — add one!</p></div></div>
      </div>
    </div>
  </div>
  <div class="tool-content" id="tool-spending">
    <div class="grid2">
      <div class="card">
        <div class="card-title">📊 Log Expense</div>
        <div class="form-group"><label>Description</label><input type="text" id="sd" placeholder="e.g. Lunch, Netflix"></div>
        <div class="form-group"><label>Amount ($)</label><input type="number" id="sa" placeholder="e.g. 12.50"></div>
        <div class="form-group"><label>Category</label><select id="sc"><option value="Food">🍔 Food</option><option value="Transport">🚌 Transport</option><option value="Entertainment">🎮 Entertainment</option><option value="Clothing">👕 Clothing</option><option value="Savings">💰 Savings</option><option value="Other">📦 Other</option></select></div>
        <button class="btn btn-blue" onclick="addSpend()">+ Log Expense</button>
      </div>
      <div class="card">
        <div class="card-title">Monthly Spending Chart</div>
        <div id="spend-chart" style="display:flex;align-items:flex-end;gap:8px;height:140px;padding:0 4px"><div style="display:flex;align-items:center;justify-content:center;width:100%;color:var(--muted);font-size:0.85rem">Add expenses to see chart</div></div>
        <div style="background:var(--card2);border-radius:var(--rs);padding:12px;text-align:center;margin-top:12px;border:1px solid var(--border)"><div style="font-size:0.78rem;color:var(--muted)">Total This Month</div><div id="spend-total-val" style="font-size:1.6rem;font-weight:900;color:var(--green)">$0.00</div></div>
      </div>
    </div>
    <div class="card" style="margin-top:16px">
      <div class="card-title">Recent Transactions</div>
      <table class="spending-table"><thead><tr><th>Description</th><th>Category</th><th>Amount</th><th>Action</th></tr></thead><tbody id="spend-tbody"><tr><td colspan="4" style="text-align:center;color:var(--muted);padding:20px">No transactions yet</td></tr></tbody></table>
    </div>
  </div>
</div>

<!-- CHALLENGES -->
<div class="page" id="page-challenges">
  <div class="page-header"><div class="page-title">🎯 Challenges & Quizzes</div><div class="page-sub">Earn points, unlock badges, and climb the leaderboard!</div></div>
  <div class="challenge-grid">
    <div class="challenge-card" onclick="startQuiz()"><div class="cc-icon">🧠</div><h3>Money Mastermind Quiz</h3><p>Test your financial knowledge. 10 questions, earn up to 150 pts!</p><div class="reward">⭐ Up to 150 pts</div></div>
    <div class="challenge-card" onclick="showToast('Budget Challenge started! Head to Tools.','📊')"><div class="cc-icon">📊</div><h3>Budget Builder</h3><p>Create a real monthly budget and stick to it for a week.</p><div class="reward">⭐ 100 pts</div></div>
    <div class="challenge-card" onclick="showToast('Savings Sprint started! Set a goal and track it daily.','💰')"><div class="cc-icon">💰</div><h3>30-Day Savings Sprint</h3><p>Save a set amount every day for 30 days. Track your progress!</p><div class="reward">⭐ 200 pts + Badge</div></div>
  </div>
  <div class="card" id="quiz-container" style="display:none;max-width:680px;margin-bottom:24px">
    <div class="card-title">🧠 Money Mastermind Quiz</div>
    <div id="quiz-progress" style="margin-bottom:12px"></div>
    <div id="quiz-q-num" style="font-size:0.82rem;color:var(--muted);margin-bottom:6px"></div>
    <div id="quiz-q" style="font-size:1.1rem;font-weight:800;margin-bottom:18px;line-height:1.4"></div>
    <div id="quiz-opts"></div>
    <div class="quiz-feedback" id="quiz-feedback"></div>
    <div style="display:flex;justify-content:space-between;margin-top:16px">
      <button class="btn btn-blue" id="quiz-next" onclick="nextQuestion()" style="display:none">Next Question →</button>
      <button class="btn" style="background:var(--card2);color:var(--muted)" onclick="document.getElementById('quiz-container').style.display='none'">✕ Exit</button>
    </div>
  </div>
  <div class="grid2">
    <div class="card">
      <div class="card-title">🏅 Badges</div>
      <div class="badges-grid" id="badges-grid"></div>
    </div>
    <div class="card">
      <div class="card-title">🏆 Leaderboard</div>
      <div style="background:linear-gradient(135deg,var(--blue),var(--blue-d));border-radius:var(--rs);padding:14px 18px;font-weight:800;margin-bottom:0">Top CashWise Students</div>
      <div class="leaderboard-item"><div class="rank gold">1</div><div style="flex:1;font-weight:700">Mia T.</div><div style="font-weight:800;color:var(--blue)">1,450 pts</div></div>
      <div class="leaderboard-item"><div class="rank silver">2</div><div style="flex:1;font-weight:700">Jordan K.</div><div style="font-weight:800;color:var(--blue)">1,120 pts</div></div>
      <div class="leaderboard-item"><div class="rank bronze">3</div><div style="flex:1;font-weight:700">Priya S.</div><div style="font-weight:800;color:var(--blue)">980 pts</div></div>
      <div class="leaderboard-item"><div class="rank">4</div><div style="flex:1;font-weight:700">Alex R.</div><div style="font-weight:800;color:var(--blue)">820 pts</div></div>
      <div class="leaderboard-item" style="background:rgba(26,111,232,0.1)"><div class="rank" style="background:var(--blue);color:white">5</div><div style="flex:1;font-weight:900">You 👈</div><div id="your-leaderboard-pts" style="font-weight:800;color:var(--blue)">250 pts</div></div>
    </div>
  </div>
</div>

<!-- RESOURCES -->
<div class="page" id="page-resources">
  <div class="page-header"><div class="page-title">📄 Resources</div><div class="page-sub">Free guides and worksheets to put your knowledge into action.</div></div>
  <div style="display:flex;gap:8px;flex-wrap:wrap;margin-bottom:20px">
    <button class="resource-cat active" data-cat="all" onclick="filterResources('all')">All</button>
    <button class="resource-cat" data-cat="budgeting" onclick="filterResources('budgeting')">Budgeting</button>
    <button class="resource-cat" data-cat="saving" onclick="filterResources('saving')">Saving</button>
    <button class="resource-cat" data-cat="credit" onclick="filterResources('credit')">Credit</button>
    <button class="resource-cat" data-cat="investing" onclick="filterResources('investing')">Investing</button>
  </div>
  <div class="grid3" id="resources-list"></div>
</div>

<!-- PROFILE -->
<div class="page" id="page-profile">
  <div class="page-header"><div class="page-title">👤 Profile</div><div class="page-sub">Track your progress and achievements.</div></div>
  <div style="background:linear-gradient(135deg,var(--blue),var(--purple));border-radius:var(--r);padding:32px;text-align:center;margin-bottom:20px">
    <div style="width:80px;height:80px;border-radius:50%;background:rgba(255,255,255,0.2);border:3px solid rgba(255,255,255,0.4);display:flex;align-items:center;justify-content:center;font-size:2.5rem;margin:0 auto 12px">🧑</div>
    <div style="font-size:1.5rem;font-weight:900">Money Master</div>
    <div style="opacity:0.8;margin:4px 0 14px">Level 3 — Future CFO 🚀</div>
    <div style="max-width:220px;margin:0 auto"><div class="pbar-wrap" style="background:rgba(255,255,255,0.2)"><div class="pbar" style="width:42%;background:var(--green-l)"></div></div><div style="font-size:0.75rem;opacity:0.6;margin-top:4px">250 / 600 XP to Level 4</div></div>
  </div>
  <div style="display:grid;grid-template-columns:repeat(4,1fr);gap:14px;margin-bottom:20px">
    <div class="mini-stat"><div class="ms-lbl">Total Points</div><div class="ms-val pts-display" id="profile-points" style="color:var(--blue)">250</div></div>
    <div class="mini-stat"><div class="ms-lbl">Lessons Done</div><div class="ms-val" id="profile-lessons" style="color:var(--green)">0</div></div>
    <div class="mini-stat"><div class="ms-lbl">Badges</div><div class="ms-val" id="profile-badges-count" style="color:var(--purple-l)">2</div></div>
    <div class="mini-stat"><div class="ms-lbl">Day Streak</div><div class="ms-val" style="color:var(--green-l)">🔥 3</div></div>
  </div>
  <div class="grid2">
    <div class="card"><div class="card-title">🏅 Earned Badges</div><div id="profile-badges" style="display:grid;grid-template-columns:repeat(5,1fr);gap:10px"></div></div>
    <div class="card"><div class="card-title">📚 Module Progress</div><div id="profile-progress"></div></div>
  </div>
</div>

</main>

<div class="toast" id="toast"><span id="toast-icon">🎉</span><span id="toast-msg">Achievement unlocked!</span></div>
<script src="cashwise.js"></script>
<script>
// Update home stats on load
document.getElementById('home-lessons').textContent = state.lessonsCompleted.length;
document.getElementById('home-badges').textContent = state.badgesEarned.length;
// Patch completeLesson to also update home stats
const _cl = completeLesson;
window.completeLesson = function(n) { _cl(n); document.getElementById('home-lessons').textContent = state.lessonsCompleted.length; };
</script>
</body></html>
'@
[System.IO.File]::WriteAllText((Join-Path (Get-Location) $f), $h, [System.Text.Encoding]::UTF8)
Write-Host "Done! File written."
'@
[System.IO.File]::WriteAllText('build.ps1', $build, [System.Text.Encoding]::UTF8)
Write-Host "Build script ready"
