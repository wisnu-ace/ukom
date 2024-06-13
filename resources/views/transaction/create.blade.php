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
</x-app-layout>