<x-guest-layout>
    <a href="{{ route('login') }}" class="text-sm text-gray-600 hover:text-gray-900 inline-flex items-center mb-6">
        <span class="mr-2">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAZ0lEQVR4nO2WMQqAQAwE5xMR/f9LrETRxit8jsdJbKwsNIK306UaWJYlIMR9GmABeoKlCdiBMUpqwOrSDWglfRLF+ypWTXsLs0uTjwW/F9sl6k7yCEyxo8J99PpMkeJTXhZuOC5RPRnBEDtxjsnsowAAAABJRU5ErkJggg==" alt="Kembali" class="h-4 w-4">
        </span>
        <b>Kembali</b>
    </a>

    <div class="mb-4 text-sm text-gray-600">
        {{ __('Masukkan email anda di sini untuk menerima link reset password') }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <x-primary-button>
                {{ __('Submit') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>