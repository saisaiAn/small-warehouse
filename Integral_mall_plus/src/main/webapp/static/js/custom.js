/*====================================
 Free To Use For Personal And Commercial Usage
Author: #
 License: Open source - MIT
 Please visit http://opensource.org/licenses/MIT for more Full Deatils of license.
 Share Us if You Like our work 
 Enjoy Our Codes For Free always.
======================================*/

(function ($) {

    var mainApp = {
        main_fun: function () {
            var count = new countUp("error-link", 0, 404, 0, 2); //CHANGE 404 TO THE ERROR VALUE AS YOU WANT
            window.onload = function () {
                        count.start();
            }
        },
        initialization: function () {
            mainApp.main_fun();
        }
    }
    // Initializing ///
    $(document).ready(function () {
        mainApp.main_fun();
    });

}(jQuery));
