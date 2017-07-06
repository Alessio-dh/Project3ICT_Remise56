@foreach($aGegevens['gallerijen'] as $aGallerij)
<div class="row">
    <h2>{{$aGallerij->name}}</h2>
    @foreach($aGegevens['images'] as $Image)
        @if($Image->gallery_id == $aGallerij->id)

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" data-lightbox={{$aGallerij->id}} href="../{{$Image->file_path}}">
                    <img src="../{{$Image->file_path}}" alt="Afbeelding is niet gevonden op onze site"/>
                </a>
            </div>
        @endif
    @endforeach
</div>
@endForeach

<script src="{{url('js/lightbox-plus-jquery.js')}}"></script>