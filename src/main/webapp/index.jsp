<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LakeFlip Mart - Premium Tech & Lakehouse Shopping</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Montserrat:wght@800;900&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f5f7fa;
            color: #333;
            overflow-x: hidden;
        }

        /* Lakehouse Background */
        .lakehouse-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.3)), 
                        url('https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            z-index: -2;
            opacity: 0.15;
        }

        /* Header - Flipkart Inspired */
        header {
            background: linear-gradient(135deg, #2874f0 0%, #1a5dc1 100%);
            color: white;
            padding: 0.8rem 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .container {
            width: 90%;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Montserrat', sans-serif;
            font-size: 1.8rem;
            font-weight: 900;
            color: white;
            text-decoration: none;
        }

        .logo span {
            color: #ffe11b;
        }

        .logo i {
            color: #ffe11b;
            font-size: 2rem;
        }

        .search-bar {
            flex: 1;
            max-width: 500px;
            margin: 0 2rem;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 0.8rem 1.5rem;
            border-radius: 4px;
            border: none;
            font-size: 1rem;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .search-bar button {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            background: #ffe11b;
            color: #2874f0;
            border: none;
            padding: 0 1.5rem;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
            font-weight: 600;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .header-action {
            display: flex;
            flex-direction: column;
            align-items: center;
            color: white;
            text-decoration: none;
            font-size: 0.9rem;
        }

        .header-action i {
            font-size: 1.5rem;
            margin-bottom: 0.2rem;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -5px;
            background: #ff6161;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            font-size: 0.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Navigation */
        .nav-container {
            background: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            margin-bottom: 2rem;
        }

        .nav-menu {
            display: flex;
            list-style: none;
            padding: 1rem 0;
            overflow-x: auto;
            white-space: nowrap;
        }

        .nav-item {
            margin-right: 2rem;
            position: relative;
        }

        .nav-link {
            color: #555;
            text-decoration: none;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            transition: all 0.3s;
        }

        .nav-link:hover {
            background: #f0f8ff;
            color: #2874f0;
        }

        .nav-link.active {
            background: #2874f0;
            color: white;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.7)), 
                        url('https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            border-radius: 15px;
            padding: 4rem 3rem;
            margin: 2rem 0;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
        }

        .hero:before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 30%;
            background: linear-gradient(transparent, rgba(64, 164, 223, 0.2));
            z-index: 0;
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 3.2rem;
            margin-bottom: 1rem;
            color: #1a5dc1;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .hero h1 span {
            color: #ffe11b;
            background: linear-gradient(45deg, #2874f0, #1a5dc1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto 2rem;
            color: #444;
            line-height: 1.6;
        }

        .hero-buttons {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .btn {
            padding: 1rem 2.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            transition: all 0.3s;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background: #2874f0;
            color: white;
        }

        .btn-primary:hover {
            background: #1a5dc1;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(40, 116, 240, 0.3);
        }

        /* Lakehouse Info Section */
        .lakehouse-info {
            background: linear-gradient(rgba(255, 255, 255, 0.95), rgba(255, 255, 255, 0.95)), 
                        url('https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            border-radius: 15px;
            padding: 3rem;
            margin: 3rem 0;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .lakehouse-info h2 {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.5rem;
            color: #1a5dc1;
            margin-bottom: 1.5rem;
            text-align: center;
        }

        .lakehouse-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .info-card {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            text-align: center;
            border-top: 5px solid #2874f0;
        }

        .info-card i {
            font-size: 2.5rem;
            color: #2874f0;
            margin-bottom: 1rem;
        }

        .info-card h3 {
            color: #1a5dc1;
            margin-bottom: 1rem;
        }

        /* Section Titles */
        .section-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.2rem;
            margin: 3rem 0 2rem;
            color: #1a5dc1;
            position: relative;
            padding-bottom: 0.8rem;
            text-align: center;
        }

        .section-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 5px;
            background: linear-gradient(to right, #2874f0, #ffe11b);
            border-radius: 3px;
        }

        /* Products Grid - 15 items each */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
            margin-bottom: 4rem;
        }

        .product-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            transition: all 0.3s;
            border: 1px solid rgba(64, 164, 223, 0.1);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.12);
        }

        .product-img {
            height: 200px;
            background-size: cover;
            background-position: center;
            background-color: #f5f7fa;
            position: relative;
        }

        .product-badge {
            position: absolute;
            top: 15px;
            left: 15px;
            background: #ff6161;
            color: white;
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
        }

        .product-content {
            padding: 1.5rem;
        }

        .product-category {
            display: inline-block;
            background: #e8f4ff;
            color: #2874f0;
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .product-title {
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
            color: #1a5dc1;
            height: 3rem;
            overflow: hidden;
        }

        .product-rating {
            color: #ffb400;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
        }

        .product-price {
            font-size: 1.3rem;
            font-weight: 700;
            color: #2874f0;
            margin-bottom: 1rem;
        }

        .product-price .old-price {
            font-size: 0.9rem;
            color: #999;
            text-decoration: line-through;
            margin-left: 0.5rem;
        }

        .product-features {
            list-style: none;
            margin-bottom: 1.5rem;
            font-size: 0.85rem;
            color: #666;
            height: 4.5rem;
            overflow: hidden;
        }

        .product-features li {
            padding: 0.2rem 0;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .product-features li i {
            color: #2874f0;
            font-size: 0.8rem;
        }

        .product-actions {
            display: flex;
            gap: 1rem;
        }

        .product-button {
            flex: 1;
            text-align: center;
            padding: 0.7rem;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            cursor: pointer;
            border: none;
            font-size: 0.9rem;
        }

        .product-button.buy {
            background: #ffe11b;
            color: #1a5dc1;
        }

        .product-button.cart {
            background: #2874f0;
            color: white;
        }

        .product-button:hover {
            opacity: 0.9;
            transform: scale(1.05);
        }

        /* Category Filter */
        .category-filter {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin: 2rem 0;
            flex-wrap: wrap;
        }

        .filter-btn {
            padding: 0.8rem 1.5rem;
            background: white;
            border: 2px solid #2874f0;
            color: #2874f0;
            border-radius: 25px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }

        .filter-btn.active {
            background: #2874f0;
            color: white;
        }

        .filter-btn:hover {
            background: #f0f8ff;
        }

        /* Category Sections */
        .category-section {
            display: none;
            animation: fadeIn 0.5s ease;
        }

        .category-section.active {
            display: block;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Footer */
        footer {
            background: linear-gradient(135deg, #1a237e 0%, #2874f0 100%);
            color: white;
            padding: 4rem 0 2rem;
            margin-top: 4rem;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .footer-column h3 {
            font-size: 1.3rem;
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 0.7rem;
            color: #ffe11b;
        }

        .footer-column h3:after {
            content: '';
            position: absolute;
            width: 50px;
            height: 3px;
            background: #40a4df;
            bottom: 0;
            left: 0;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.8rem;
        }

        .footer-links a {
            color: #c5cae9;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: white;
        }

        .copyright {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #c5cae9;
            font-size: 0.9rem;
        }

        /* Pagination */
        .pagination {
            display: flex;
            justify-content: center;
            gap: 0.5rem;
            margin: 3rem 0;
        }

        .page-btn {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .page-btn.active {
            background: #2874f0;
            color: white;
            border-color: #2874f0;
        }

        .page-btn:hover:not(.active) {
            background: #f0f8ff;
            border-color: #2874f0;
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            }
        }

        @media (max-width: 992px) {
            .header-content {
                flex-wrap: wrap;
            }
            
            .search-bar {
                order: 3;
                margin: 1rem 0 0;
                max-width: 100%;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .nav-menu {
                flex-wrap: wrap;
                justify-content: center;
            }
        }

        @media (max-width: 768px) {
            .hero {
                padding: 2rem 1rem;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .hero-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .section-title {
                font-size: 1.8rem;
            }
            
            .product-actions {
                flex-direction: column;
            }
            
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            }
        }

        @media (max-width: 576px) {
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
            }
            
            .product-title {
                font-size: 1rem;
                height: 2.5rem;
            }
            
            .product-features {
                height: 3.5rem;
                font-size: 0.8rem;
            }
        }
    </style>
</head>
<body>
    <!-- Lakehouse Background -->
    <div class="lakehouse-bg"></div>

    <!-- Header - Flipkart Inspired -->
    <header>
        <div class="container header-content">
            <a href="#" class="logo">
                <i class="fas fa-water"></i>
                Lake<span>Flip</span> Mart
            </a>
            
            <div class="search-bar">
                <input type="text" placeholder="Search laptops, phones, watches...">
                <button><i class="fas fa-search"></i> Search</button>
            </div>
            
            <div class="header-actions">
                <a href="#" class="header-action">
                    <i class="fas fa-user"></i>
                    <span>Login</span>
                </a>
                <a href="#" class="header-action cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span>Cart</span>
                    <span class="cart-count">8</span>
                </a>
                <a href="#" class="header-action">
                    <i class="fas fa-gift"></i>
                    <span>Deals</span>
                </a>
            </div>
        </div>
    </header>

    <!-- Navigation -->
    <div class="nav-container">
        <div class="container">
            <ul class="nav-menu">
                <li class="nav-item"><a href="#" class="nav-link active"><i class="fas fa-home"></i> Home</a></li>
                <li class="nav-item"><a href="#laptops" class="nav-link"><i class="fas fa-laptop"></i> Laptops</a></li>
                <li class="nav-item"><a href="#phones" class="nav-link"><i class="fas fa-mobile-alt"></i> Phones</a></li>
                <li class="nav-item"><a href="#watches" class="nav-link"><i class="fas fa-clock"></i> Watches</a></li>
                <li class="nav-item"><a href="#lakehouse" class="nav-link"><i class="fas fa-water"></i> Lakehouse</a></li>
                <li class="nav-item"><a href="#"><i class="fas fa-bolt"></i> Deals</a></li>
                <li class="nav-item"><a href="#"><i class="fas fa-shipping-fast"></i> Delivery</a></li>
            </ul>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-content">
                <h1>Welcome to <span>LakeFlip Mart</span></h1>
                <p>Your one-stop destination for premium tech products and lakehouse living essentials. Combining the convenience of Flipkart with the tranquility of lakeside retreats.</p>
                <div class="hero-buttons">
                    <a href="#laptops" class="btn btn-primary">
                        <i class="fas fa-shopping-bag"></i> Shop Now
                    </a>
                </div>
            </div>
        </section>

        <!-- Lakehouse Information -->
        <section class="lakehouse-info" id="lakehouse">
            <h2>The LakeFlip Experience</h2>
            <p style="text-align: center; max-width: 800px; margin: 0 auto 2rem;">At LakeFlip Mart, we combine the convenience of online shopping with the serenity of lakehouse living. Our unique concept brings you the best of both worlds.</p>
            
            <div class="lakehouse-content">
                <div class="info-card">
                    <i class="fas fa-ship"></i>
                    <h3>Lake Delivery</h3>
                    <p>Unique boat delivery service to lakeside locations. Experience scenic delivery you'll never forget!</p>
                </div>
                <div class="info-card">
                    <i class="fas fa-umbrella-beach"></i>
                    <h3>Tech by the Lake</h3>
                    <p>Special packages including tech products + lakeside getaway deals. Perfect for digital nomads.</p>
                </div>
                <div class="info-card">
                    <i class="fas fa-leaf"></i>
                    <h3>Eco-Friendly</h3>
                    <p>Committed to sustainability with eco-friendly packaging and lake conservation projects.</p>
                </div>
            </div>
        </section>

        <!-- Category Filter -->
        <div class="category-filter">
            <button class="filter-btn active" data-category="laptops">💻 Laptops (15 Items)</button>
            <button class="filter-btn" data-category="phones">📱 Phones (15 Items)</button>
            <button class="filter-btn" data-category="watches">⌚ Watches (15 Items)</button>
        </div>

        <!-- Laptops Section - 15 Items -->
        <section id="laptops" class="category-section active">
            <h2 class="section-title">Premium Laptops Collection</h2>
            <div class="products-grid">
                <!-- Laptop 1 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-15% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Gaming Laptop</span>
                        <h3 class="product-title">MSI Katana 15 B13VFK-485IN</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.5/5)
                        </div>
                        <div class="product-price">₹1,29,999 <span class="old-price">₹1,52,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i7-13700H</li>
                            <li><i class="fas fa-gamepad"></i> NVIDIA RTX 4060 8GB</li>
                            <li><i class="fas fa-memory"></i> 16GB DDR5 RAM</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 2 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BEST SELLER</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Ultrabook</span>
                        <h3 class="product-title">Apple MacBook Air M2 2023</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (5.0/5)
                        </div>
                        <div class="product-price">₹1,19,999 <span class="old-price">₹1,29,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Apple M2 Chip</li>
                            <li><i class="fas fa-expand-alt"></i> 13.6" Retina</li>
                            <li><i class="fas fa-battery-full"></i> 18hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 3 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">NEW</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">2-in-1 Laptop</span>
                        <h3 class="product-title">HP Spectre x360 14-ef1003TU</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹1,49,999 <span class="old-price">₹1,69,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i7-1355U</li>
                            <li><i class="fas fa-expand-alt"></i> 14" OLED Touch</li>
                            <li><i class="fas fa-battery-full"></i> 16hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 4 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1515343480029-43cdfe6b6aae?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-20% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Gaming Laptop</span>
                        <h3 class="product-title">ASUS TUF Gaming A15</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.3/5)
                        </div>
                        <div class="product-price">₹89,999 <span class="old-price">₹1,12,499</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> AMD Ryzen 7</li>
                            <li><i class="fas fa-gamepad"></i> NVIDIA RTX 3050</li>
                            <li><i class="fas fa-expand-alt"></i> 15.6" 144Hz</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 5 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1593640408182-31c70c8268f5?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">TOP RATED</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Business Laptop</span>
                        <h3 class="product-title">Dell Latitude 5440</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.9/5)
                        </div>
                        <div class="product-price">₹95,999 <span class="old-price">₹1,09,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i7-1365U</li>
                            <li><i class="fas fa-shield-alt"></i> Security Features</li>
                            <li><i class="fas fa-battery-full"></i> 20hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 6 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-12% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Student Laptop</span>
                        <h3 class="product-title">Lenovo IdeaPad Slim 3</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.2/5)
                        </div>
                        <div class="product-price">₹49,999 <span class="old-price">₹56,799</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i5-1235U</li>
                            <li><i class="fas fa-expand-alt"></i> 15.6" FHD</li>
                            <li><i class="fas fa-battery-full"></i> 8hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 7 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">ULTRA THIN</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Ultrabook</span>
                        <h3 class="product-title">Microsoft Surface Laptop 5</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹1,24,999 <span class="old-price">₹1,39,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i7-1255U</li>
                            <li><i class="fas fa-expand-alt"></i> 13.5" Touch</li>
                            <li><i class="fas fa-weight"></i> 1.2kg Weight</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 8 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1491933382434-500287f9b54b?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">GAMING</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Gaming Laptop</span>
                        <h3 class="product-title">Acer Predator Helios 300</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.6/5)
                        </div>
                        <div class="product-price">₹1,39,999 <span class="old-price">₹1,59,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i9-12900H</li>
                            <li><i class="fas fa-gamepad"></i> RTX 3070 Ti</li>
                            <li><i class="fas fa-expand-alt"></i> 17.3" QHD</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 9 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1525547719578-21e64b6d233f?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">CREATOR</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Creator Laptop</span>
                        <h3 class="product-title">Razer Blade 15 Studio</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.9/5)
                        </div>
                        <div class="product-price">₹2,49,999 <span class="old-price">₹2,79,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i9-13900H</li>
                            <li><i class="fas fa-palette"></i> RTX 4070 Studio</li>
                            <li><i class="fas fa-expand-alt"></i> 4K OLED 60Hz</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 10 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BUDGET</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Budget Laptop</span>
                        <h3 class="product-title">HP 15s-fq5007TU</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.1/5)
                        </div>
                        <div class="product-price">₹39,999 <span class="old-price">₹45,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i3-1215U</li>
                            <li><i class="fas fa-expand-alt"></i> 15.6" HD</li>
                            <li><i class="fas fa-battery-full"></i> 7hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 11 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1629131726695-08d3c8e59e2c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-18% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">2-in-1 Laptop</span>
                        <h3 class="product-title">Lenovo Yoga 9i Gen 8</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹1,69,999 <span class="old-price">₹2,07,316</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i7-1360P</li>
                            <li><i class="fas fa-expand-alt"></i> 14" 4K OLED</li>
                            <li><i class="fas fa-bolt"></i> 360° Hinge</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 12 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">NEW</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Gaming Laptop</span>
                        <h3 class="product-title">Alienware m16 R1</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.9/5)
                        </div>
                        <div class="product-price">₹2,29,999 <span class="old-price">₹2,59,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i9-13900HX</li>
                            <li><i class="fas fa-gamepad"></i> RTX 4080 12GB</li>
                            <li><i class="fas fa-expand-alt"></i> 16" QHD+ 240Hz</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 13 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">PREMIUM</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Ultrabook</span>
                        <h3 class="product-title">LG Gram 17 (2023)</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹1,79,999 <span class="old-price">₹1,99,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i7-1360P</li>
                            <li><i class="fas fa-expand-alt"></i> 17" WQXGA</li>
                            <li><i class="fas fa-weight"></i> Ultra Light 1.35kg</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 14 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">DEVELOPER</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Developer Laptop</span>
                        <h3 class="product-title">Dell XPS 15 9530</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹1,89,999 <span class="old-price">₹2,09,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Intel i9-13900H</li>
                            <li><i class="fas fa-code"></i> 64GB RAM</li>
                            <li><i class="fas fa-expand-alt"></i> 15.6" 3.5K OLED</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Laptop 15 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1468436139062-f60a71c5c892?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-25% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Student Laptop</span>
                        <h3 class="product-title">ASUS VivoBook S15</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.4/5)
                        </div>
                        <div class="product-price">₹54,999 <span class="old-price">₹73,332</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> AMD Ryzen 5</li>
                            <li><i class="fas fa-expand-alt"></i> 15.6" OLED</li>
                            <li><i class="fas fa-battery-full"></i> 10hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Phones Section - 15 Items -->
        <section id="phones" class="category-section">
            <h2 class="section-title">Premium Phones Collection</h2>
            <div class="products-grid">
                <!-- Phone 1 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BEST SELLER</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Flagship Phone</span>
                        <h3 class="product-title">iPhone 15 Pro Max 256GB</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.9/5)
                        </div>
                        <div class="product-price">₹1,59,999 <span class="old-price">₹1,69,900</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> A17 Pro Chip</li>
                            <li><i class="fas fa-camera"></i> 48MP Triple Camera</li>
                            <li><i class="fas fa-expand-alt"></i> 6.7" Super Retina</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 2 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1598327105666-5b89351aff97?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">NEW</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Android Phone</span>
                        <h3 class="product-title">Samsung Galaxy S24 Ultra</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹1,34,999 <span class="old-price">₹1,49,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 3</li>
                            <li><i class="fas fa-camera"></i> 200MP Camera</li>
                            <li><i class="fas fa-expand-alt"></i> 6.8" Dynamic AMOLED</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 3 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-18% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Foldable Phone</span>
                        <h3 class="product-title">OnePlus Open 512GB</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹1,39,999 <span class="old-price">₹1,70,731</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 7.82" Foldable</li>
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 2</li>
                            <li><i class="fas fa-camera"></i> 48MP Triple Camera</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 4 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1592910147752-5f3c4e5e7b7c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BUDGET</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Budget Phone</span>
                        <h3 class="product-title">Redmi Note 13 Pro 5G</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.3/5)
                        </div>
                        <div class="product-price">₹24,999 <span class="old-price">₹27,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 7s Gen 2</li>
                            <li><i class="fas fa-camera"></i> 200MP Camera</li>
                            <li><i class="fas fa-bolt"></i> 67W Fast Charging</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 5 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1591799264318-7e6ef8ddb7ea?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">CAMERA KING</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Camera Phone</span>
                        <h3 class="product-title">Google Pixel 8 Pro</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹1,06,999 <span class="old-price">₹1,19,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Google Tensor G3</li>
                            <li><i class="fas fa-camera"></i> 50MP Triple Camera</li>
                            <li><i class="fas fa-robot"></i> 7 Years Updates</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 6 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">GAMING</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Gaming Phone</span>
                        <h3 class="product-title">ASUS ROG Phone 8 Pro</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.6/5)
                        </div>
                        <div class="product-price">₹89,999 <span class="old-price">₹99,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 3</li>
                            <li><i class="fas fa-gamepad"></i> 165Hz AMOLED</li>
                            <li><i class="fas fa-bolt"></i> 65W Fast Charging</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 7 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1565849904461-04a58ad377e0?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-22% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Mid-Range</span>
                        <h3 class="product-title">Nothing Phone (2)</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.4/5)
                        </div>
                        <div class="product-price">₹44,999 <span class="old-price">₹57,696</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 8+ Gen 1</li>
                            <li><i class="fas fa-lightbulb"></i> Glyph Interface</li>
                            <li><i class="fas fa-expand-alt"></i> 6.7" LTPO OLED</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 8 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1592750475338-74b7b21085ab?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">PREMIUM</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Flagship Phone</span>
                        <h3 class="product-title">Samsung Galaxy Z Fold5</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹1,54,999 <span class="old-price">₹1,64,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 7.6" Foldable</li>
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 2</li>
                            <li><i class="fas fa-battery-full"></i> 4400mAh Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 9 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1512499617640-c74ae3a79d37?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">VALUE</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Mid-Range</span>
                        <h3 class="product-title">OnePlus 12R 256GB</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.5/5)
                        </div>
                        <div class="product-price">₹39,999 <span class="old-price">₹45,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 2</li>
                            <li><i class="fas fa-bolt"></i> 100W SuperVOOC</li>
                            <li><i class="fas fa-expand-alt"></i> 6.78" 120Hz</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 10 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1598327105854-c8674fadd3c8?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">ENTRY LEVEL</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Budget Phone</span>
                        <h3 class="product-title">Motorola G84 5G</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.2/5)
                        </div>
                        <div class="product-price">₹18,999 <span class="old-price">₹21,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 695</li>
                            <li><i class="fas fa-camera"></i> 50MP OIS Camera</li>
                            <li><i class="fas fa-expand-alt"></i> 6.5" pOLED</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 11 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">FLIP PHONE</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Foldable Phone</span>
                        <h3 class="product-title">Samsung Galaxy Z Flip5</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.6/5)
                        </div>
                        <div class="product-price">₹99,999 <span class="old-price">₹1,09,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 6.7" Foldable</li>
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 2</li>
                            <li><i class="fas fa-mobile-alt"></i> 3.4" Cover Screen</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 12 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1589492477829-5e65395b66cc?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-15% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Camera Phone</span>
                        <h3 class="product-title">Vivo X100 Pro</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹89,999 <span class="old-price">₹1,05,882</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> MediaTek Dimensity 9300</li>
                            <li><i class="fas fa-camera"></i> 50MP ZEISS Camera</li>
                            <li><i class="fas fa-bolt"></i> 100W Fast Charging</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 13 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1592750475338-74b7b21085ab?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">GAMING</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Gaming Phone</span>
                        <h3 class="product-title">Nubia Red Magic 9 Pro</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹64,999 <span class="old-price">₹69,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> Snapdragon 8 Gen 3</li>
                            <li><i class="fas fa-gamepad"></i> 960Hz Touch Sampling</li>
                            <li><i class="fas fa-fan"></i> Built-in Cooling Fan</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 14 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">NEW</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Mid-Range</span>
                        <h3 class="product-title">iPhone 14 128GB</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.6/5)
                        </div>
                        <div class="product-price">₹66,999 <span class="old-price">₹79,900</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> A15 Bionic Chip</li>
                            <li><i class="fas fa-camera"></i> Dual 12MP Camera</li>
                            <li><i class="fas fa-film"></i> Cinematic Mode</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Phone 15 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1565849904461-04a58ad377e0?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BUDGET KING</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Budget Phone</span>
                        <h3 class="product-title">Poco X6 Pro 5G</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.3/5)
                        </div>
                        <div class="product-price">₹26,999 <span class="old-price">₹31,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-microchip"></i> MediaTek Dimensity 8300</li>
                            <li><i class="fas fa-expand-alt"></i> 6.67" 120Hz</li>
                            <li><i class="fas fa-bolt"></i> 67W Turbo Charging</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Watches Section - 15 Items -->
        <section id="watches" class="category-section">
            <h2 class="section-title">Premium Watches Collection</h2>
            <div class="products-grid">
                <!-- Watch 1 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BEST SELLER</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Smart Watch</span>
                        <h3 class="product-title">Apple Watch Series 9 GPS</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹41,900 <span class="old-price">₹45,900</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-heartbeat"></i> Blood Oxygen</li>
                            <li><i class="fas fa-brain"></i> S9 SiP Chip</li>
                            <li><i class="fas fa-bolt"></i> 18hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 2 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1551816230-ef5deaed4a26?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">NEW</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Smart Watch</span>
                        <h3 class="product-title">Samsung Galaxy Watch6 Classic</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹36,999 <span class="old-price">₹40,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 47mm Display</li>
                            <li><i class="fas fa-heartbeat"></i> ECG Monitor</li>
                            <li><i class="fas fa-memory"></i> 2GB RAM</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 3 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1434493650001-5d43a6fea0a6?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-20% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Fitness Band</span>
                        <h3 class="product-title">Fitbit Charge 6</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.4/5)
                        </div>
                        <div class="product-price">₹14,999 <span class="old-price">₹18,749</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-heartbeat"></i> 24/7 Heart Rate</li>
                            <li><i class="fas fa-water"></i> 50m Water Resistant</li>
                            <li><i class="fas fa-battery-full"></i> 7-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 4 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">PREMIUM</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Smart Watch</span>
                        <h3 class="product-title">Garmin Forerunner 965</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.9/5)
                        </div>
                        <div class="product-price">₹59,999 <span class="old-price">₹64,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-running"></i> Advanced Running Metrics</li>
                            <li><i class="fas fa-map"></i> Built-in GPS Maps</li>
                            <li><i class="fas fa-battery-full"></i> 23-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 5 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1523170335258-f5ed11844a49?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">BUDGET</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Smart Watch</span>
                        <h3 class="product-title">Noise ColorFit Pro 5</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.2/5)
                        </div>
                        <div class="product-price">₹4,499 <span class="old-price">₹5,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 1.96" AMOLED</li>
                            <li><i class="fas fa-heartbeat"></i> SpO2 Monitor</li>
                            <li><i class="fas fa-battery-full"></i> 7-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 6 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1579586337278-3fdb24f3217c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">LUXURY</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Hybrid Watch</span>
                        <h3 class="product-title">Fossil Gen 6 Hybrid</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.3/5)
                        </div>
                        <div class="product-price">₹21,999 <span class="old-price">₹24,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-tachometer-alt"></i> Traditional Hands</li>
                            <li><i class="fas fa-bell"></i> Smart Notifications</li>
                            <li><i class="fas fa-battery-full"></i> 2-week Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 7 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">FITNESS</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Sports Watch</span>
                        <h3 class="product-title">Garmin Venu 3</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.7/5)
                        </div>
                        <div class="product-price">₹42,999 <span class="old-price">₹47,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-music"></i> Music Storage</li>
                            <li><i class="fas fa-heartbeat"></i> Advanced Health</li>
                            <li><i class="fas fa-battery-full"></i> 14-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 8 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">ULTRA</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Smart Watch</span>
                        <h3 class="product-title">Apple Watch Ultra 2</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.9/5)
                        </div>
                        <div class="product-price">₹89,900 <span class="old-price">₹94,900</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-water"></i> 100m Water Resistant</li>
                            <li><i class="fas fa-compass"></i> Dual-frequency GPS</li>
                            <li><i class="fas fa-battery-full"></i> 36hr Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 9 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1551816230-ef5deaed4a26?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-15% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Fitness Band</span>
                        <h3 class="product-title">Xiaomi Smart Band 8 Pro</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.3/5)
                        </div>
                        <div class="product-price">₹4,999 <span class="old-price">₹5,882</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 1.74" AMOLED</li>
                            <li><i class="fas fa-running"></i> 150+ Sports Modes</li>
                            <li><i class="fas fa-battery-full"></i> 14-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 10 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1434493650001-5d43a6fea0a6?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">OUTDOOR</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Sports Watch</span>
                        <h3 class="product-title">Suunto 9 Peak Pro</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> (4.8/5)
                        </div>
                        <div class="product-price">₹54,999 <span class="old-price">₹59,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-mountain"></i> 80+ Sports Modes</li>
                            <li><i class="fas fa-map"></i> Offline Maps</li>
                            <li><i class="fas fa-battery-full"></i> 40-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 11 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1579586337278-3fdb24f3217c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">CLASSIC</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Hybrid Watch</span>
                        <h3 class="product-title">Withings ScanWatch 2</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.5/5)
                        </div>
                        <div class="product-price">₹34,999 <span class="old-price">₹38,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-heartbeat"></i> Medical-grade ECG</li>
                            <li><i class="fas fa-syringe"></i> Blood Oxygen</li>
                            <li><i class="fas fa-calendar"></i> 30-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 12 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1523170335258-f5ed11844a49?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">VALUE</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Smart Watch</span>
                        <h3 class="product-title">Fire-Boltt Phoenix Ultra</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.1/5)
                        </div>
                        <div class="product-price">₹2,799 <span class="old-price">₹3,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 1.96" Display</li>
                            <li><i class="fas fa-bluetooth"></i> Bluetooth Calling</li>
                            <li><i class="fas fa-battery-full"></i> 7-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 13 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">RUNNING</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Sports Watch</span>
                        <h3 class="product-title">Coros Pace 3</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.6/5)
                        </div>
                        <div class="product-price">₹24,999 <span class="old-price">₹27,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-running"></i> Running Power</li>
                            <li><i class="fas fa-music"></i> Music Storage</li>
                            <li><i class="fas fa-battery-full"></i> 24-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 14 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">KIDS</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Kids Watch</span>
                        <h3 class="product-title">TickTalk 5 Kids Smartwatch</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.4/5)
                        </div>
                        <div class="product-price">₹12,999 <span class="old-price">₹14,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-phone"></i> 4G Calling</li>
                            <li><i class="fas fa-map-marker-alt"></i> GPS Tracking</li>
                            <li><i class="fas fa-shield-alt"></i> Parent Controls</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Watch 15 -->
                <div class="product-card">
                    <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1579586337278-3fdb24f3217c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');">
                        <span class="product-badge">-25% OFF</span>
                    </div>
                    <div class="product-content">
                        <span class="product-category">Fitness Band</span>
                        <h3 class="product-title">Amazfit Band 7</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> (4.3/5)
                        </div>
                        <div class="product-price">₹2,999 <span class="old-price">₹3,999</span></div>
                        <ul class="product-features">
                            <li><i class="fas fa-expand-alt"></i> 1.47" AMOLED</li>
                            <li><i class="fas fa-heartbeat"></i> 24/7 Health</li>
                            <li><i class="fas fa-battery-full"></i> 18-day Battery</li>
                        </ul>
                        <div class="product-actions">
                            <button class="product-button buy">Buy Now</button>
                            <button class="product-button cart">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-column">
                    <h3>LakeFlip Mart</h3>
                    <p>Your one-stop shop for tech products and lakeside living. Combining convenience with tranquility.</p>
                    <div style="margin-top: 1rem;">
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-facebook"></i></a>
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-twitter"></i></a>
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#laptops">Laptops</a></li>
                        <li><a href="#phones">Phones</a></li>
                        <li><a href="#watches">Watches</a></li>
                        <li><a href="#lakehouse">Lakehouse</a></li>
                        <li><a href="#">About Us</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Customer Service</h3>
                    <ul class="footer-links">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Returns & Refunds</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Contact Info</h3>
                    <ul class="footer-links">
                        <li><i class="fas fa-map-marker-alt"></i> Lakeside Plaza, Tech Bay</li>
                        <li><i class="fas fa-phone"></i> +1 (555) 123-LAKE</li>
                        <li><i class="fas fa-envelope"></i> info@lakeflipmart.com</li>
                        <li><i class="fas fa-clock"></i> Mon-Sun: 7AM-11PM</li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 LakeFlip Mart. All rights reserved. | Designed with <i class="fas fa-heart" style="color:#ffe11b;"></i> by the Lake</p>
            </div>
        </div>
    </footer>

    <script>
        // Filter functionality
        document.querySelectorAll('.filter-btn').forEach(button => {
            button.addEventListener('click', function() {
                const category = this.dataset.category;
                
                // Update active button
                document.querySelectorAll('.filter-btn').forEach(btn => {
                    btn.classList.remove('active');
                });
                this.classList.add('active');
                
                // Show selected category
                document.querySelectorAll('.category-section').forEach(section => {
                    section.classList.remove('active');
                });
                document.getElementById(category).classList.add('active');
                
                // Scroll to category
                document.getElementById(category).scrollIntoView({ behavior: 'smooth' });
            });
        });

        // Navigation active state
        document.querySelectorAll('.nav-link').forEach(link => {
            link.addEventListener('click', function() {
                document.querySelectorAll('.nav-link').forEach(item => {
                    item.classList.remove('active');
                });
                this.classList.add('active');
            });
        });

        // Cart functionality
        let cartItems = 8;
        document.querySelectorAll('.product-button.cart').forEach(button => {
            button.addEventListener('click', function() {
                cartItems++;
                document.querySelector('.cart-count').textContent = cartItems;
                
                // Animation
                const cartCount = document.querySelector('.cart-count');
                cartCount.style.transform = 'scale(1.3)';
                setTimeout(() => {
                    cartCount.style.transform = 'scale(1)';
                }, 300);
                
                // Show notification
                const productTitle = this.closest('.product-card').querySelector('.product-title').textContent;
                showNotification(`Added "${productTitle}" to cart!`);
            });
        });

        // Buy now functionality
        document.querySelectorAll('.product-button.buy').forEach(button => {
            button.addEventListener('click', function() {
                const productTitle = this.closest('.product-card').querySelector('.product-title').textContent;
                showNotification(`Proceeding to checkout for "${productTitle}"`);
            });
        });

        // Search functionality
        document.querySelector('.search-bar button').addEventListener('click', function() {
            const searchTerm = document.querySelector('.search-bar input').value;
            if(searchTerm.trim()) {
                showNotification(`Searching for: "${searchTerm}"`);
            }
        });

        // Notification function
        function showNotification(message) {
            const notification = document.createElement('div');
            notification.style.cssText = `
                position: fixed;
                top: 100px;
                right: 20px;
                background: #2874f0;
                color: white;
                padding: 1rem 1.5rem;
                border-radius: 5px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.2);
                z-index: 1000;
                animation: slideIn 0.3s ease;
                max-width: 300px;
            `;
            
            const style = document.createElement('style');
            style.textContent = `
                @keyframes slideIn {
                    from { transform: translateX(100%); opacity: 0; }
                    to { transform: translateX(0); opacity: 1; }
                }
            `;
            document.head.appendChild(style);
            
            notification.textContent = message;
            document.body.appendChild(notification);
            
            setTimeout(() => {
                notification.style.animation = 'slideIn 0.3s ease reverse';
                setTimeout(() => {
                    document.body.removeChild(notification);
                }, 300);
            }, 3000);
        }
    </script>
</body>
</html>
