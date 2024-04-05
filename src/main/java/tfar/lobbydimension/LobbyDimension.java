package tfar.lobbydimension;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.context.CommandContext;
import com.mojang.brigadier.exceptions.CommandSyntaxException;
import net.minecraft.block.PortalInfo;
import net.minecraft.command.CommandSource;
import net.minecraft.command.Commands;
import net.minecraft.entity.Entity;
import net.minecraft.entity.player.ServerPlayerEntity;
import net.minecraft.server.MinecraftServer;
import net.minecraft.util.RegistryKey;
import net.minecraft.util.ResourceLocation;
import net.minecraft.util.registry.Registry;
import net.minecraft.world.World;
import net.minecraft.world.server.ServerWorld;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.common.util.ITeleporter;
import net.minecraftforge.event.RegisterCommandsEvent;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.annotation.Nullable;
import java.util.function.Function;

// The value here should match an entry in the META-INF/mods.toml file
@Mod(LobbyDimension.MODID)
public class LobbyDimension {
    // Directly reference a log4j logger.

    public static final String MODID = "lobbydimension";

    private static final Logger LOGGER = LogManager.getLogger();

    public LobbyDimension() {
        IEventBus bus = FMLJavaModLoadingContext.get().getModEventBus();
        // Register the setup method for modloading
        bus.addListener(this::setup);
        MinecraftForge.EVENT_BUS.addListener(this::commands);
    }

    private void commands(RegisterCommandsEvent event) {
        CommandDispatcher<CommandSource> dispatcher = event.getDispatcher();

        dispatcher.register(Commands.literal("lobby").executes(
                LobbyDimension::teleportTolobby)
        );
    }

    public static final RegistryKey<World> LOBBY = RegistryKey.create(Registry.DIMENSION_REGISTRY, new ResourceLocation("custom/the_void"));


    private static int teleportTolobby(CommandContext<CommandSource> context) throws CommandSyntaxException {
        CommandSource commandSource = context.getSource();
        ServerPlayerEntity serverPlayer = commandSource.getPlayerOrException();
        MinecraftServer server = commandSource.getServer();
        ServerWorld serverWorld = server.getLevel(LOBBY);
        serverPlayer.changeDimension(serverWorld, new ITeleporter() {});
        serverPlayer.setPos(0,64,0);
        return 1;
    }

    private void setup(final FMLCommonSetupEvent event) {
    }
}
