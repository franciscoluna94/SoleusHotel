import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class DurationService {
  formatDurationTicks(ticks: number): string {
    if (ticks === 0) {
      return '';
    }

    const ticksPerMillisecond = 10000; // 1 tick = 100 nanosegundos
    const ticksValue = ticks; // Reemplaza con tu valor en ticks

    // Convertir ticks a milisegundos
    const seg = ticksValue / ticksPerMillisecond;

    // Crear un objeto Date usando los milisegundos
    const date = new Date(seg);

    const hours = ('0' + date.getUTCHours()).slice(-2);
    const minutes = ('0' + date.getUTCMinutes()).slice(-2);
    const seconds = ('0' + date.getUTCSeconds()).slice(-2);

    return `${hours}:${minutes}:${seconds}`;
  }

  formatDurationMilliseconds(milliseconds: number) {
    if (milliseconds === 0) {
      return '';
    }
    const seconds = Math.floor(milliseconds / 1000);
    const hours = Math.floor(seconds / 3600);
    const minutes = Math.floor((seconds % 3600) / 60);
    const remainingSeconds = seconds % 60;

    return `${hours.toString().padStart(2, '0')}:${minutes
      .toString()
      .padStart(2, '0')}:${remainingSeconds.toString().padStart(2, '0')}`;
  }
}
