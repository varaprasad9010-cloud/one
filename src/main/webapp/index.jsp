<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #fafcff;
      --surface: #ffffff;
      --primary: #0b1e33;
      --accent: #2b7aff;
      --accent-soft: #e6f0ff;
      --muted: #6b7a8f;
      --radius: 18px;
      --shadow: 0 12px 30px rgba(0, 20, 50, 0.06);
      --transition: 0.2s ease;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* header */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.82);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 16px;
      flex-wrap: wrap;
    }
    .brand {
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand span { color: var(--accent); }
    .nav-links {
      display: flex;
      align-items: center;
      gap: 6px;
      list-style: none;
    }
    .nav-links li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links li a:hover,
    .nav-links li a.active {
      background: var(--accent-soft);
      color: var(--accent);
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 4px 6px 4px 18px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.02);
      border: 1px solid #eef2f8;
      min-width: 200px;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(43, 122, 255, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      outline: none;
      width: 100%;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 40px;
      cursor: pointer;
      font-size: 0.95rem;
      transition: var(--transition);
    }
    .search-wrap button:hover { background: #1a5fd0; }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      padding: 8px 10px;
      border-radius: 40px;
      color: var(--primary);
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn:hover { background: var(--accent-soft); }
    .cart-badge {
      position: relative;
      display: inline-flex;
      align-items: center;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -6px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.4rem;
      padding: 6px 8px;
      cursor: pointer;
      color: var(--primary);
    }
    /* hero */
    .hero {
      background: linear-gradient(145deg, #0b1e33, #1a3550);
      border-radius: 0 0 40px 40px;
      padding: 64px 0 56px;
      color: white;
      margin-bottom: 8px;
    }
    .hero-grid {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      gap: 20px;
    }
    .hero h1 {
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      max-width: 700px;
    }
    .hero p {
      opacity: 0.8;
      max-width: 540px;
      font-size: 1.1rem;
    }
    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
      justify-content: center;
    }
    .btn {
      padding: 12px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      font-size: 0.95rem;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 6px 16px rgba(43, 122, 255, 0.3);
    }
    .btn-primary:hover { background: #1a5fd0; transform: scale(1.02); }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      color: white;
      border: 1px solid rgba(255,255,255,0.15);
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.15); }
    /* sections */
    .section {
      padding: 48px 0 32px;
    }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      flex-wrap: wrap;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.3px;
    }
    .section-header .muted {
      color: var(--muted);
      font-size: 0.95rem;
    }
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: var(--surface);
      border-radius: var(--radius);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      border-color: var(--accent);
      box-shadow: 0 18px 30px rgba(43, 122, 255, 0.08);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 8px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid #f0f4fc;
    }
    .product-card:hover { transform: translateY(-4px); box-shadow: 0 20px 35px rgba(0,0,0,0.04); }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      background: #f2f6fe;
    }
    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-meta {
      color: var(--muted);
      font-size: 0.8rem;
      text-transform: capitalize;
      margin-bottom: 8px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .price-current { font-weight: 700; font-size: 1.15rem; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 0.9rem; }
    .rating {
      color: #f5b342;
      font-size: 0.8rem;
      letter-spacing: 1px;
    }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .btn-add {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .btn-add:hover { background: var(--accent); }
    .btn-wish {
      background: transparent;
      border: 1px solid #e2e8f0;
      border-radius: 40px;
      width: 44px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }
    .btn-wish:hover { background: #fee9e9; border-color: #f5a3a3; color: #c0392b; }
    /* deal */
    .deal-card {
      display: flex;
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      margin: 16px 0;
      flex-wrap: wrap;
    }
    .deal-card img {
      width: 45%;
      min-height: 260px;
      object-fit: cover;
      background: #dce5f5;
    }
    .deal-content {
      padding: 32px 28px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 { font-size: 1.8rem; font-weight: 700; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 12px;
      border-radius: 12px;
      min-width: 60px;
      text-align: center;
    }
    .time-box div:first-child { font-weight: 700; font-size: 1.2rem; }
    .time-box div:last-child { font-size: 0.7rem; opacity: 0.7; }
    .deal-badge {
      background: #e74c3c;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.8rem;
      display: inline-block;
    }
    /* testimonials */
    .testimonial-grid {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 0 20px;
      scrollbar-width: thin;
    }
    .testimonial-card {
      min-width: 280px;
      background: var(--surface);
      border-radius: var(--radius);
      padding: 20px 22px;
      box-shadow: var(--shadow);
      flex-shrink: 0;
    }
    .testimonial-card .rating { margin-bottom: 8px; }
    .testimonial-card p { font-size: 0.95rem; margin: 8px 0 12px; }
    .user {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .user img {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      object-fit: cover;
      background: #cbd5e1;
    }
    .user strong { display: block; font-weight: 600; }
    .user span { font-size: 0.8rem; color: var(--muted); }
    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 40px 28px;
      text-align: center;
    }
    .newsletter-box h3 { font-size: 1.6rem; font-weight: 600; }
    .newsletter-box p { opacity: 0.7; margin: 6px 0 20px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 8px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      min-width: 240px;
      font-size: 0.95rem;
      background: rgba(255,255,255,0.08);
      color: white;
      outline: none;
      border: 1px solid rgba(255,255,255,0.1);
    }
    .newsletter-form input::placeholder { color: rgba(255,255,255,0.6); }
    .newsletter-form input:focus { background: rgba(255,255,255,0.15); }
    .newsletter-form .btn { background: var(--accent); color: white; }
    .newsletter-form .btn:hover { background: #1a5fd0; }
    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid #eef2f8;
      margin-top: 20px;
    }
    .footer-grid {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
    }
    .footer-col p { color: var(--muted); max-width: 280px; }
    .socials { display: flex; gap: 12px; margin-top: 14px; }
    .socials a {
      background: #f0f4fc;
      padding: 8px 12px;
      border-radius: 40px;
      font-size: 1rem;
      transition: var(--transition);
    }
    .socials a:hover { background: var(--accent-soft); color: var(--accent); }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { min-width: 100px; }
    .footer-links h5 { font-weight: 600; margin-bottom: 8px; }
    .footer-links a { display: block; color: var(--muted); margin: 4px 0; transition: var(--transition); }
    .footer-links a:hover { color: var(--primary); }
    .copy { text-align: center; color: var(--muted); font-size: 0.8rem; margin-top: 32px; border-top: 1px solid #ecf0f5; padding-top: 20px; }
    /* responsive */
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 140px; }
      .hero h1 { font-size: 2.2rem; }
      .deal-card img { width: 100%; height: 200px; }
    }
    @media (max-width: 480px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
      .hero h1 { font-size: 1.8rem; }
      .grid-products { grid-template-columns: 1fr 1fr; }
    }
    .hidden { display: none; }
    .mt-2 { margin-top: 12px; }
    .text-muted { color: var(--muted); }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-store" style="color:var(--accent);"></i> Nexus<span>Shop</span></a>
      </div>
      <ul class="nav-links" id="navLinks">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
      <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn"><i class="far fa-heart"></i></button>
          <button class="icon-btn cart-badge" id="cartBtn">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
          </button>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #edf2f7; padding:12px 24px;">
      <ul style="list-style:none; display:flex; flex-direction:column; gap:6px;">
        <li><a href="#" style="padding:8px 0;">Home</a></li>
        <li><a href="#categories" style="padding:8px 0;">Categories</a></li>
        <li><a href="#products" style="padding:8px 0;">Trending</a></li>
        <li><a href="#deals" style="padding:8px 0;">Deals</a></li>
      </ul>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero">
      <div class="container hero-grid">
        <h1>Discover premium picks for every style</h1>
        <p>Curated essentials in tech, fashion & lifestyle — backed by real reviews.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" id="categories">
      <div class="section-header">
        <h2>Shop by category</h2>
        <span class="muted">Browse curated collections</span>
      </div>
      <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" id="products">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="muted">Popular picks this week</span>
      </div>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section class="section container" id="deals">
      <div class="section-header">
        <h2>Flash sale</h2>
        <span class="muted">Limited time only</span>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="text-muted">Light. Fast. Iconic.</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>
          <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
            <span style="font-weight:700;font-size:1.6rem;">$999</span>
            <span style="text-decoration:line-through;color:var(--muted);">$1,199</span>
            <span class="deal-badge">-17%</span>
          </div>
          <p style="margin:12px 0 6px;"><strong>12</strong> items left</p>
          <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section container">
      <div class="section-header">
        <h2>What customers say</h2>
        <span class="muted">Real reviews</span>
      </div>
      <div class="testimonial-grid" id="testimonialsGrid"></div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
      <div class="newsletter-box">
        <h3>Stay in the loop</h3>
        <p>Get exclusive deals and new arrivals.</p>
        <form class="newsletter-form" id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px;font-size:0.9rem;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-col">
          <h4 style="font-weight:700;font-size:1.3rem;"><i class="fas fa-store" style="color:var(--accent);"></i> NexusShop</h4>
          <p>Modern e‑commerce demo — crafted with ❤️</p>
          <div class="socials">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div class="footer-links">
          <div><h5>Company</h5><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
          <div><h5>Support</h5><a href="#">Help</a><a href="#">Shipping</a><a href="#">Returns</a></div>
        </div>
      </div>
      <div class="copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ---- DATA ----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'Smartphones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'Laptops' },
      { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'Footwear' },
      { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'Gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'Gadgets' }
    ];

    const TESTIMONIALS = [
      { name:'Ava Martin', review:'Fast shipping and excellent support. Exceeded my expectations!', rating:5, img:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80' },
      { name:'Michael Lee', review:'Great selection and smooth checkout. Will shop again.', rating:4, img:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80' },
      { name:'Sophie Chen', review:'Love the quality and design. My new favorite store.', rating:5, img:'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=100&q=80' }
    ];

    // ---- STATE ----
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const searchInput = document.getElementById('searchInput');

    // ---- RENDER ----
    function renderCategories() {
      categoriesGrid.innerHTML = CATEGORIES.map(c => `
        <div class="cat-card" data-cat="${c.id}">
          <div class="icon"><i class="fas ${c.icon}"></i></div>
          <h4>${c.name}</h4>
          <div style="font-size:0.75rem;color:var(--muted);">Explore</div>
        </div>
      `).join('');
      categoriesGrid.querySelectorAll('.cat-card').forEach(el => {
        el.addEventListener('click', () => {
          const name = el.querySelector('h4').textContent;
          searchInput.value = name;
          filterProducts(name);
          document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
        });
      });
    }

    function renderProducts(list) {
      if (!list.length) { productsGrid.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding:40px; color:var(--muted);">No products found</div>`; return; }
      productsGrid.innerHTML = list.map(p => `
        <div class="product-card">
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="product-meta">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              <span class="rating">${'★'.repeat(Math.round(p.rating))}</span>
            </div>
          </div>
          <div class="product-footer">
            <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="btn-wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        </div>
      `).join('');
      productsGrid.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          const product = PRODUCTS.find(x => x.id === id);
          if (!product) return;
          cartCount++;
          cartCountEl.textContent = cartCount;
          btn.innerHTML = '✓ Added';
          setTimeout(() => btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add', 900);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query).trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // ---- TESTIMONIALS ----
    function renderTestimonials() {
      const grid = document.getElementById('testimonialsGrid');
      grid.innerHTML = TESTIMONIALS.map(t => `
        <div class="testimonial-card">
          <div class="rating">${'★'.repeat(t.rating)}</div>
          <p>"${t.review}"</p>
          <div class="user">
            <img src="${t.img}" alt="${t.name}">
            <div><strong>${t.name}</strong><span>Verified buyer</span></div>
          </div>
        </div>
      `).join('');
    }

    // ---- DEAL TIMER ----
    (function setupDealTimer() {
      const target = new Date(Date.now() + (24*60 + 36)*60*1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) return;
        const days = Math.floor(diff / (24*3600*1000));
        const hours = Math.floor((diff % (24*3600*1000)) / (3600*1000));
        const mins = Math.floor((diff % (3600*1000)) / (60*1000));
        const secs = Math.floor((diff % (60*1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ---- EVENTS ----
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value
