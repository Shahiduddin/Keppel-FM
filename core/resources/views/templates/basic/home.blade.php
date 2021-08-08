@extends($activeTemplate.'layouts.frontend')
@section('content')
    @php
    $banners = getContent('banner.element');
    @endphp
    <!-- hero section start -->
    <section class="hero">
        <div class="hero-slider">
            @foreach ($banners as $item)
                <div class="single-slide bg_img"
                    style="background-image: url({{ sectionImage('banner', $item->data_values->background_image) }});">
                    <div class="container">
                        <div class="row {{ $loop->even ? 'justify-content-end' : '' }}">
                            <div class="col-lg-4 {{ $loop->even ? 'text-end' : '' }}">
                                <h2 class="hero__title" data-animation="fadeInUp" data-delay=".6s">
                                    {{ __($item->data_values->title) }}</h2>
                            </div>
                        </div>
                    </div>
                </div><!-- single-slide end -->
            @endforeach

        </div>
    </section>
    <!-- hero section end -->


 

  