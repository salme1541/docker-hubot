
module.exports = function (robot) {

    robot.hear(/아아아아*/, function(msg){
        msg.send("http://jjalbang.today/jjur.jpg");
    });

    robot.hear(/빼꼼/, function(msg){
        msg.send("http://jjalbang.today/jj1XH.jpg");
    });

    robot.hear(/호우/, function(msg){
        msg.send("http://jjalbang.today/jj1nQ.gif");
    });
}
