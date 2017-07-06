<form role="form" action="{{route("nieuweReservatieRestKlant")}}" method="post" style="margin: 20px;">
            <div class="row centered-form" id="FrmReservatie1">
                <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="text-align: center;">
                            <h3 class="panel-title"  >Remise 56</h3>
                        </div>
                        <div class="panel-body">


                            <div class="form-group">
                                <label for="sel1">Kies een datum:</label>
                                <div id="datepicker-container">

                                    <div id="datepicker-center">

                                        <div id="datepicker"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div id="FrmReservatieGroepUur">
                                    <label for="sel1">Kies een uur:</label>
                                    <select id="FrmReservatieUur" class="form-control" id="sel1" style=" text-align-last:center;" name="frmReservatieRestTijd" required>
                                        <option style=" text-align-last:center;">11.00</option>
                                        <option>11.30</option>
                                        <option>12.00</option>
                                        <option>12.30</option>
                                        <option>13.00</option>
                                        <option>13.30</option>
                                        <option>14.00</option>
                                        <option>14.30</option>
                                        <option>15.00</option>
                                        <option>15.30</option>
                                        <option>16.00</option>
                                        <option>16.30</option>
                                        <option>17.00</option>
                                        <option>17.30</option>
                                        <option>18.00</option>
                                        <option>18.30</option>
                                        <option>19.00</option>
                                        <option>19.30</option>
                                        <option>20.00</option>
                                        <option>20.30</option>
                                        <option>21.00</option>

                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div id="FrmReservatieGroepPersonen">
                                    <label  for="sel1">Selecteer het aantal personen:</label>
                                    <select id="FrmReservatiePersonen" class="form-control" id="sel1" style=" text-align-last:center;" name="frmReservatieRestPersonen" required>
                                        <option style=" text-align-last:center;">1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                    </select>
                                </div>
                            </div>


                            <input type="hidden" id="datepickerhelper" name="frmReservatieRestDatum"/>

                            <input type="button" value="Volgende" class="btn btn-info btn-block" id="FrmReservatieVolgende">


                        </div>
                    </div>
                </div>
            </div>


            <div class="row centered-form" id="FrmReservatie2">
                <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"> <label id="datum"></label> | <label id="uur"></label>u | <label id="personen"> </label> personen</h3>
                        </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="frmReservatieRestVoornaam" id="first_name" class="form-control input-sm" placeholder="Voornaam" required>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="frmReservatieRestAchternaam" id="last_name" class="form-control input-sm" placeholder="Achternaam" required>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <input type="email" name="frmReservatieRestEmail" id="email" class="form-control input-sm" placeholder="Email-adres" required>
                            </div>

                            <div class="form-group">
                                <input type="text" name="frmReservatieRestTel" id="email" class="form-control input-sm" placeholder="Telefoonnummer" required pattern="[0-9]{10}">
                            </div>

                            <div class="form-group">
                                <textarea class="form-control" name="frmReservatieRestNota" rows="2" placeholder="Speciale wensen, Allergieën, ..." cols="20"></textarea>
                            </div>

                            <div class="form-group">
                                <div class="g-recaptcha" data-callback='doSomething' data-sitekey="6LcCPw0UAAAAAHQfMdBYAB8soWxYUGS2sQ6sPTgV" ></div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <input type="button" value="Vorige" class="btn btn-info btn-block" id="FrmReservatieVorige" name="frmReservatieRestVoornaam">
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <input type="submit" value="Reserveren" class="btn btn-info btn-block" name="frmReservatieRestSubmit" id="FrmReservatieSubmit"  />
                                </div>
                            </div>

                            <!-- Beveiliging als iemand uw session key heeft-->
                            <input type="hidden" name="_token" value="{{Session::token()}}">



                        </div>
                    </div>
                </div>
            </div>
        </form>
