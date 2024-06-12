<x-guest-layout>

    <div class="flex lg:justify-center lg:col-start-2 mb-6 mt-4 ml-6">
        <div class="mt-4 pt-3 sm:pt-5 lg:pt-0">
            <h1 class="text-xl font-semibold text-black dark:text-black nowrap">Toko Alat Kesehatan</h1>
        </div>
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <a href="{{ url('/') }}" class="text-sm  text-black dark:text-black hover:text-green-600 inline-flex items-center mb-6 ml-6">
        <span class="mr-2">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAZ0lEQVR4nO2WMQqAQAwE5xMR/f9LrETRxit8jsdJbKwsNIK306UaWJYlIMR9GmABeoKlCdiBMUpqwOrSDWglfRLF+ypWTXsLs0uTjwW/F9sl6k7yCEyxo8J99PpMkeJTXhZuOC5RPRnBEDtxjsnsowAAAABJRU5ErkJggg==">
        </span>
        <b>Kembali</b>
    </a>

    <div class="max-w-xl mx-auto items-start gap-4 rounded-lg bg-white p-6 shadow-[10px_14px_34px_0px_rgba(0,0,0,0.09)] dark:bg-zinc-700">
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <!-- Email Address -->
            <div>
                <x-input-label for="email" :value="__('Email')" class="text-white" />
                <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-input-label for="password" :value="__('Password')" class="text-white" />

                <x-text-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />

                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>

            <!-- Remember Me -->
            <div class="block mt-4">
                <label for="remember_me" class="inline-flex items-center">
                    <input id="remember_me" type="checkbox" class="rounded border-gray-300 text-green-600 shadow-sm focus:ring-green-500" name="remember">
                    <span class="ms-2 text-sm text-white">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                <a class="underline text-sm text-white hover:text-green-600 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('password.request') }}">
                    {{ __('Forgot your password?') }}
                </a>
                @endif

                <x-primary-button class="ms-3">
                    {{ __('Log in') }}
                </x-primary-button>
            </div>
        </form>
    </div>
</x-guest-layout>