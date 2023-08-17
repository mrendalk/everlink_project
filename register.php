<?php require_once 'header.php' ?>

<div class="row">
    <div style="width: 930px;padding-left: 250px;">
        <section class="card">
            <header class="card-header">
                <h3 style="display: inline-block;margin-right: 25px;">Registration</h3>

                 <span style="font-weight: bold" style="color: green;">
                    <?php
                    session_start();
                    echo isset($_SESSION['txt']) ? $_SESSION['txt'] : '';
                    unset($_SESSION['txt']); // Clear the message after displaying
                    ?>
                </span>


            </header>
            <div style="padding-left: 100px;padding-right: 100px;width: 700px;">
                <form action="process_reg.php" method="post">
                    <div class="form-group row" style="padding-top: 10px;">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Full Name</label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="inputEmail3" placeholder="Full Name" name="user_name"">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Address</label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="inputEmail3" placeholder="Address" name="u_addres"">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">City</label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="inputEmail3" placeholder="City" name="u_city"">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">State</label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="inputEmail3" placeholder="State" name="u_state"">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Zip Code</label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="inputEmail3" placeholder="Zip Code" name="z_code"">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tel</label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="inputEmail3" placeholder="Tel" name="p_number"">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Email</label>
                        <div class="col-sm-9">
                            <input type="email" required class="form-control" id="inputEmail3" placeholder="Email" name="email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <input type="submit" class="btn btn-primary btn-block" name="user-btn" value="Register">
                        </div>
                    </div>
                </form>
            </div>
        </section>

    </div>
</div>
<?php
    \App\classes\Session::unsetSession("userExists");
?>
<?php require_once 'footer.php' ?>
