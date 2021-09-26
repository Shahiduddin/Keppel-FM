 @php
     $event = getContent('event.content', true)->data_values;
     $archives = App\Models\Archive::where('url', '!=', null)
        ->orWhere('input_file','!=',null)
         ->latest()
         ->take(10)
         ->get();
 @endphp

 