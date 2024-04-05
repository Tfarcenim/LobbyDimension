package tfar.lobbydimension.mixin;

import com.mojang.authlib.GameProfile;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.entity.player.ServerPlayerEntity;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import tfar.lobbydimension.LobbyDimension;

@Mixin(ServerPlayerEntity.class)
public abstract class ServerPlayerMixin extends PlayerEntity {
    public ServerPlayerMixin(World pLevel, BlockPos pPos, float pYRot, GameProfile pGameProfile) {
        super(pLevel, pPos, pYRot, pGameProfile);
    }

    @Inject(method = "isPvpAllowed",at = @At("HEAD"),cancellable = true)
    private void preventPvP(CallbackInfoReturnable<Boolean> cir) {
        if (level.dimension() == LobbyDimension.LOBBY) {
            cir.setReturnValue(false);
        }
    }
}
