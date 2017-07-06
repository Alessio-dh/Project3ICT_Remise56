<?php $i=1 ?>
@foreach($aGegevens as $bierItem)
@if(array_key_exists('Bier'.$i.'Foto',$aGegevens))
<div>
    <div class="container" style="padding-top: 40px;">
        <div class="row fh5co-heading row-padded text-center">
            <div class="col-md-6">
                {!! $aGegevens['Bier'.$i.'Foto'] !!}
            </div>
            <div class="col-md-6">
                {!! $aGegevens['Bier'.$i.'Titel'] !!}
                {!! $aGegevens['Bier'.$i.'Omschrijving'] !!}
            </div>
        </div>
    </div>
</div>
@endif
<?php $i++ ?>
@endforeach