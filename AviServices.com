<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Avi's Script Service - Custom Muscle Legends Script</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
<script>tailwind.config={theme:{extend:{colors:{primary:'#3176FF',secondary:'#10B981'},borderRadius:{'none':'0px','sm':'4px',DEFAULT:'8px','md':'12px','lg':'16px','xl':'20px','2xl':'24px','3xl':'32px','full':'9999px','button':'8px'}}}}</script>
<style>
:where([class^="ri-"])::before { content: "\f3c2"; }
body {
color-scheme: light;
}
.cart-count {
position: absolute;
top: -8px;
right: -8px;
background-color: #EF4444;
color: white;
border-radius: 50%;
width: 20px;
height: 20px;
display: flex;
align-items: center;
justify-content: center;
font-size: 12px;
}
.modal {
display: none;
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: rgba(0, 0, 0, 0.5);
z-index: 1000;
}
.modal-content {
background-color: white;
margin: 15% auto;
padding: 20px;
width: 80%;
max-width: 500px;
position: relative;
}
.features {
transition: all 0.3s ease;
}
.features.hidden {
max-height: 0;
opacity: 0;
overflow: hidden;
margin: 0;
}
.features:not(.hidden) {
max-height: 500px;
opacity: 1;
margin-top: 1rem;
}
.product-card {
transition: transform 0.2s ease;
}
.product-card:hover {
transform: translateY(-4px);
}
</style>
</head>
<body class="bg-gray-50 min-h-screen text-gray-900">
<nav class="bg-white shadow-sm">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="flex justify-between h-16">
<div class="flex items-center">
<a href="/" class="font-['Pacifico'] text-2xl text-primary">logo</a>
<span class="ml-2 text-xl font-semibold text-gray-900">Avi's Services</span>
<div class="hidden sm:ml-6 sm:flex sm:space-x-8">
<a href="#" class="text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-primary text-sm font-medium">Home</a>
<a href="#" class="text-gray-600 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">Products</a>
<a href="#" class="text-gray-600 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">Support</a>
<a href="#" class="text-gray-600 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">Contact</a>
</div>
</div>
<div class="flex items-center">
<div class="relative mr-4 cursor-pointer" id="cartIcon">
<i class="ri-shopping-cart-2-line text-xl"></i>
<span class="cart-count">0</span>
</div>
<button class="!rounded-button bg-primary text-white px-4 py-2 text-sm font-medium hover:bg-primary/90" id="loginBtn">
Login
</button>
</div>
</div>
</div>
</nav>
<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
<!-- Product 1 -->
<div class="bg-white shadow rounded-lg overflow-hidden cursor-pointer product-card border border-gray-200 hover:shadow-lg transition-shadow duration-300" onclick="toggleFeatures(this)">
<img src="https://public.readdy.ai/ai/img_res/6a1f038c02c84e12ed8ba07d55f9a3a6.jpg" alt="Custom Script Service" class="w-full h-48 object-cover">
<div class="p-6">
<h2 class="text-xl font-bold text-gray-900">Custom Script Service</h2>
<div class="flex items-center mt-2">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-half-fill"></i>
</div>
<span class="ml-2 text-sm text-gray-600">(128)</span>
</div>
<div class="mt-4">
<span class="text-2xl font-bold text-primary">$24.99</span>
<span class="ml-2 text-gray-500 line-through">$39.99</span>
</div>
<div class="features hidden mt-4 space-y-2 text-gray-600">
<p class="flex items-center"><i class="ri-check-line text-green-500 mr-2"></i>24/7 Script Support</p>
<p class="flex items-center"><i class="ri-check-line text-green-500 mr-2"></i>Auto-Update Feature</p>
<p class="flex items-center"><i class="ri-check-line text-green-500 mr-2"></i>Anti-Detection System</p>
<p class="flex items-center"><i class="ri-check-line text-green-500 mr-2"></i>Custom Commands</p>
<p class="flex items-center"><i class="ri-check-line text-green-500 mr-2"></i>Premium Support</p>
</div>
<div class="mt-4 space-y-2">
<button class="w-full !rounded-button bg-primary text-white px-4 py-2 text-sm font-medium hover:bg-primary/90" onclick="event.stopPropagation()">Buy Now</button>
<button class="w-full !rounded-button border-2 border-primary text-primary px-4 py-2 text-sm font-medium hover:bg-primary/10" onclick="event.stopPropagation()">Add to Cart</button>
</div>
</div>
</div>
<!-- Product 2 -->
<div class="bg-white shadow rounded-lg overflow-hidden border border-gray-200">
<img src="https://public.readdy.ai/ai/img_res/2887f9421065b33ccf929bb40b854fa4.jpg" alt="Simple Designer Service" class="w-full h-48 object-cover">
<div class="p-6">
<h2 class="text-xl font-bold text-gray-900">Simple Designer Service</h2>
<div class="flex items-center mt-2">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-line"></i>
</div>
<span class="ml-2 text-sm text-gray-600">(95)</span>
</div>
<div class="mt-4">
<span class="text-2xl font-bold text-primary">$19.99</span>
<span class="ml-2 text-gray-500 line-through">$29.99</span>
</div>
<div class="mt-4 space-y-2">
<button class="w-full !rounded-button bg-primary text-white px-4 py-2 text-sm font-medium hover:bg-primary/90">Buy Now</button>
<button class="w-full !rounded-button border-2 border-primary text-primary px-4 py-2 text-sm font-medium hover:bg-primary/10">Add to Cart</button>
</div>
</div>
</div>
<!-- Product 3 -->
<div class="bg-white shadow rounded-lg overflow-hidden border border-gray-200">
<img src="https://public.readdy.ai/ai/img_res/6b990e34a03079fd7542ea62092cee9e.jpg" alt="Advanced Developer Service" class="w-full h-48 object-cover">
<div class="p-6">
<h2 class="text-xl font-bold text-gray-900">Advanced Developer Service</h2>
<div class="flex items-center mt-2">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
</div>
<span class="ml-2 text-sm text-gray-600">(156)</span>
</div>
<div class="mt-4">
<span class="text-2xl font-bold text-primary">$29.99</span>
<span class="ml-2 text-gray-500 line-through">$44.99</span>
</div>
<div class="mt-4 space-y-2">
<button class="w-full !rounded-button bg-primary text-white px-4 py-2 text-sm font-medium hover:bg-primary/90">Buy Now</button>
<button class="w-full !rounded-button border-2 border-primary text-primary px-4 py-2 text-sm font-medium hover:bg-primary/10">Add to Cart</button>
</div>
</div>
</div>
<!-- Product 4 -->
<div class="bg-white shadow rounded-lg overflow-hidden border border-gray-200">
<img src="https://public.readdy.ai/ai/img_res/bdb1524d9c7751ed2dd0f1f577dff8d7.jpg" alt="Discord Server/Bot Service" class="w-full h-48 object-cover">
<div class="p-6">
<h2 class="text-xl font-bold text-gray-900">Discord Server/Bot Service</h2>
<div class="flex items-center mt-2">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-half-fill"></i>
<i class="ri-star-line"></i>
</div>
<span class="ml-2 text-sm text-gray-600">(83)</span>
</div>
<div class="mt-4">
<span class="text-2xl font-bold text-primary">$22.99</span>
<span class="ml-2 text-gray-500 line-through">$34.99</span>
</div>
<div class="mt-4 space-y-2">
<button class="w-full !rounded-button bg-primary text-white px-4 py-2 text-sm font-medium hover:bg-primary/90">Buy Now</button>
<button class="w-full !rounded-button border-2 border-primary text-primary px-4 py-2 text-sm font-medium hover:bg-primary/10">Add to Cart</button>
</div>
</div>
</div>
<!-- Product 5 -->
<div class="bg-white shadow rounded-lg overflow-hidden border border-gray-200">
<img src="https://public.readdy.ai/ai/img_res/4e25332ee2a379283daf70c26e38c7e7.jpg" alt="Custom Discord Server" class="w-full h-48 object-cover">
<div class="p-6">
<h2 class="text-xl font-bold text-gray-900">Custom Discord Server</h2>
<div class="flex items-center mt-2">
<div class="flex text-yellow-400">
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-fill"></i>
<i class="ri-star-line"></i>
</div>
<span class="ml-2 text-sm text-gray-600">(112)</span>
</div>
<div class="mt-4">
<span class="text-2xl font-bold text-primary">$26.99</span>
<span class="ml-2 text-gray-500 line-through">$39.99</span>
</div>
<div class="mt-4 space-y-2">
<button class="w-full !rounded-button bg-primary text-white px-4 py-2 text-sm font-medium hover:bg-primary/90">Buy Now</button>
<button class="w-full !rounded-button border-2 border-primary text-primary px-4 py-2 text-sm font-medium hover:bg-primary/10">Add to Cart</button>
</div>
</div>
</div>
</div>
</main>
<div id="checkoutModal" class="modal">
<div class="modal-content rounded-lg bg-white border border-gray-200">
<div class="flex justify-between items-center mb-4">
<h2 class="text-2xl font-bold text-gray-900">Checkout</h2>
<button class="text-gray-400 hover:text-gray-500" id="closeModal">
<i class="ri-close-line text-2xl"></i>
</button>
</div>
<div class="space-y-4">
<div class="border rounded-lg p-4">
<h3 class="font-medium text-gray-900">Order Summary</h3>
<div id="cartItemsList" class="mt-2 space-y-2">
</div>
<div class="mt-4 pt-4 border-t">
<div class="flex justify-between font-medium">
<span>Total:</span>
<span id="cartTotal">$0.00</span>
</div>
</div>
</div>
<div class="border rounded-lg p-4">
<h3 class="font-medium text-gray-900">Payment Method</h3>
<div class="mt-4 space-y-3">
<button class="w-full !rounded-button bg-[#0070BA] text-white px-6 py-3 text-base font-medium hover:bg-[#0070BA]/90 flex items-center justify-center">
<i class="ri-paypal-fill mr-2 text-xl"></i>
PayPal
</button>
<button class="w-full !rounded-button bg-[#6772E5] text-white px-6 py-3 text-base font-medium hover:bg-[#6772E5]/90 flex items-center justify-center">
<i class="ri-bank-card-fill mr-2 text-xl"></i>
Credit Card
</button>
<button class="w-full !rounded-button bg-[#F7931A] text-white px-6 py-3 text-base font-medium hover:bg-[#F7931A]/90 flex items-center justify-center">
<i class="ri-bit-coin-fill mr-2 text-xl"></i>
Cryptocurrency
</button>
</div>
</div>
<div class="flex items-center">
<input type="checkbox" id="terms" class="h-4 w-4 text-primary border-gray-300 rounded">
<label for="terms" class="ml-2 text-sm text-gray-600">
I agree to the <a href="#" class="text-primary hover:underline">Terms and Conditions</a>
</label>
</div>
</div>
</div>
</div>
<footer class="bg-white mt-12 border-t border-gray-200">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
<div class="grid grid-cols-1 md:grid-cols-4 gap-8">
<div>
<h3 class="text-sm font-semibold text-gray-700 uppercase tracking-wider">About</h3>
<ul class="mt-4 space-y-4">
<li>
<a href="#" class="text-base text-gray-600 hover:text-gray-900">
About Us
</a>
</li>
<li>
<a href="#" class="text-base text-gray-600 hover:text-gray-900">
Contact
</a>
</li>
</ul>
</div>
<div>
<h3 class="text-sm font-semibold text-gray-700 uppercase tracking-wider">Support</h3>
<ul class="mt-4 space-y-4">
<li>
<a href="#" class="text-base text-gray-600 hover:text-gray-900">
Help Center
</a>
</li>
<li>
<a href="#" class="text-base text-gray-600 hover:text-gray-900">
Terms of Service
</a>
</li>
</ul>
</div>
<div>
<h3 class="text-sm font-semibold text-gray-700 uppercase tracking-wider">Legal</h3>
<ul class="mt-4 space-y-4">
<li>
<a href="#" class="text-base text-gray-600 hover:text-gray-900">
Privacy Policy
</a>
</li>
<li>
<a href="#" class="text-base text-gray-600 hover:text-gray-900">
Terms of Use
</a>
</li>
</ul>
</div>
<div>
<h3 class="text-sm font-semibold text-gray-700 uppercase tracking-wider">Connect</h3>
<div class="flex space-x-6 mt-4">
<a href="#" class="text-gray-400 hover:text-gray-500 cursor-pointer" onclick="copyDiscordLink(event)">
<i class="ri-discord-line text-xl"></i>
</a>
</div>
</div>
</div>
<div class="mt-8 border-t border-gray-200 pt-8">
<p class="text-base text-gray-400 text-center">
© 2025 Avi's Script Service. All rights reserved.
</p>
</div>
</div>
</footer>
<script>
// Create raindrops
function createRaindrop() {
  const raindrop = document.createElement('div');
  raindrop.className = 'raindrop';
  raindrop.style.left = Math.random() * window.innerWidth + 'px';
  raindrop.style.animation = `raindrop ${Math.random() * 1 + 0.5}s linear infinite`;
  document.body.appendChild(raindrop);
  
  setTimeout(() => {
    raindrop.remove();
  }, 2000);
}
setInterval(createRaindrop, 50);
let cartItems = [];
function addToCart(productName, price) {
  cartItems.push({ name: productName, price: price });
  count = cartItems.length;
  cartCount.textContent = count;
  
  const notification = document.createElement('div');
  notification.textContent = `${productName} added to cart!`;
  notification.style.position = 'fixed';
  notification.style.bottom = '20px';
  notification.style.left = '50%';
  notification.style.transform = 'translateX(-50%)';
  notification.style.backgroundColor = '#10B981';
  notification.style.color = 'white';
  notification.style.padding = '10px 20px';
  notification.style.borderRadius = '8px';
  notification.style.zIndex = '1000';
  document.body.appendChild(notification);
  
  setTimeout(() => {
    notification.remove();
  }, 2000);
}
function toggleFeatures(card) {
const features = card.querySelector('.features');
const content = features.innerHTML;
const newWindow = window.open('', '_blank', 'width=600,height=400');
newWindow.document.write(`
<!DOCTYPE html>
<html>
<head>
<title>Product Features</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
<style>
body { padding: 2rem; background: #f9fafb; }
.feature-item {
padding: 1rem;
margin-bottom: 1rem;
background: white;
border-radius: 8px;
box-shadow: 0 1px 3px rgba(0,0,0,0.1);
display: flex;
align-items: center;
}
.feature-item i {
color: #10B981;
margin-right: 1rem;
font-size: 1.25rem;
}
</style>
</head>
<body>
<h2 class="text-2xl font-bold mb-6">Product Features</h2>
<div class="space-y-4">
${content}
</div>
</body>
</html>
