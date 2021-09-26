@extends($activeTemplate.'layouts.frontend')

@section('content')
    @php
    $bread = getContent('breadcrumb.content', true);
    $event = getContent('event.content', true)->data_values;
    $schedule = getContent('schedule.content', true)->data_values;
    $events = App\Models\Event::where('week_name',now()->format('l'))->get();
    @endphp

    <!-- inner hero section start -->
    <section class="inner-hero bg_img"
        style="background-image: url({{ sectionImage('breadcrumb', $bread->data_values->background_image) }}) ;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <h2 class="page-title text-center">{{ __($page_title) }}</h2>
                    <ul class="page-breadcrumb justify-content-center">
                        <li><a href="{{ route('home') }}">@lang('Home')</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- inner hero section end -->

    <!-- event section start -->
    {{-- <section class="pt-100 pb-100 bg_img overlay--one"
        style="background-image: url({{ sectionImage('event', $event->background_image) }});">
        <div class="container">
            <div class="row mb-5 justify-content-end">
                <div class="col-lg-6">
                    <form class="date-select-form" action="{{route('event.search')}}" method="GET">
                        <input type="text" id="datepicker" name="search" class="form--control" placeholder="@lang('Select Date')"
                            autocomplete="off">
                        <button type="submit" class="date-select-btn"><i class="las la-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="row gy-4">
                @forelse ($events as $event)
                    <div class="col-lg-4 col-md-6">
                        <div class="event-card-two">
                            <div class="thumb">
                                <img src="{{ getImage('assets/images/program/' . $event->image) }}" alt="@lang('image')">
                            </div>

                            <div onclick="play(this.getAttribute('data-audio'),this,this.getAttribute('id'))" class="event_audio style--two" data-audio="
                            @if($event->url != null)
                               @php
                                     echo $event->url;
                               @endphp
                           @else
                               @php
                                    echo asset(imagePath()['event_audio']['path'].'/'.$event->input_file);
                               @endphp
                           @endif
                            " id="audio-{{$loop->iteration}}">
                                <div class="event_controls">
                                    <div class="event_container">
                                        <div class="play event_play"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="content">
                                <h6 class="event-date">{{ $event->created_at->format('Y-m-d') }}
                                </h6>
                                <span
                                    class="event-time mb-3">{{ \Carbon\Carbon::parse($event->start_time)->format('H:i a') . __(' TO ') . \Carbon\Carbon::parse($event->end_time)->format('H:i a') }}</span>

                                <h3 class="event-name">{{ __($event->event_name) }}</h3>

                            </div>

                        </div><!-- event-card-two end -->
                    </div>
                @empty
                <div class="card card-body">
                    <p class="text-center">@lang('No Data Found')</p>
                </div>
                @endforelse


                {{ $events->links('admin.partials.paginate') }}

            </div>
        </div>
    </section> --}}
    <!-- event section end -->

    <section class="pt-100 pb-100 bg_img overlay--one"
     style="background-image: url({{ sectionImage('schedule', $schedule->background_image) }});">
     <div class="container">
         <div class="row justify-content-center">
             <div class="col-lg-6">
                 <div class="section-header text-center">
                     <h2 class="section-title text-uppercase">{{ __($schedule->title) }}</h2>
                     <div class="equalizer">
                         <span class="equalizer-item equalizer-1"></span>
                         <span class="equalizer-item equalizer-2"></span>
                         <span class="equalizer-item equalizer-3"></span>
                         <span class="equalizer-item equalizer-4"></span>
                         <span class="equalizer-item equalizer-5"></span>
                         <span class="equalizer-item equalizer-6"></span>
                     </div>
                 </div>
             </div>
         </div><!-- row end -->
         <div class="row">
             <div class="col-lg-12">
                 <ul class="nav nav-tabs custom--tab mb-5 justify-content-center" id="scheduleTab" role="tablist">
                     <li class="nav-item" role="presentation">
                         <button class="nav-link active day" id="day-1-tab" data-bs-toggle="tab" data-bs-target="#day-1"
                             type="button" role="tab" aria-controls="day-1" aria-selected="true"
                             data-value="{{ now()->format('l') }}" data-tab="1">{{ __(now()->format('l')) }}</button>
                     </li>
                     <li class="nav-item" role="presentation">
                         <button class="nav-link day" id="day-2-tab" data-bs-toggle="tab" data-bs-target="#day-2"
                             type="button" role="tab" aria-controls="day-2" aria-selected="false"
                             data-value="{{ now()->addDay(1)->format('l') }}"
                             data-tab="2">{{ __(now()->addDay(1)->format('l')) }}</button>
                     </li>
                     <li class="nav-item" role="presentation">
                         <button class="nav-link day" id="day-3-tab" data-bs-toggle="tab" data-bs-target="#day-3"
                             type="button" role="tab" aria-controls="day-3" aria-selected="false"
                             data-value="{{ now()->addDays(2)->format('l') }}"
                             data-tab="3">{{ __(now()->addDays(2)->format('l')) }}</button>
                     </li>

                     <li class="nav-item" role="presentation">
                         <button class="nav-link day" id="day-4-tab" data-bs-toggle="tab" data-bs-target="#day-4"
                             type="button" role="tab" aria-controls="day-4" aria-selected="false"
                             data-value="{{ now()->addDays(3)->format('l') }}"
                             data-tab="4">{{ __(now()->addDays(3)->format('l')) }}</button>
                     </li>
                     <li class="nav-item" role="presentation">
                         <button class="nav-link day" id="day-5-tab" data-bs-toggle="tab" data-bs-target="#day-5"
                             type="button" role="tab" aria-controls="day-5" aria-selected="false"
                             data-value="{{ now()->addDays(4)->format('l') }}"
                             data-tab="5">{{ __(now()->addDays(4)->format('l')) }}</button>
                     </li>
                     <li class="nav-item" role="presentation">
                         <button class="nav-link day" id="day-6-tab" data-bs-toggle="tab" data-bs-target="#day-6"
                             type="button" role="tab" aria-controls="day-6" aria-selected="false"
                             data-value="{{ now()->addDays(5)->format('l') }}"
                             data-tab="6">{{ __(now()->addDays(5)->format('l')) }}</button>
                     </li>
                     <li class="nav-item" role="presentation">
                         <button class="nav-link day" id="day-7-tab" data-bs-toggle="tab" data-bs-target="#day-7"
                             type="button" role="tab" aria-controls="day-7" aria-selected="false"
                             data-value="{{ now()->addDays(6)->format('l') }}"
                             data-tab="7">{{ __(now()->addDays(6)->format('l')) }}</button>
                     </li>
                 </ul>

                 <div class="tab-content" id="scheduleTabContent">

                     <div class="tab-pane fade show active" id="day-1" role="tabpanel" aria-labelledby="day-1-tab">
                         <div class="row gy-4">
                             @foreach ($events as $event)
                                 <div class="col-lg-4 col-md-6">
                                     <div class="schedule-card">
                                         <div class="schedule-card__thumb">
                                             <img src="{{ getImage('assets/images/program/' . $event->image, '600x600') }}"
                                                 alt="@lang('image')">
                                             
                                             <div class="overlay-content">
                                                 <h3 class="schedule-name">{{ __($event->event_name) }}</h3>
                                                 <p class="time">
                                                     
                                                     {{ \Carbon\Carbon::parse($event->start_time)->format('H:i a') . __(' TO ') . \Carbon\Carbon::parse($event->end_time)->format('H:i a') }}
                                                 </p>
                                             </div>
                                             
                                         </div>
                                         <div class="rj">
                                             <div class="thumb">
                                                 <img src="{{ getImage('assets/images/rj_image/' . $event->jockey->image, '600x600') }}"
                                                     alt="@lang('image')">
                                             </div>
                                             <div class="content">
                                                 <h5 class="name">{{ __($event->jockey->fullname) }}</h5>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             @endforeach
                         </div>
                     </div>



                 </div>
             </div>
         </div>
     </div>
 </section>


@endsection
@push('style-lib')
     <link rel="stylesheet" href="{{ asset($activeTemplateTrue . 'css/lib/jquery-ui.css') }}">
@endpush
@push('style')


    <style>
        .event_audio {
            position: absolute;
            bottom: 50%;
            left: 50%;
            transform: translateX(-50%);
            z-index: 2;
        }

        .card{
            background: #cc2e94;
        }



.event_audio.style--two .event_container {
    width: 120px;
    height: 50px;
    background-color: #e84545;
    margin-top: 0;
    margin-right: 0;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    -ms-border-radius: 5px;
    -o-border-radius: 5px;
}

.event_container {
    width: 150px;
    height: 150px;
    background-color: transparent;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    margin-top: -30px;
    margin-right: -53px;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    position: relative;
    -webkit-transform: translateY(42px);
    -ms-transform: translateY(42px);
    transform: translateY(42px);
}

.event_audio.style--two .event_controls .event_play.play {
    border: 8px solid #0000;
    border-left: 15px solid white;
}


.event_audio .event_controls .event_play.play {
    cursor: pointer;
    position: relative;
    left: 10px;
    height: 0;
    width: 0;
    border: 12px solid #0000;
    border-left: 18px solid white;
}

.play-container .event_play {
    position: relative;
    z-index: 2;
}

.event_audio .event_controls {
    display: flex;
}
.event_controls {
    display: flex;
    align-items: flex-end;
}


.event_audio .event_controls .event_play.pause {
    height: 15px;
    width: 20px;
    cursor: pointer;
    position: relative;
    left: 5px;
    top: -3px;
}

.event_audio .event_controls .event_play.pause:before {
    position: absolute;
    top: 0;
    left: 0px;
    background: white;
    content: "";
    height: 20px;
    width: 3px;
}

.event_audio .event_controls .event_play.pause:after {
    position: absolute;
    top: 0;
    right: 8px;
    background: white;
    content: "";
    height: 20px;
    width: 3px;
}

.event_audio .event_controls .event_play.pause:hover {
    transform: scale(1.1);
}

    </style>
@endpush


@push('script')
    <script src="{{ asset($activeTemplateTrue . 'js/lib/jquery-ui.js') }}"></script>
    <script>
        'use strict'
        $(function() {
            $("#datepicker").datepicker();
        });



    </script>
@endpush


@push('script')
    <script>
        'use strict'
        var allId = [];
        var prev = '';
        var audioPlay = '';
        function play(audio, element,id){
            $('#'+allId[0]).find('.event_play').removeClass('pause').addClass('play');
            if(allId.includes(id)){
                audioPlay.pause();
                
                allId = [];
                return false;
            }else{
                if(allId.length >= 1){
                    prev.pause();
                    $('#'+id).find('.event_play').removeClass('pause').addClass('play');
                }
                audioPlay = new Audio(audio);
                audioPlay.play();
                prev = audioPlay;
                $('#'+id).find('.event_play').removeClass('play').addClass('pause');
            }
           
            allId[0] = id;
            
        }
        
         
    </script>
@endpush

@push('script')
<script>
        'use strict'
    $(function() {
        $('.day').on('click', function() {
            var dayOfWeek = $(this).data('value');
            var tab = $(this).data('tab');

            $.ajax({
                method: 'GET',
                url: "{{ route('event') }}",
                data: {
                    inputValue: dayOfWeek,
                    tab: tab
                },
                success: function(response) {
                    $('#scheduleTabContent').html(response)
                }
            })
        })
    })

</script>
@endpush