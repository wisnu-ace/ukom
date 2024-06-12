<x-guest-layout>

    <div class="flex lg:justify-center lg:col-start-2 mb-6 mt-4 ml-6">
        <div class="mt-4 pt-3 sm:pt-5 lg:pt-0">
            <h1 class="text-xl font-semibold text-black dark:text-black nowrap">Toko Alat Kesehatan</h1>
        </div>
    </div>

    <a href="{{ url('/') }}" class="text-sm  text-black dark:text-black hover:text-green-600 inline-flex items-center mb-6 ml-6">
        <span class="mr-2">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAZ0lEQVR4nO2WMQqAQAwE5xMR/f9LrETRxit8jsdJbKwsNIK306UaWJYlIMR9GmABeoKlCdiBMUpqwOrSDWglfRLF+ypWTXsLs0uTjwW/F9sl6k7yCEyxo8J99PpMkeJTXhZuOC5RPRnBEDtxjsnsowAAAABJRU5ErkJggg==">
        </span>
        <b>Kembali</b>
    </a>

    <div class="max-w-xl mx-auto items-start gap-4 rounded-lg bg-white p-6 shadow-[10px_14px_34px_0px_rgba(0,0,0,0.09)] dark:bg-zinc-700">
        <form method="POST" action="{{ route('register') }}">
            @csrf

            <!-- Name -->
            <div>
                <x-input-label for="name" :value="__('Name')" class="text-white" />
                <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
                <x-input-error :messages="$errors->get('name')" class="mt-2" />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-input-label for="password" :value="__('Password')" class="text-white" />

                <x-text-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />

                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>

            <!-- Confirm Password -->
            <div class="mt-4">
                <x-input-label for="password_confirmation" :value="__('Confirm Password')" class="text-white" />

                <x-text-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />

                <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
            </div>

            <!-- Email Address -->
            <div class="mt-4">
                <x-input-label for="email" :value="__('Email')" class="text-white" />
                <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <!-- Date of Birth -->
            <div class="mt-4">
                <x-input-label for="dob" :value="__('Date of Birth')" class="text-white" />
                <x-text-input id="dob" class="block mt-1 w-full" type="date" name="dob" :value="old('dob')" required autocomplete="dob" />
                <x-input-error :messages="$errors->get('dob')" class="mt-2" />
            </div>
            <fieldset class="mt-4">
                <x-input-label for="DeliveryStandard" :value="__('Gender')" class="text-white" />
                <div class="grid grid-cols-2 gap-2 mt-2">
                    <label for="male" class="block cursor-pointer rounded-lg border border-gray-100 bg-white p-4 text-sm font-medium shadow-sm hover:border-gray-200 has-[:checked]:border-green-500 has-[:checked]:ring-1 has-[:checked]:ring-green-500 has-[:checked]:font-bold">
                        Male
                        <input type="radio" name="gender" value="male" id="male" class="sr-only" />
                    </label>
                    <label for="female" class="block cursor-pointer rounded-lg border border-gray-100 bg-white p-4 text-sm font-medium shadow-sm hover:border-gray-200 has-[:checked]:border-green-500 has-[:checked]:ring-1 has-[:checked]:ring-green-500 has-[:checked]:font-bold">
                        Female
                        <input type="radio" name="gender" value="female" id="female" class="sr-only" />
                    </label>
                </div>
            </fieldset>

            <!-- Address -->
            <div class="mt-4">
                <x-input-label for="address" :value="__('Address')" class="text-white" />
                <x-text-input id="address" class="block mt-1 w-full" type="text" name="address" :value="old('address')" required autocomplete="address" />
                <x-input-error :messages="$errors->get('address')" class="mt-2" />
            </div>

            <!-- City -->
            <div class="mt-4">
                <x-input-label for="city" :value="__('City')" class="text-white" />
                <x-text-input id="city" class="block mt-1 w-full" type="text" name="city" :value="old('city')" required autocomplete="city" />
                <x-input-error :messages="$errors->get('city')" class="mt-2" />
            </div>

            <!-- Phone -->
            <div class="mt-4">
                <x-input-label for="phone" :value="__('Phone Number')" class="text-white" />
                <x-text-input id="phone" class="block mt-1 w-full" type="text" name="phone" :value="old('phone')" required autocomplete="phone" />
                <x-input-error :messages="$errors->get('phone')" class="mt-2" />
            </div>

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-white hover:text-green-600 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-primary-button class="ms-4">
                    {{ __('Register') }}
                </x-primary-button>
            </div>
        </form>
    </div>
</x-guest-layout>