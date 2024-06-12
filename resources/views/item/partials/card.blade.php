<div class="rounded bg-white border p-4">
    <img src="{{ asset($item->image) }}" alt="">
    <h6 class="font-medium text-md">{{ $item->name }}</h6>
    <span class="font-bold text-xs">Rp. @rupiah($item->price)</span>
    <div class="grid grid-cols-2 gap-2 mt-4">
        <button
            class="w-full px-4 py-1 bg-indigo-600 text-white border border-transparent rounded-md font-semibold text-xs text-white tracking-widest hover:bg-indigo-500 active:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2 transition ease-in-out duration-150">View</button>
        <form action="{{ route('cart.add', $item) }}" method="POST">
            @csrf
            <button type="submit" class="w-full px-4 py-1 bg-green-600 text-white border border-transparent rounded-md font-semibold text-xs text-white tracking-widest hover:bg-green-500 active:bg-green-700 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-offset-2 transition ease-in-out duration-150">Buy</button>
        </form>
    </div>
</div>
