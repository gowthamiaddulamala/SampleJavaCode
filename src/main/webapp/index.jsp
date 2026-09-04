<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · modern e‑commerce</title>

  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..600;14..32,700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Av2I3nVD3YV5iT7/L1SfDlG5tX9r3UuZz6zDnkSvjdjKx6bFqK8E5P4L/7nFzT/4jMk5QvLr6sVhD8P9kU5ag==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    /* ----- reset & variables ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --bg: #ffffff;
      --primary: #0a2540;
      --accent: #00d4ff;
      --muted: #6b7a8f;
      --surface: #f0f5fa;
      --card-shadow: 0 8px 24px rgba(10, 37, 64, 0.06);
      --radius: 14px;
      --container: 1200px;
      --font: 'Inter', system-ui, -apple-system, sans-serif;
    }

    body {
      font-family: var(--font);
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- header ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(10,37,64,0.05);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.4rem;
      letter-spacing: -0.3px;
    }
    .brand .accent { color: var(--accent); }

    .main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }
    .main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: background 0.2s;
    }
    .main-nav li a:hover {
      background: var(--surface);
      color: var(--accent);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 40px;
      padding: 6px 12px 6px 18px;
      gap: 8px;
      min-width: 200px;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.9rem;
      padding: 6px 0;
    }
    .search-wrap button {
      background: transparent;
      border: none;
      color: var(--muted);
      cursor: pointer;
      font-size: 1rem;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      cursor: pointer;
      transition: color 0.2s;
    }
    .icon-btn:hover { color: var(--accent); }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 4px;
    }
    .cart-count {
      position: absolute;
      top: -8px;
      right: -10px;
      background: var(--accent);
      color: #0a2540;
      font-weight: 700;
      font-size: 0.7rem;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.4rem;
      cursor: pointer;
    }

    /* mobile menu */
    #mobileMenu {
      background: var(--bg);
      border-top: 1px solid rgba(10,37,64,0.05);
      padding: 16px 0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    #mobileMenu ul a {
      display: block;
      padding: 10px 16px;
      border-radius: 12px;
      font-weight: 500;
    }
    #mobileMenu ul a:hover { background: var(--surface); }

    /* ----- hero ----- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background: linear-gradient(135deg, rgba(10,37,64,0.7), rgba(10,37,64,0.5)),
                  url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      color: white;
      padding: 80px 24px;
      border-radius: 0 0 var(--radius) var(--radius);
      margin-bottom: 8px;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.8rem;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }
    .hero p {
      max-width: 640px;
      margin: 0 auto 28px;
      opacity: 0.9;
      font-size: 1.1rem;
    }
    .btn-group { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: var(--accent);
      color: #042233;
    }
    .btn-primary:hover { background: #00c2e8; transform: scale(1.02); }
    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.08); }

    /* ----- sections ----- */
    .section { padding: 56px 0; }
    .section-title {
      text-align: center;
      margin-bottom: 8px;
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-sub {
      text-align: center;
      color: var(--muted);
      margin-bottom: 32px;
    }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg);
      border-radius: var(--radius);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--card-shadow);
      transition: 0.2s;
      cursor: pointer;
      border: 1px solid rgba(10,37,64,0.04);
    }
    .cat-card:hover { transform: translateY(-6px); box-shadow: 0 16px 32px rgba(10,37,64,0.08); }
    .cat-card .icon { font-size: 2rem; color: var(--accent); margin-bottom: 6px; }
    .cat-card h4 { font-size: 1rem; margin-top: 4px; }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--bg);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--card-shadow);
      transition: 0.2s;
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(10,37,64,0.04);
    }
    .product-card:hover { transform: translateY(-4px); box-shadow: 0 16px 32px rgba(10,37,64,0.08); }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f0f4f8;
    }
    .product-body { padding: 14px 16px 8px; flex: 1; }
    .product-body h5 { font-size: 1rem; margin-bottom: 2px; }
    .product-meta { color: var(--muted); font-size: 0.8rem; text-transform: capitalize; }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 8px;
    }
    .price-current { font-weight: 700; font-size: 1.1rem; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 0.85rem; margin-left: 8px; }
    .rating { color: #f5b342; font-size: 0.9rem; }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
    }
    .add-btn:hover { background: #0d2f4e; }
    .wish-btn {
      background: transparent;
      border: 1px solid rgba(10,37,64,0.08);
      padding: 8px 14px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
    }
    .wish-btn:hover { background: var(--surface); }

    /* deal */
    .deal-card {
      display: flex;
      gap: 24px;
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      align-items: stretch;
    }
    .deal-card img {
      width: 45%;
      object-fit: cover;
      min-height: 260px;
    }
    .deal-content { padding: 32px 28px; flex: 1; }
    .deal-content h3 { font-size: 1.8rem; margin-bottom: 6px; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 20px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: 10px;
      min-width: 68px;
      text-align: center;
    }
    .time-box .num { font-size: 1.6rem; font-weight: 700; line-height: 1.2; }
    .time-box .label { font-size: 0.7rem; opacity: 0.7; }
    .deal-price { font-size: 1.8rem; font-weight: 700; }
    .deal-discount {
      background: #ff4757;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
    }
    .testimonial-card {
      min-width: 300px;
      background: var(--bg);
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--card-shadow);
      border: 1px solid rgba(10,37,64,0.04);
    }
    .testimonial-card .rating { margin-bottom: 6px; }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 44px 28px;
      text-align: center;
    }
    .newsletter-box h3 { font-size: 1.8rem; margin-bottom: 6px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
      margin-top: 16px;
    }
    .newsletter-form input {
      padding: 12px 20px;
      border-radius: 40px;
      border: none;
      min-width: 240px;
      font-size: 0.95rem;
    }
    .newsletter-form .btn-primary { background: var(--accent); color: #042233; }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(10,37,64,0.05);
      color: var(--muted);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 28px;
    }
    .footer-brand { max-width: 300px; }
    .footer-links { display: flex; gap: 48px; flex-wrap: wrap; }
    .footer-links div { font-weight: 600; }
    .footer-links .muted { font-weight: 400; line-height: 2; }

    /* responsive */
    @media (max-width: 1024px) {
      .cat-grid { grid-template-columns: repeat(3, 1fr); }
      .product-grid { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 820px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 140px; }
      .product-grid { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; height: 200px; }
      .hero h1 { font-size: 2.2rem; }
    }
    @media (max-width: 500px) {
      .cat-grid { grid-template-columns: repeat(2, 1fr); }
      .product-grid { grid-template-columns: 1fr; }
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
      .hero { padding: 48px 16px; }
      .hero h1 { font-size: 1.8rem; }
      .timer { flex-wrap: wrap; }
    }

    /* utilities */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .mt-2 { margin-top: 12px; }
    .gap-1 { gap: 8px; }
  </style>
</head>
<body>

<!-- ========== HEADER ========== -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><span>Nexus<span class="accent">Shop</span></span></a>
    </div>

    <nav class="main-nav" aria-label="primary">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size:0.6rem;"></i></a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search products…" aria-label="search">
        <button id="searchBtn" aria-label="submit search"><i class="fas fa-search"></i></button>
      </div>

      <div class="header-actions">
        <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        <a class="cart" href="#" id="cartBtn" aria-label="cart">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">About</a></li>
      </ul>
    </div>
  </div>
</header>

<!-- ========== MAIN ========== -->
<main>

  <!-- Hero -->
  <section class="hero">
    <div class="container">
      <h1>New Winter Collection · Premium Picks</h1>
      <p>Discover the latest in fashion, tech, and accessories — curated for you. Limited deals &amp; free shipping on selected items.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- Categories -->
  <section class="section container" aria-labelledby="catTitle">
    <h2 class="section-title" id="catTitle">Shop by Category</h2>
    <p class="section-sub">Browse our curated collection</p>
    <div class="cat-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section class="section container" aria-labelledby="prodTitle">
    <h2 class="section-title" id="prodTitle">Trending Products</h2>
    <p class="section-sub">Popular picks based on recent activity</p>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- Deal / Flash Sale -->
  <section id="deals" class="section container" aria-labelledby="dealTitle">
    <h2 class="section-title" id="dealTitle">⚡ Flash Sale</h2>
    <p class="section-sub">Limited-time offers — don't miss out</p>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and powerful — now with M2 performance.</p>
        <div class="timer" aria-hidden="true">
          <div class="time-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
          <div class="time-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
          <div class="time-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
          <div class="time-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
        </div>
        <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
          <span class="deal-price">$999 <span class="price-old" style="font-size:1.2rem;">$1,199</span></span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="margin:12px 0 0;"><strong>12</strong> items left at this price!</p>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:16px;">Buy Now</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container" aria-labelledby="testTitle">
    <h2 class="section-title" id="testTitle">What our customers say</h2>
    <p class="section-sub">Real reviews from verified buyers</p>
    <div class="testimonial-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="rating">★★★★★</div>
        <p>"Fast shipping and excellent support. The product exceeded expectations!"</p>
        <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" style="width:40px;height:40px;border-radius:50%;object-fit:cover;">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating">★★★★☆</div>
        <p>"Great selection, smooth checkout. Will definitely shop again."</p>
        <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" style="width:40px;height:40px;border-radius:50%;object-fit:cover;">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container" aria-labelledby="newsTitle">
    <div class="newsletter-box">
      <h3 id="newsTitle">Stay in the loop</h3>
      <p>Subscribe for exclusive offers &amp; new arrivals</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="email" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<!-- ========== FOOTER ========== -->
<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <div style="font-weight:700;font-size:1.2rem;">NexusShop</div>
      <p class="muted" style="margin-top:6px;">Modern e‑commerce demo built with HTML, CSS &amp; JavaScript.</p>
      <div style="display:flex;gap:12px;margin-top:12px;">
        <a href="#" aria-label="facebook"><i class="fab fa-facebook"></i></a>
        <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
        <a href="#" aria-label="instagram"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div>Company<br><span class="muted">About<br>Careers<br>Press</span></div>
      <div>Support<br><span class="muted">Help Center<br>Shipping &amp; Returns<br>Contact</span></div>
    </div>
  </div>
  <div style="text-align:center;margin-top:28px;font-size:0.85rem;color:var(--muted);">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<!-- ========== SCRIPTS ========== -->
<script>
  (function() {
    // ---- data ----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
      { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
      { id:6, title:'Chanel No. 5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
    ];

    // ---- state ----
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');

    // ---- helpers ----
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, m => ({ '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;' }[m]));
    }

    function updateCart() {
      cartCountEl.textContent = cartCount;
    }

    // ---- render ----
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const card = document.createElement('div');
        card.className = 'cat-card';
        card.innerHTML = `
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="muted" style="font-size:0.8rem;">Explore</div>
        `;
        card.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('prodTitle').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(card);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('article');
        card.className = 'product-card';
        const badgeHtml = p.badge ? `<span style="position:absolute;margin:12px;background:${p.badge.startsWith('-')?'#ff4757':'var(--success)'};color:white;padding:4px 12px;border-radius:40px;font-weight:700;font-size:0.75rem;">${p.badge}</span>` : '';
        card.innerHTML = `
          <div style="position:relative;">${badgeHtml}<img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy"></div>
          <div class="product-body">
            <h5>${escapeHtml(p.title)}</h5>
            <div class="product-meta">${p.category}</div>
            <div class="price-row">
              <span><span class="price-current">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}</span>
              <span class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:0.7rem;color:var(--muted);">(${p.reviews})</span></span>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });

      // attach add-to-cart
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id, btn);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    function addToCart(id, btn) {
      const product = PRODUCTS.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      updateCart();
      if (btn) {
        const original = btn.innerHTML;
        btn.innerHTML = 'Added ✓';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = original; btn.disabled = false; }, 1200);
      }
    }

    // ---- search ----
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---- mobile toggle ----
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'none' ? 'block' : 'none';
    });

    // ---- deal timer ----
    (function setupTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) { clearInterval(timer); return; }
        document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff
