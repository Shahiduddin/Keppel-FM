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


  

    @if ($sections->secs != null)
        @foreach (json_decode($sections->secs) as $sec)
            @include($activeTemplate.'sections.'.$sec)
        @endforeach
    @endif
@endsection


@push('style')
    <style>
        
        .custom-radio {
            position: relative;
            padding-left: 0;
        }

        .custom-radio input[type=radio] {
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            visibility: hidden;
            cursor: pointer;
        }

        .custom-radio input[type=radio]:checked~label::before {
            border-width: 2px;
            border-color: #e84545;
        }

        .custom-radio input[type=radio]:checked~label::after {
            opacity: 1;
        }

        .custom-radio label {
            margin-bottom: 0;
            position: relative;
            padding-left: 20px;
            font-size: 0.9375rem;
        }

        .custom-radio label::before {
            position: absolute;
            content: '';
            top: 6px;
            left: 0;
            width: 15px;
            height: 15px;
            border: 1px solid #888888;
            border-radius: 50%;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            -ms-border-radius: 50%;
            -o-border-radius: 50%;
            -webkit-transition: all 0.3s;
            -o-transition: all 0.3s;
            transition: all 0.3s;
        }

        .custom-radio label::after {
            position: absolute;
            content: '';
            top: 10px;
            left: 4px;
            width: 7px;
            height: 7px;
            background-color: #e84545;
            border-radius: 50%;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            -ms-border-radius: 50%;
            -o-border-radius: 50%;
            opacity: 0;
            -webkit-transition: all 0.3s;
            -o-transition: all 0.3s;
            transition: all 0.3s;
        }

        .custom-radio.style--two label::before {
            top: 5px;
        }

        .custom-radio.style--two label::after {
            top: 9px;
        }

    </style>
@endpush

@push('script')
    <script>
        'use strict'
        $('.poll-open-btn').on('click', function() {
            $('.poll-box').addClass('active');
        });
        $('.poll-close-btn').on('click', function() {
            $('.poll-box').removeClass('active');
        });

    </script>
@endpush
