
function jumpscare(videoFile){
    document.body.style.display = 'block';
    let videoElement = document.getElementById('jumpscareVideo')
    videoElement.src = '../assets/'+videoFile;
    videoElement.onended = function() {
        videoElement.src = '';
        document.body.style.display = 'none';

    }
    videoElement.volume = 1;
    videoElement.play();
}


window.addEventListener('message', (event) => {
    if (event.data.type === 'doJumpscare') {
        jumpscare(event.data.videoFile);
    }
});