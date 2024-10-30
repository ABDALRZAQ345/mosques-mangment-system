<?php

namespace App\Providers;

use App\Models\Group;
use App\Models\Mosque;
use App\Observers\GroupObserver;
use App\Observers\MosqueObserver;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        $this->observers();

        Model::shouldBeStrict(! app()->environment('production'));
        ///
        Model::preventLazyLoading(! app()->environment('production'));
        RateLimiter::for('api', function (Request $request) {
            return Limit::perMinute(60)->by($request->user()?->id ?: $request->ip());
        });

    }

    public function observers(): void
    {
        Mosque::observe(MosqueObserver::class);
        Group::observe(GroupObserver::class);
    }
}