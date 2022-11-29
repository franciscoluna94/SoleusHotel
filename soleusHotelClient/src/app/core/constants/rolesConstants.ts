export class RolesConstants {

    public static readonly admin = 'Admin';
    public static readonly guest = 'Guest';
    public static readonly reception = 'Reception';
    public static readonly housekeeping = 'Housekeeping'
    public static readonly maintenance = 'Maintenance';
    public static readonly employees = [this.admin, this.reception, this.housekeeping, this.maintenance];
    public static readonly guestAndAdmin = [this.admin, this.guest]; 

}