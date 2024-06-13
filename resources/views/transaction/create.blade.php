<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                <div class="flex justify-between items-center mb-6">
                    <h3 class="text-gray-900 font-semibold text-lg">Stok Produk</h3>
                    <div class="flex space-x-4">
                        <x-category-filter :categories="$categories" />
                        <x-cart-preview :carts="$carts" />
                    </div>
                </div>
                <div class="grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 gap-4">
                    @foreach ($items as $item)
                    @include('item.partials.card')
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div id="productModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full hidden">
        <div class="relative top-20 mx-auto p-6 border w-11/12 max-w-2xl shadow-lg rounded-md bg-white">
            <div class="mt-3">
                <div class="flex justify-between items-center mb-4">
                    <h3 class="text-2xl leading-6 font-bold text-gray-900" id="modalTitle"></h3>
                    <button id="closeModal" class="text-gray-400 hover:text-gray-500">
                        <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                    </button>
                </div>
                <div class="flex flex-col md:flex-row">
                    <img id="modalImage" src="" alt="Product Image" class="w-full md:w-1/2 h-64 md:h-auto object-cover rounded-lg mb-4 md:mb-0 md:mr-6">
                    <div class="flex-1">
                        <p class="text-gray-700 text-base mb-4" id="modalDescription"></p>
                        <p class="text-xl font-semibold text-gray-800 mb-2">Harga: Rp. <span id="modalPrice"></span></p>
                        <p class="text-lg text-gray-700">Stok: 99<span id="modalStock"></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const modal = document.getElementById('productModal');
            const closeModal = document.getElementById('closeModal');
            const viewButtons = document.querySelectorAll('.viewProductBtn');

            viewButtons.forEach(button => {
                button.addEventListener('click', function() {
                    const id = this.getAttribute('data-id');
                    const name = this.getAttribute('data-name');
                    const description = this.getAttribute('data-description');
                    const price = this.getAttribute('data-price');
                    const image = this.getAttribute('data-image');

                    document.getElementById('modalTitle').textContent = name;
                    document.getElementById('modalDescription').textContent = description;
                    document.getElementById('modalPrice').textContent = new Intl.NumberFormat('id-ID').format(price);
                    document.getElementById('modalImage').src = image;

                    modal.classList.remove('hidden');
                });
            });

            closeModal.addEventListener('click', function() {
                modal.classList.add('hidden');
            });

            window.addEventListener('click', function(event) {
                if (event.target == modal) {
                    modal.classList.add('hidden');
                }
            });
        });
    </script>

</x-app-layout>