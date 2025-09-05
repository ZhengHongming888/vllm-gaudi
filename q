[33mcommit 833285fc32817f5b367a78f1f2e52292c7adb374[m[33m ([m[1;36mHEAD -> [m[1;32mvllm_gaudi_nixl_ofi[m[33m, [m[1;31morigin/vllm_gaudi_nixl_ofi[m[33m)[m
Author: Hongming Zheng <hongming.zheng@intel.com>
Date:   Thu Sep 4 21:48:37 2025 +0000

    add nixl ofi

[33mcommit 9322571779d6d6114d15c6a8f5f42b29d09efab2[m
Author: Harish Subramony <hsubramony@habana.ai>
Date:   Sat Aug 30 02:39:40 2025 +0000

    enable nixl connector for hpu

[33mcommit a18e09b25306803c1b42028f48fbed8dbbaaa571[m
Author: Harish Subramony <hsubramony@habana.ai>
Date:   Tue Aug 26 13:10:08 2025 -0700

    nixl working baseline

[33mcommit d695fa81736933233e73b31f190e2cafec344855[m
Author: Michal Adamczyk <michal.adamczyk@intel.com>
Date:   Mon Aug 25 08:49:50 2025 +0200

    Port defragmentation support from vllm-fork PR #1568 (#94)
    
    Signed-off-by: Michal Adamczyk <michal.adamczyk@intel.com>

[33mcommit bfbad711f35401c7831a9c867e6a4ff9677ee069[m
Author: Marcin Swiniarski <marcin.swiniarski@intel.com>
Date:   Fri Aug 22 11:45:23 2025 +0200

    Fix upstream PR 22668 that added additional arg to is_kv_cache_dtype_supported (#96)
    
    Fixes https://github.com/vllm-project/vllm/pull/22668 - we need to take
    one more arg.
    
    Signed-off-by: Marcin Swiniarski <mswiniarski@habana.ai>

[33mcommit b8217f69b81fb8e8aff0188c8c0e33cca8fc55e1[m
Author: Thomas Atta-Fosu <thomas.atta-fosu@intel.com>
Date:   Thu Aug 21 16:54:12 2025 -0700

    Enable multimodal support + qwen2.5-vl (#92)
    
    - Enables v1 multmodal support
    - Enables qwen2.5-vl: Support for MRope
    
    ---------
    
    Signed-off-by: attafosu <thomas.atta-fosu@intel.com>

[33mcommit a21cbc61cc3e6891236c0caac832cdfbcbd86ca5[m
Author: Agata Dobrzyniewicz <160237065+adobrzyn@users.noreply.github.com>
Date:   Thu Aug 21 16:59:57 2025 +0200

    [Upstream fix] Fix after #23262 from upstream - Make new_block_ids None if empty (#93)
    
    Culprit commit: https://github.com/vllm-project/vllm/pull/23262
    
    ---------
    
    Signed-off-by: Agata Dobrzyniewicz <adobrzyniewicz@habana.ai>

[33mcommit 5ff54ed966ce1a4c834e1da1a88b705d48da82bc[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Aug 21 02:50:08 2025 -0500

    Fix jenkins - remove failed test and fix later / update API (#79)
    
    See jenkins is failing with all PRs, provide a quick fix here:
    
    1. remove failed test
        1. llama4 modeling is updated from upstream, failed on all CI
        2. Blockfp8 + Qwen3 show accuracy as zero, need to root cause
        3. llama4 vision is not enabled yet, skip CI
    2. update vllm engine_args
    1. upstream removed 'num_scheduler_steps' args -> update in
    .jenkins/lm-eval-harness/test_lm_eval_correctness.py accordingly
    2. upstream removed 'weights_load_device' args -> update in
    .jenkins/lm-eval-harness/test_lm_eval_correctness.py accordingly
    
    ---------
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit efdf1d7fc70dc293a04a9cff9a138fd6be5326b4[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Aug 20 13:00:36 2025 -0500

    remove enable_prompt_adapter in test to fix (#91)
    
    TypeError: EngineArgs.__init__() got an unexpected keyword argument
    'enable_prompt_adapter'
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 8400f8204a4265bf6cd58832935c47c9cd531454[m
Author: Agata Dobrzyniewicz <160237065+adobrzyn@users.noreply.github.com>
Date:   Wed Aug 20 12:06:55 2025 +0200

    Change warmup scenario for execute dummy scenario (#54)
    
    Change warmup scenario to execute dummy scenario. This way we more
    accurately simulate the real behaviour of vllm inference by executing
    the precise run that is happening in real inference but with dummy
    config that we want to warm-up during warm-up process. No need for some
    artificially create an inference scenario, as right now we are utilizing
    real execution flow
    
    ---------
    
    Signed-off-by: Agata Dobrzyniewicz <adobrzyniewicz@habana.ai>

[33mcommit 0492c5598089fe29314ceb2aeaa4ae1f67eebcb5[m
Author: Agata Dobrzyniewicz <160237065+adobrzyn@users.noreply.github.com>
Date:   Tue Aug 19 14:17:00 2025 +0200

    [Upstream fix] Fix after #23041 from upstream (#87)
    
    Culprit PR: https://github.com/vllm-project/vllm/pull/23041
    
    Signed-off-by: Agata Dobrzyniewicz <adobrzyniewicz@habana.ai>

[33mcommit 77c704f9657db1dcacbeb100ae7492e112103611[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Mon Aug 18 16:00:07 2025 -0500

    add commit-id to distinguish image and container for each PR (#85)
    
    Current CI does not distinguish PR during image build and container
    launch
    
    If multiple CI triggered, it will overwrite other PR's docker image.
    
    In this commit, I propose to use difference name for each PR
    docker/container.
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit ab65f9ba2abbaf4c30f8cdb24a62c731f8bbdf4c[m
Author: Kacper Pietkun <kpietkun@habana.ai>
Date:   Mon Aug 18 14:08:50 2025 +0200

    Add t.compile config (#62)
    
    Signed-off-by: Kacper Pietkun <kpietkun@habana.ai>

[33mcommit 39bce5d0437888619baefa4d3c384c66bc5da31e[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Sun Aug 17 15:30:20 2025 -0500

    Fix logitsProcessor change in input_batch introduced by upstream pr19912 (#84)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit a9accecb431b72f524fdfc2731e0457354731539[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Fri Aug 15 15:32:34 2025 -0500

    Fix crash caused by #20059 (#82)
    
    https://github.com/vllm-project/vllm/pull/20059, Will assume cudagraph
    is on
    => Solution: use this PR is diable
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 3e0c034b6a7fb2b8ceb99a6ece7fb2d56870c07f[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Aug 13 19:17:17 2025 -0500

    enable awq/gptq based on PR56 (#78)
    
    Origin PR is at https://github.com/vllm-project/vllm-gaudi/pull/56
    
    Signed-off-by: maktukmak <mehmet.aktukmak@intel.com>
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit f3a006835c783ef045836748c44086999354d507[m
Author: Tianmu Li <tianmu.li@intel.com>
Date:   Wed Aug 13 16:21:38 2025 -0700

    Enabled structured output (#68)
    
    1. Combine logits from decode and prompt
    2. Move logits to cpu
    3. Apply bitmask on cpu logits
    4. Move logits back to hpu
    All of these are only triggered when doing structured output
    
    ---------
    
    Signed-off-by: Tianmu Li <tianmu.li@intel.com>

[33mcommit 5c4e3a96c161ab75f684aa51ecb691748e4b82b5[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Aug 13 15:33:38 2025 -0500

    Fix crash caused by upstream update PR22570 (#77)
    
    Hourly check crashed due to upstream PR 22570
    
    https://github.com/vllm-project/vllm-gaudi/actions/runs/16943144469/job/48017289064
    
    Fixed in this PR
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 15b173a99dd0b1eacf7316b57f7720a0fd89e9de[m
Author: Yi Liu <yi4.liu@intel.com>
Date:   Wed Aug 13 09:15:13 2025 +0800

    Add INC dynamic quant test for deepseek-v2 (#67)
    
    Add INC dynamic quant test for deepseek-v2 + tp2
    
    ---------
    
    Signed-off-by: yiliu30 <yi4.liu@intel.com>

[33mcommit 988b326de380232b77cf9af12d46808b58a20014[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Tue Aug 12 19:57:51 2025 -0500

    Fix error introduced by upstream PR 22714 (#76)
    
    Upstream 007dd90859cc - Yongye Zhu, 2 hours ago : [gpt-oss] Enable
    gpt-oss on ampere (#22714) changed the
    current_platform.get_attn_backend_cls API, update in this PR
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 89e0fe748db466fb0dc75c90b982fb5b5a3fc64c[m
Author: Jacek Czaja <jacek.czaja@gmail.com>
Date:   Tue Aug 12 10:50:59 2025 +0200

    Adjusted vllm profiler to recent changes in vllm structures (#73)
    
    This PR is adjusting interface changes of vllm profiler to updated
    changes in RequestCachedData and NewRequestData from vllm project.
    
    Without this adjustment there was a crash when asking for
    profiling(VLLM_PROFILE_DECODE=124,1024 PT_HPU_LAZY_MODE=0
    ./run_benchmark_throughput.sh):
    <img width="1570" height="976" alt="image"
    src="https://github.com/user-attachments/assets/1a8c88fa-4c3c-4b7c-9093-d72e3dfbed00"
    />
    
    Dumped traces were inspected and they seem (with this fix) contain valid
    information
    
    Signed-off-by: Jacek Czaja <jacek.czaja@intel.com>

[33mcommit a97b3a654404fcaec069a9ce5314fd1c44a042b1[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Aug 7 21:08:03 2025 -0500

    Revert "Add INC dynamic quant test" (#66)
    
    Reverts vllm-project/vllm-gaudi#65

[33mcommit a386a6c135b0ea42ddf7b4038efe5d0ddc3184f4[m
Author: Yi Liu <yi4.liu@intel.com>
Date:   Fri Aug 8 09:34:14 2025 +0800

    Add INC dynamic quant test (#65)
    
    Add INC dynamic quant test for deepseek-v2.
    
    cc @hshen14 @thuang6
    
    Signed-off-by: yiliu30 <yi4.liu@intel.com>

[33mcommit 746cd72885f6a8084418ed0271b43f65044ffcc7[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Aug 7 16:11:21 2025 +0200

    Reduce CI acc tests to 250 GSM8K samples (#60)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit ee2156ae22315c009e69af1786c6e2a5cd88a21e[m[33m ([m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32mmain[m[33m)[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Aug 6 12:49:13 2025 -0500

    update CI docker image id (#63)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 9343f3513d8d7eadf35c192842c05857e52ae650[m
Author: Agata Dobrzyniewicz <160237065+adobrzyn@users.noreply.github.com>
Date:   Tue Aug 5 18:13:01 2025 +0200

    Port #301 and #313 from extension (#55)
    
    https://github.com/HabanaAI/vllm-hpu-extension/pull/301
    and
    https://github.com/HabanaAI/vllm-hpu-extension/pull/313
    
    Signed-off-by: Agata Dobrzyniewicz <adobrzyniewicz@habana.ai>

[33mcommit 079e659c5c44f236f5b0a28e49453309211fce7a[m
Author: Kacper Pietkun <kacper.pietkun00@gmail.com>
Date:   Tue Aug 5 09:17:39 2025 +0200

    Change PT_HPU_LAZY_MODE default value (#58)
    
    Signed-off-by: Kacper Pietkun <kpietkun@habana.ai>

[33mcommit 86a8acef15b5e733af4c2632a62cbc119eb86d44[m
Author: Agata Dobrzyniewicz <160237065+adobrzyn@users.noreply.github.com>
Date:   Wed Jul 30 11:06:20 2025 +0200

    Port: #282 from extension (#52)
    
    https://github.com/HabanaAI/vllm-hpu-extension/pull/282
    
    Signed-off-by: Agata Dobrzyniewicz <adobrzyniewicz@habana.ai>

[33mcommit b50b3b0ffaf61457c44c87252fe8b30a87efad97[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Tue Jul 29 13:21:22 2025 +0200

    Enable high level profiler (#49)
    
    Ripped from https://github.com/HabanaAI/vllm-fork/pull/1501
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit c9c266ef6dbb48853051a80083fa713464909e5c[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Mon Jul 28 14:06:34 2025 +0200

    [CI] Report 10 longest unit tests above 1s (#47)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 3222c738ff6c32411f7dea04467cfbe209490cd1[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Mon Jul 28 12:13:27 2025 +0200

     Add HPU model runner & HPU input batch unit tests (#44)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit dfcbfb7d57d37952faa4dfac82bb885f3c4f7926[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Mon Jul 28 11:13:11 2025 +0200

    Add CODEOWNERS (#45)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 7c75f506a889d7407abf68094e1a36a98b3937a9[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Fri Jul 25 15:31:28 2025 +0200

    Fix API mismatch after PR 21585 (#43)
    
    Mirroring changes from https://github.com/vllm-project/vllm/pull/21585
    to HPU code
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 0cc8bb6e2635aec21d4501359738e520dc4df32d[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Jul 23 23:29:42 2025 -0500

    [CI] update lm_eval with lastet version for vllm args update (#42)
    
    Bring back lm_eval CI by
    1. use lm_eval latest version because of vllm API update -
    https://github.com/EleutherAI/lm-evaluation-harness/pull/3176
    2. update test_common.py to work with latest lm_eval
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit f1d3f04c63b7693a72ed0bd8bdced2a6e06d16bc[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Jul 23 22:11:43 2025 -0500

    [FIX_DUE_UPSTREAM]fix for upstream PR20588 (#41)
    
    https://github.com/vllm-project/vllm/pull/20588
    
    ---------
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 55cb5aab7d006c8ffbaea8e3de4b5580d1044345[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Tue Jul 22 12:59:29 2025 +0200

    Restore support for kv_cache_dtype  (#40)
    
    https://github.com/vllm-project/vllm/pull/21302 got merged, we can
    re-enable kv_cache_dtype now.
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit c8948623dddfaf74c9596d86abd64827443a9bfe[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Mon Jul 21 18:31:32 2025 +0200

    [CI] Don't fetch PyTorch for building vLLM upstream (#39)
    
    This PR shortens the CI execution time significantly by using
    preinstalled PyTorch during vLLM build.
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit fcbe490d84efa313f74b4d927e4d50d400697135[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Mon Jul 21 17:40:12 2025 +0200

    Fix attention API post blocksparse deprecation (#38)
    
    Upstream PR https://github.com/vllm-project/vllm/pull/21217 changed
    attention APIs. This PR adjusts our attention implementation to the new
    API.
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 6952fef73fbbdbccd8681de87d913d03fe600307[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 17 16:35:08 2025 -0500

    [CI]v0 hpu deprecated, update CI scripts (#37)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit eafe5b55ceee72fc9a77b3b2e3b81c5d99ee27d7[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 17 15:27:30 2025 +0200

    Add Getting Started section to README (#36)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit d1c028364e8114deba2a1f5358d925c439050490[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 17 10:58:03 2025 +0200

    Fix bs=2 prefill bucketing weirdness  (#35)
    
    ripped from: https://github.com/HabanaAI/vllm-fork/pull/1606, fixes
    weird bucketing anomaly where bs=1 prefills would be padded to bs=2 and
    trigger a recompilation
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit acac4cf0d0796b3f4bc3f7b578f2c33b49cf3859[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Wed Jul 16 17:22:00 2025 -0500

    [CI]update CI version to 1.22-526 and add INC unit_scale test in (#33)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 719ccc4cc7ecd4f769092bdf4432aca5ebe96253[m
Author: Uri Livne <ulivne@habana.ai>
Date:   Wed Jul 16 21:57:25 2025 +0300

    Add fp8 tests and protect from invalid quant config (#28)
    
    Signed-off-by: Uri Livne <ulivne@habana.ai>
    Co-authored-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 219c1ab7c9d11a005398d6095f87d2ddb353db10[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Wed Jul 16 17:36:02 2025 +0200

    Fix warmup num_blocks (#31)
    
    Ripped from https://github.com/HabanaAI/vllm-fork/pull/1594/
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit d1d9bbce2ff3c5d9d055792a669f7bfe1ff998de[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Wed Jul 16 14:55:57 2025 +0200

    Fix non-prefix prefill warmup (#30)
    
    This PR fixes warmup of zero-context prefills (ripped from
    https://github.com/HabanaAI/vllm-hpu-extension/pull/293)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 664c4605e351769daadc7cdbf464e9865bdc8fd9[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Wed Jul 16 14:31:06 2025 +0200

    Use vllm_gaudi.extension logger (#29)
    
    Using default vLLM logger results in logging messages being suppressed
    by default. This PR switches to vllm_gaudi.extension.logger, which wraps
    vLLM logger if available (without suppressing messages), or uses
    non-vLLM logger.
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 8ba1c8fdbc5f5a3900e511f448d5cf2672081943[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Mon Jul 14 17:06:41 2025 +0200

    Fix bind_kv_cache import moved in #20900 (#26)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 8d635af7b245af33b3cff0052d47e71e350cd446[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Sat Jul 12 12:53:31 2025 -0500

    Fix enable_eplb missing arguments and add fp8 llama4 and qwen3 to CI (#25)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 0613e6f87e3e21626f8898baf8df2fc766f4d699[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Fri Jul 11 15:55:41 2025 -0500

    split hourly and pre-merge ci (#24)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit ba07bf1fece173ecdf474906ec7cbc63e50b3443[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Fri Jul 11 15:27:58 2025 -0500

    Add gsm8k test to full_tests (#23)
    
    1. granite8b -> used to check HPUattn + MLP
    2. deepseek-v2-lite -> used to check MLA + MOE
    3. qwen3-MOE -> used to check HPUattn + MOE + ExpertParallel
    
    ---------
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 256e53bd40117ad61688fd67f41bb34bbb5a636d[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Fri Jul 11 19:14:08 2025 +0200

    Port code from latest habana_main (10 July) (#10)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>
    Co-authored-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 980934d9fce09cff6ca8a9124b19a24dabd500ce[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Fri Jul 11 16:13:19 2025 +0200

    [CI] Add models-medium stage (#21)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 650ce373e00145932aa966c6e160943467f251ce[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Fri Jul 11 13:11:56 2025 +0200

    Refactor vllm_hpu -> vllm_gaudi (#2)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit ee7d75edf4b2e56d541e7bd5f7db4a26fd856c9f[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Fri Jul 11 13:07:37 2025 +0200

    Cancel stale pre-commit GHA jobs (#20)

[33mcommit 9882506cb2aa349f19ed3507c9e6c13b5d040c42[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Fri Jul 11 11:55:04 2025 +0200

    Add pre-commit GHA (#1)
    
    This PR enables common pre-commit checks (ruff, yapf, mypy) and ensures
    that these checks pass.
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 54b24852e60f3e37e97c8294a49de9416db8d460[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 10 23:47:11 2025 -0500

    move hf_cache from _work to /mnt (#19)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 2233bf9c806f32b587ed018d298cf8b4be5d4db6[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 10 23:35:15 2025 -0500

    update pre-merge script to use current workspace (#18)
    
    current script is not installing from wip vllm-gaudi code space. => Fix
    that
    Also rename the docker name to avoid conflict
    
    ---------
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 6f8619dc0ee5f86bbb6e6d34ee86870ec1396212[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 10 21:14:29 2025 -0500

    Fix deepseek v2 failing + update CI with early exit when running into failing (#17)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit 5032b7b42bfe9d1fc522b22f802a93f5a4a37f0d[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 10 19:46:12 2025 +0200

    Auto-cancel stale GHA pre-merge jobs (#16)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 1e79b15027735fcecdf285df61926a766e5de288[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 10 17:44:21 2025 +0200

    Add Llama3.1-405B jenkins config (#15)
    
    requires https://github.com/vllm-project/vllm-gaudi/pull/14
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 9b24a6fa4349cba49e56360732dae79d81e945c2[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 10 17:43:16 2025 +0200

    Add synchronized weight loader hack for Llama 405B OOMs (#14)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit ee1b61747dc1633892f6d35d645b88c765279d79[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 10 16:18:06 2025 +0200

    Add test config for jenkins CI (#11)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit ea29f05dcea2c940d7c776e5e2b3febbaeda22d6[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 10 15:27:48 2025 +0200

    Untrack and ignore setuptools_scm-generated _version.py (#13)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 8e89441e299fd8371b5ba5bd61e8ba2d057030d6[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Thu Jul 10 15:22:00 2025 +0200

    Uniproc executor segfault workaround (#12)
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 4691f5bcfbbd0972c0f85907fbe462e8f451f94b[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Wed Jul 9 12:24:19 2025 +0200

    Add HPU CI tests (#9)
    
    * Add HPU CI tests
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>
    
    * oopsie wrong definition
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>
    
    ---------
    
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>

[33mcommit 83f99c54ceb02e566a5989baadfb4c222b99be85[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 3 21:11:22 2025 -0500

    [CI] update CI script (#8)
    
    * update CI script
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>
    
    * clean up
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>
    
    ---------
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>

[33mcommit a4646becd590994bbbf60346f51b3e75e55938b2[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 3 17:30:08 2025 -0500

    Add hourly CI (#7)
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>

[33mcommit 1755fdb4fc7a414f5cc40799527bf116083d06cd[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 3 14:50:23 2025 -0500

    Fix failing due to  (#16728) (#5)
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>

[33mcommit f75ff7b9fceb99f91ebbd3d522ff9fd4fb4b876f[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 3 13:57:57 2025 -0500

    Fix CI fail hang (#6)
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>

[33mcommit 35d46d0e8e1cb42bf62f0c4d204978abec83bbba[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Thu Jul 3 11:59:49 2025 -0500

    Fix hpu_model_runner based on (#20291) (#4)
    
    Signed-off-by: Chendi Xue <chendi.xue@intel.com>

[33mcommit d031d03b6e7c8a1c0335d902e4c86b98cd2da650[m
Author: Chendi.Xue <chendi.xue@intel.com>
Date:   Mon Jun 30 17:45:09 2025 -0500

    [FIX for upstream changes ]hpu_model_runner and add UT (#3)
    
    * Fix hpu_model_runner due to PR  (#20232)
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>
    
    * add UT in plugin and will be used by upstream test
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>
    
    ---------
    
    Signed-off-by: Chendi.Xue <chendi.xue@intel.com>

[33mcommit e8e173cda704685c3a8d6c6edfeb5030033708ba[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Wed Jun 25 18:33:36 2025 +0200

    Update README.md

[33mcommit 765fda979f35ce3db461d4ba7f6abbc121b6ef60[m
Author: Konrad Zawora <kzawora@habana.ai>
Date:   Wed Jun 25 19:15:35 2025 +0300

    Initial vllm-gaudi commit
    
    Co-authored-by: Chendi.Xue <chendi.xue@intel.com>
    Co-authored-by: Michal Adamczyk <madamczyk@habana.ai>
    Signed-off-by: Konrad Zawora <kzawora@habana.ai>
