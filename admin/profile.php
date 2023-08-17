<?php require_once 'header.php';
$page = explode('/',$_SERVER['PHP_SELF']);
$page = end($page);
?>
<?php
use App\classes\UserLogin;
$name = $_SESSION['username'];
$userData = UserLogin::loginUserData("$name");
?>

<div class="row">
    <aside class="profile-nav col-lg-3">
        <section class="card">
            <div class="user-heading round">
                <a href="">
                    <img src="../uploads/<?= $userData['image']?>" alt="">
                </a>
                <h1><?= $userData['fname'] . $userData['lname'] ?></h1>
                <p><?= $userData['email'] ?></p>
            </div>

            <ul class="nav nav-pills nav-stacked">
                <li class="active nav-item"><a class="nav-link" href="profile.php"> <i class="fa fa-user"></i>
                        Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="editprofile.php"> <i class="fa fa-edit"></i> Edit
                        profile</a></li>
            </ul>

        </section>
    </aside>
    <aside class="profile-info col-lg-9">
        <section class="card">
            <div class="bio-graph-heading">
                <?= $userData['bio'] ?>
            </div>
            <div class="card-body bio-graph-info">
                <h1>Bio Graph</h1>
                <div class="row">
                    <div class="bio-row">
                        <p><span>First Name </span>: <?= $userData['fname'] ?></p>
                    </div>
                    <div class="bio-row">
                        <p><span>Last Name </span>: <?= $userData['lname'] ?></p>
                    </div>
                    <div class="bio-row">
                        <p><span>Country </span>: ethio</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Join Date</span>: <?= $userData['date'] ?></p>
                    </div>
                    <div class="bio-row">
                        <p><span>Role </span>:
                            <?php
                            if($userData['role'] == 1){
                                echo 'Admin';
                            }else{
                                echo 'Editor';
                            }
                            ?>
                        </p>
                    </div>
                    <div class="bio-row">
                        <p><span>Email </span>: <?= $userData['email'] ?></p>
                    </div>
                    <div class="bio-row">
                        <p><span>Mobile </span>: +(251) 927703538</p>
                    </div>
                    <div class="bio-row">
                        <p><span>Username </span>: <?= $userData['username'] ?></p>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                </div>
            </div>
        </section>
    </aside>
</div>
<?php require_once 'footer.php'?>