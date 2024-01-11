<!DOCTYPE html>
<html lang="en">
<?php require_once(__DIR__."/../incFiles/website/head.php"); ?>
<body>


    <!-- MAIN -->
    <section class="flex items-center relative">

        <!-- Aside Bar -->
        <?php require_once(__DIR__ . "/../incFiles/admin/sidBar.php"); ?>

        <!-- Dashboard -->
        <div class="w-[70vh] md:w-[80vw] h-[100vh] bg-gray-200 py-[50px] px-8" >
            
            <!-- Page Head -->
            <div>
                <h1 class="text-md md:text-xl lg:text-3xl font-[800] mb-12">ADMIN / Users</h1>
            </div>

            <!-- Page COntent -->
            <div class="mt-8 bg-gray-200">     

                <table class="w-full py-2 px-2 rounded display" id="Table" >
                    <thead class="bg-[#28427B] text-white ">
                        <tr>
                            <td class="py-4 px-2" >Picture</td>
                            <td class="py-4 px-2">firstName</td>
                            <td class="py-4 px-2">LastName</td>
                            <td class="py-4 px-2">Email</td>
                            <td class="py-4 px-2">Member SInce</td>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                            foreach($data['UsersData'] as $User) {

                                echo "<tr class='border-2 border-[#28427B]'>";
                                echo "<td>";
                                echo "<img  src='". UrlRoot."/public/img/icons/article.png" . $User['picture'] ."' >";
                                echo "</td>";
                                echo "<td class='py-2 px-2 border-2 border-[#28427B]'>". $User['firstName'] ."</td>";
                                echo "<td class='py-2 px-2 border-2 border-[#28427B]'>". $User['lastName'] ."</td>";
                                echo "<td class='py-2 px-2 border-2 border-[#28427B]'>". $User['email'] ."</td>";
                                echo "<td class='py-2 px-2 border-2 border-[#28427B]'>". $User['addDate'] ." </td>";
                                echo "</tr>";

                                
                            }
                        ?>

                    </tbody>
                </table>

            </div>
        </div>
            
    </section>


    <!-- Data table -->
    <?php require_once(__DIR__ . "/../incFiles/admin/dataTable.php"); ?>

</body>
</html>