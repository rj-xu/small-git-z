const std = @import("std");
const small_git_z = @import("small_git_z");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    if (args.len != 2) {
        std.log.err("Usage: small_git_z cmd", .{});
        return;
    }
    const cmd = args[1];
    if (std.mem.eql(u8, cmd, "help")) {
        std.debug.print("help", .{});
    } else {
        std.log.err("Unknown command: {s}", .{cmd});
    }
}
