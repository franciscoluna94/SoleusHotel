export class RoomRequestStatusConstants {
   
    public static readonly new = '0';
    public static readonly inProgress = '1';
    public static readonly paused = '2';
    public static readonly ended = '3'
    public static readonly deleted = '4';
    public static readonly own = [this.inProgress, this.paused, this.ended];
    public static readonly ownNotEnded = [this.inProgress, this.paused];
    public static readonly all = [this.new, this.inProgress, this.paused, this.ended, this.deleted];
}