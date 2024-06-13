<div x-data="{ open: false }" class="relative">
    <button @click="open = !open" class="flex items-center px-4 py-2 bg-gray-200 rounded-md hover:bg-green-700 hover:text-white focus:bg-green-600 focus:text-white">
        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 4a1 1 0 011-1h16a1 1 0 011 1v2.586a1 1 0 01-.293.707l-6.414 6.414a1 1 0 00-.293.707V17l-4 4v-6.586a1 1 0 00-.293-.707L3.293 7.293A1 1 0 013 6.586V4z"></path>
        </svg>
        Filter Kategori
    </button>
    <div x-show="open" @click.away="open = false" class="absolute right-0 mt-2 p-2 bg-white border rounded-md shadow-lg z-50">
        <a href="{{ route('dashboard') }}" class="block px-4 py-2 hover:bg-gray-100 rounded">Semua</a>
        @foreach ($categories as $category)
        <a href="{{ route('dashboard') . "?q={$category->name}" }}" class="block px-4 py-2 hover:bg-gray-100 rounded">{{ $category->name }}</a>
        @endforeach
    </div>
</div>