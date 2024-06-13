<div x-data="{ open: false }" class="relative">
    <button @click="open = !open" class="flex items-center px-4 py-2 bg-gray-200 rounded-md hover:bg-green-700 hover:text-white focus:bg-green-600 focus:text-white">
        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"></path>
        </svg>
        Keranjang ({{ $carts->sum('qty') }})
    </button>
    <div x-show="open" @click.away="open = false" class="absolute right-0 mt-2 p-2 bg-white border rounded-md shadow-lg max-h-96 overflow-y-auto z-50" style="width: 400px;">
        @if ($carts->isNotEmpty())
        @foreach ($carts as $cart)
        @include('item.partials.cart')
        @endforeach
        <div class="mt-4 border-t pt-4">
            <div class="flex justify-between mb-4">
                <h6 class="font-medium text-sm">Total</h6>
                <p class="font-bold text-xs leading-loose">
                    Rp. @rupiah($carts->sum(fn($c) => $c->qty * $c->price))
                </p>
            </div>
            <a href="{{ route('transaction.cart') }}" class="block text-center w-full px-4 py-2 bg-green-600 text-white rounded-md font-semibold text-xs hover:bg-green-500 transition">
                Check out
            </a>
        </div>
        @else
        <p class="text-gray-500">Keranjang kosong</p>
        @endif
    </div>
</div>