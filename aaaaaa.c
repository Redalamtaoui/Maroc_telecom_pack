#include <SDL2/SDL.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
    if (SDL_Init(SDL_INIT_AUDIO) != 0) {
        printf("SDL_Init Error: %s\n", SDL_GetError());
        return 1;
    }

    SDL_AudioSpec wavSpec;
    Uint32 wavLength;
    Uint8* wavBuffer;
    if (SDL_LoadWAV("aa.wav", &wavSpec, &wavBuffer, &wavLength) == NULL) {
        printf("SDL_LoadWAV Error: %s\n", SDL_GetError());
        SDL_Quit();
        return 1;
    }

    SDL_AudioDeviceID deviceId = SDL_OpenAudioDevice(NULL, 0, &wavSpec, NULL, 0);
    if (deviceId == 0) {
        printf("SDL_OpenAudioDevice Error: %s\n", SDL_GetError());
        SDL_FreeWAV(wavBuffer);
        SDL_Quit();
        return 1;
    }
    while (1) {
        SDL_QueueAudio(deviceId, wavBuffer, wavLength);
        SDL_PauseAudioDevice(deviceId, 0);

        while (SDL_GetQueuedAudioSize(deviceId) > 0) {
            SDL_Delay(100); 
        }
	
	system("gnome-terminal --tab");
	system("open image.jpg");    
    }


    return 0;
}

