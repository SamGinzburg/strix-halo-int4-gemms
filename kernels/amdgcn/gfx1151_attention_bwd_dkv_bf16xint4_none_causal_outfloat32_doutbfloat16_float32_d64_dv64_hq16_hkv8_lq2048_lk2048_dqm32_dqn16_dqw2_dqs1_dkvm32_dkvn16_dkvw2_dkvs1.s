	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v10, 3, v0
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s47, s2, 4
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v9, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v12, s47, v10
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s34, s3, 11
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v11, 56, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s34, s34, s47
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v151, 4, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v12
	s_mov_b32 s11, 0x31027000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v11, 1, v11
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s47, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v13, s7, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v14, v151, v11
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[145:146], null, s18, v10, v[9:10]
	s_mul_i32 s33, s18, s34
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s18, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[146:147], null, s19, v10, v[9:10]
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v150, s18, 3, v145
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v145, s33, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s7, s7, s4
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s19, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v150, s33, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v152, 0, v14
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[10:11], null, s19, s7, v[146:147]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v5, 0x80000000, v2 :: v_dual_and_b32 v34, 16, v0
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v13
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s14, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s15, s11
	s_and_b32 s13, s13, 0xffff
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v71.l, 0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	s_clause 0x3
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b32 s46, s[0:1], 0x9c
	s_load_b64 s[44:45], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v85.h, v71.l
	v_mov_b16_e32 v87.h, v71.l
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v72.h, v71.l
	v_mov_b16_e32 v79.h, v71.l
	v_mov_b16_e32 v84.h, v71.l
	v_mov_b16_e32 v86.h, v71.l
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v35, v0, 4, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v37, v0, 3, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v154, v0, 4, 1
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v75.l, v71.l
	v_mov_b16_e32 v74.l, v71.l
	v_mov_b16_e32 v73.l, v71.l
	s_lshl_b32 s57, s3, 12
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	v_mad_u64_u32 v[147:148], null, s18, 24, v[145:146]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v155, s47, v154
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_waitcnt lgkmcnt(0)
	s_sub_i32 s22, s47, s46
	s_mov_b32 s52, s40
	.loc	1 603 25 is_stmt 0              ; attention_backward.py:603:25
	s_max_i32 s23, s22, 0
	.loc	1 672 31 is_stmt 1              ; attention_backward.py:672:31
	s_mul_f32 s58, s35, 0x3fb8aa3b
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s40, s23, 0x7fffffe0
	v_mad_u64_u32 v[148:149], null, s19, 24, v[146:147]
	s_mov_b32 s20, 0
	s_mov_b32 s56, -1
	s_mov_b32 s21, 0
	s_mov_b32 s48, s38
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v152, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v152, v[5:8] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[69:70], v10, s[12:15], 0 offen
	s_load_b64 s[12:13], s[0:1], 0x28
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v155
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v36, 32, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v35, 0x440, v35
	v_lshlrev_b32_e32 v34, 2, v34
	v_and_b32_e32 v37, 0x440, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v41, 3, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v76, 8, v69
	v_lshrrev_b32_e32 v81, 24, v70
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v71.h, v69.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v82, v69, 16, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v74.h, 4, v70.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[77:78], 24, v[69:70]
	v_alignbit_b32 v80, v70, v69, 24
	v_lshrrev_b32_e32 v78, 8, v70
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v83, v69, 8, 4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v89, v69, 20, 4
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v90, v70, 24, 4
	v_bfe_u32 v91, v70, 16, 4
	v_bfe_u32 v103, v70, 8, 4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v105, v70, 20, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v106, -16, v82
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v85.l, 4, v81.l
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v104, 15, v70
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v87.l, v74.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v88, 15, v69
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v69.h, v70.l, 15
	v_and_b16 v70.l, v76.l, 15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v71.h
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v72.l, v69.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v73.h, 4, v69.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v107, -16, v83
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v74.h, v78.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v75.h, 4, v78.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v78, v82, v106, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v70.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v69.l, v70.h, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v84.l, v73.h, 15
	v_lshrrev_b16 v70.h, 4, v76.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v73.h, v81.l, 15
	v_and_b16 v76.l, v77.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v76.h, 4, v77.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v77, v83, v107, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v72.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v87, 0, v87, vcc_lo
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v109, -16, v88
	v_or_b32_e32 v81, -16, v90
	v_or_b32_e32 v110, -16, v91
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v79.l, v70.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v111, -16, v103
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v82, v88, v109, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v73.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v85, 0, v85 :: v_dual_and_b32 v80, 15, v80
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v108, -16, v104
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v1, s2, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v70, v90, v81, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v69.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v83, -16, v80
	.loc	1 572 22 is_stmt 1              ; attention_backward.py:572:22
	s_and_b32 s2, s6, s4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v72.l, v76.h, 15
	v_and_b16 v86.l, v75.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v88, v91, v110, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v74.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v84, 0, v84, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v107, -16, v87
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v86, 0, v86, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v81, v103, v111, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v69.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v78, v78
	s_cmpk_lt_i32 s22, 0x800
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v103, -16, v84
	v_or_b32_e32 v106, -16, v86
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v69, v104, v108, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v76.l
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v76, v82
	v_cvt_f32_i32_e32 v82, v88
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v88, 0, v105, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v104, -16, v85
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v90, v80, v83, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v83, v70
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v70, 0, v89, vcc_lo
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v1, 4, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v80, v69
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v69, 0, v72 :: v_dual_cndmask_b32 v72, 0, v79
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v79, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v1, s3, 7, v1
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v90, -16, v70
	v_or_b32_e32 v89, -16, v69
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v69
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v91, -16, v72
	.loc	1 568 17 is_stmt 1              ; attention_backward.py:568:17
	v_mul_lo_u32 v1, v1, s19
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v105, -16, v88
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v69, v69, v89, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v70
	s_cselect_b32 s59, -1, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s49, s39, 0xffff
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v1, v9, 1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v70, v70, v90, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v72
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v72, v72, v91, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v84
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	buffer_load_b128 v[65:68], v1, s[12:15], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_dual_cndmask_b32 v84, v84, v103 :: v_dual_and_b32 v153, 15, v0
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v38, 3, v0
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v23, v1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v89, v85, v104, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v88
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v11, v1 :: v_dual_and_b32 v38, 48, v38
	v_mov_b32_e32 v12, v1
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v40, 4, v153
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v42, 1, v153
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v33, 4, v33
	v_mov_b32_e32 v28, v1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v88, v88, v105, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v86
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v39, 0x370, v151
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v30, v1
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshl_or_b32 v33, v153, 7, v33
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v35, v35, v40
	v_or3_b32 v156, v42, v34, v36
	v_lshl_or_b32 v158, v153, 6, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v103, v86, v106, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v87
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v93, 0, v33
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v0, 1, v36
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v92, v37, v39, 0
	v_add3_u32 v157, 0, v36, v42
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v94, v33, 16, 0
	v_xad_u32 v95, v33, 32, 0
	v_xad_u32 v96, v33, 48, 0
	v_xad_u32 v97, v33, 64, 0
	v_xad_u32 v98, 0x50, v33, 0
	v_xad_u32 v99, 0x60, v33, 0
	v_xad_u32 v100, 0x70, v33, 0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v101, 0, v41, v35
	v_lshl_or_b32 v159, v36, 6, v33
	v_xor_b32_e32 v33, 0x90, v156
	v_xor_b32_e32 v34, 0x120, v156
	v_xor_b32_e32 v35, 0x1b0, v156
	v_xor_b32_e32 v36, 16, v158
	v_xor_b32_e32 v37, 32, v158
	v_xor_b32_e32 v38, 48, v158
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v104, v87, v107, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v86, v70
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v87, v69
	v_cvt_f32_i32_e32 v85, v72
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v160, 0, v33
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v162, 0, v35
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v164, 0, v37
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v161, 0, v34
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v163, 0, v36
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v165, 0, v38
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[33:36], v93
	ds_load_b128 v[37:40], v94
	ds_load_b128 v[41:44], v95
	ds_load_b128 v[45:48], v96
	ds_load_b128 v[49:52], v97
	ds_load_b128 v[53:56], v98
	ds_load_b128 v[57:60], v99
	ds_load_b128 v[61:64], v100
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cvt_f32_i32_e32 v90, v88
	v_cvt_f32_i32_e32 v91, v89
	v_cvt_f32_i32_e32 v88, v104
	v_cvt_f32_i32_e32 v89, v103
	ds_store_b128 v92, v[76:79]
	ds_store_b128 v92, v[84:87] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v101
	ds_load_b128 v[84:87], v101 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v92, v[80:83]
	ds_store_b128 v92, v[88:91] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v101
	ds_load_b128 v[88:91], v101 offset:512
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v102, 16, v159
	v_xor_b32_e32 v103, 32, v159
	v_xor_b32_e32 v104, 48, v159
	v_xor_b32_e32 v105, 64, v159
	v_xor_b32_e32 v106, 0x50, v159
	v_xor_b32_e32 v107, 0x60, v159
	v_xor_b32_e32 v108, 0x70, v159
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v10, v1
	v_add_nc_u32_e32 v166, 0, v102
	v_add_nc_u32_e32 v167, 0, v103
	v_add_nc_u32_e32 v168, 0, v104
	v_add_nc_u32_e32 v169, 0, v105
	v_add_nc_u32_e32 v170, 0, v106
	v_add_nc_u32_e32 v171, 0, v107
	v_add_nc_u32_e32 v172, 0, v108
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v149, v0, v153
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v75.h, v66.l
	v_mov_b16_e32 v71.h, v65.l
	v_and_b32_e32 v65, 0xffff0000, v65
	v_and_b32_e32 v66, 0xffff0000, v66
	v_mov_b16_e32 v74.h, v67.l
	v_mov_b16_e32 v73.h, v68.l
	v_and_b32_e32 v68, 0xffff0000, v68
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v72, v78, v75
	v_dual_mul_f32 v70, v77, v65 :: v_dual_and_b32 v67, 0xffff0000, v67
	v_dual_mul_f32 v69, v76, v71 :: v_dual_mul_f32 v76, v79, v66
	v_mul_f32_e32 v79, v82, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v77, v80, v74 :: v_dual_mul_f32 v78, v81, v67
	v_dual_mul_f32 v73, v90, v73 :: v_dual_mul_f32 v80, v83, v68
	v_mul_f32_e32 v71, v84, v71
	v_dual_mul_f32 v65, v85, v65 :: v_dual_mul_f32 v66, v87, v66
	v_dual_mul_f32 v75, v86, v75 :: v_dual_mul_f32 v74, v88, v74
	v_dual_mul_f32 v67, v89, v67 :: v_dual_mul_f32 v68, v91, v68
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v81, v69, 16, 1
	v_bfe_u32 v82, v70, 16, 1
	v_bfe_u32 v83, v72, 16, 1
	v_bfe_u32 v84, v76, 16, 1
	v_bfe_u32 v85, v77, 16, 1
	v_bfe_u32 v86, v78, 16, 1
	v_bfe_u32 v87, v79, 16, 1
	v_bfe_u32 v88, v80, 16, 1
	v_bfe_u32 v89, v71, 16, 1
	v_bfe_u32 v90, v65, 16, 1
	v_bfe_u32 v91, v75, 16, 1
	v_bfe_u32 v92, v66, 16, 1
	v_bfe_u32 v101, v74, 16, 1
	v_bfe_u32 v109, v67, 16, 1
	v_bfe_u32 v110, v73, 16, 1
	v_bfe_u32 v111, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_cmp_o_f32_e64 s1, v70, v70
	v_cmp_o_f32_e64 s2, v72, v72
	v_cmp_o_f32_e64 s3, v76, v76
	v_cmp_o_f32_e64 s6, v77, v77
	v_cmp_o_f32_e64 s7, v78, v78
	v_cmp_o_f32_e64 s8, v79, v79
	v_cmp_o_f32_e64 s9, v80, v80
	v_add3_u32 v69, v69, v81, 0x7fff
	v_add3_u32 v70, v70, v82, 0x7fff
	v_add3_u32 v72, v72, v83, 0x7fff
	v_add3_u32 v76, v76, v84, 0x7fff
	v_add3_u32 v77, v77, v85, 0x7fff
	v_add3_u32 v78, v78, v86, 0x7fff
	v_add3_u32 v79, v79, v87, 0x7fff
	v_add3_u32 v80, v80, v88, 0x7fff
	v_cmp_o_f32_e64 s10, v71, v71
	v_cmp_o_f32_e64 s11, v65, v65
	v_cmp_o_f32_e64 s12, v75, v75
	v_cmp_o_f32_e64 s13, v66, v66
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v67, v67
	v_cmp_o_f32_e64 s16, v73, v73
	v_cmp_o_f32_e64 s17, v68, v68
	v_add3_u32 v71, v71, v89, 0x7fff
	v_add3_u32 v81, v65, v90, 0x7fff
	v_add3_u32 v75, v75, v91, 0x7fff
	v_add3_u32 v82, v66, v92, 0x7fff
	v_add3_u32 v74, v74, v101, 0x7fff
	v_add3_u32 v83, v67, v109, 0x7fff
	v_add3_u32 v73, v73, v110, 0x7fff
	v_add3_u32 v84, v68, v111, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v69.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s1
	v_cndmask_b16 v66.l, 0x7fff, v72.h, s2
	v_cndmask_b16 v66.h, 0x7fff, v76.h, s3
	v_cndmask_b16 v67.l, 0x7fff, v77.h, s6
	v_cndmask_b16 v67.h, 0x7fff, v78.h, s7
	v_cndmask_b16 v68.l, 0x7fff, v79.h, s8
	v_cndmask_b16 v68.h, 0x7fff, v80.h, s9
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v69.h, 0x7fff, v81.h, s11
	v_cndmask_b16 v70.l, 0x7fff, v75.h, s12
	v_cndmask_b16 v70.h, 0x7fff, v82.h, s13
	v_cndmask_b16 v71.l, 0x7fff, v74.h, s14
	v_cndmask_b16 v71.h, 0x7fff, v83.h, s15
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s16
	v_cndmask_b16 v72.h, 0x7fff, v84.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v152, v[65:68]
	ds_store_b128 v152, v[69:72] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v93
	ds_load_b128 v[69:72], v94
	ds_load_b128 v[73:76], v95
	ds_load_b128 v[77:80], v96
	ds_load_b128 v[81:84], v97
	ds_load_b128 v[85:88], v98
	ds_load_b128 v[89:92], v99
	ds_load_b128 v[93:96], v100
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow164
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s1, s56, -1
	s_movk_i32 s21, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_mov_b32 s56, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s59
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s41, s57, s21
	s_mov_b32 s60, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_or_b32 s1, s60, s41
	v_lshl_add_u32 v97, s18, 4, v145
	s_mul_i32 s2, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v98, s2, v145, 1
	v_add_lshl_u32 v99, s2, v150, 1
	v_add_lshl_u32 v97, s2, v97, 1
	v_add_lshl_u32 v100, s2, v147, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v98, 0x80000000, v98, s5
	v_cndmask_b32_e64 v99, 0x80000000, v99, s5
	v_cndmask_b32_e64 v97, 0x80000000, v97, s5
	v_cndmask_b32_e64 v100, 0x80000000, v100, s5
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3
	buffer_load_b128 v[129:132], v98, s[28:31], 0 offen
	buffer_load_b128 v[133:136], v99, s[28:31], 0 offen
	buffer_load_b128 v[137:140], v97, s[28:31], 0 offen
	buffer_load_b128 v[141:144], v100, s[28:31], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_nc_u32_e32 v197, 0, v159
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v213, s27 :: v_dual_mov_b32 v210, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v212, s26 :: v_dual_mov_b32 v211, s25
	v_dual_mov_b32 v208, s22 :: v_dual_mov_b32 v209, s23
	v_dual_mov_b32 v206, s20 :: v_dual_mov_b32 v207, s21
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s30
	s_mov_b32 s55, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v152, v[129:132]
	s_waitcnt vmcnt(2)
	ds_store_b128 v152, v[133:136] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v152, v[137:140] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v152, v[141:144] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v197
	ds_load_b128 v[101:104], v166
	ds_load_b128 v[105:108], v167
	ds_load_b128 v[109:112], v168
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[33:40], v[97:104], v[206:213]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[97:100], v169
	ds_load_b128 v[101:104], v170
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[41:48], v[105:112], v[113:120]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[49:56], v[97:104], v[113:120]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[97:100], v171
	ds_load_b128 v[101:104], v172
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[57:64], v[97:104], v[113:120]
	v_or_b32_e32 v97, s41, v149
	v_lshl_add_u32 v99, s19, 4, v146
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v100, s1, v146, 1
	v_add_lshl_u32 v101, s1, v148, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v97, s60, v97
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v99, s1, v99, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v100, 0x80000000, v100, s4
	v_cndmask_b32_e64 v101, 0x80000000, v101, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v97, 2, v97
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v99, 0x80000000, v99, s4
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v98, v97, s[48:51], 0 offen
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v230, s58, v113, -v98
	v_fma_f32 v231, s58, v114, -v98
	v_fma_f32 v232, s58, v115, -v98
	v_fma_f32 v233, s58, v116, -v98
	v_fma_f32 v234, s58, v117, -v98
	v_fma_f32 v235, s58, v118, -v98
	v_fma_f32 v236, s58, v119, -v98
	v_fma_f32 v237, s58, v120, -v98
	v_lshl_add_u32 v98, s19, 3, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v98, s1, v98, 1
	v_cndmask_b32_e64 v98, 0x80000000, v98, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v238, v97, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[214:217], v100, s[36:39], 0 offen
	buffer_load_b128 v[218:221], v98, s[36:39], 0 offen
	buffer_load_b128 v[222:225], v99, s[36:39], 0 offen
	buffer_load_b128 v[226:229], v101, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v239, 0, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v239, v[214:217]
	s_waitcnt vmcnt(2)
	ds_store_b128 v239, v[218:221] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v239, v[222:225] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v239, v[226:229] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v123, v157 offset:640
	ds_load_u16_d16_hi v124, v157 offset:896
	ds_load_u16_d16_hi v100, v157 offset:960
	ds_load_u16_d16_hi v99, v157 offset:704
	ds_load_u16_d16_hi v125, v157 offset:1152
	ds_load_u16_d16_hi v126, v157 offset:1408
	ds_load_u16_d16_hi v102, v157 offset:1472
	ds_load_u16_d16_hi v101, v157 offset:1216
	ds_load_u16_d16_hi v127, v157 offset:1664
	ds_load_u16_d16_hi v128, v157 offset:1920
	ds_load_u16_d16_hi v104, v157 offset:1984
	ds_load_u16_d16_hi v103, v157 offset:1728
	ds_load_u16_d16_hi v105, v157 offset:2176
	ds_load_u16_d16_hi v106, v157 offset:2432
	ds_load_u16_d16_hi v114, v157 offset:2496
	ds_load_u16_d16_hi v113, v157 offset:2240
	ds_load_u16_d16_hi v107, v157 offset:2688
	ds_load_u16_d16_hi v108, v157 offset:2944
	ds_load_u16_d16_hi v116, v157 offset:3008
	ds_load_u16_d16_hi v115, v157 offset:2752
	ds_load_u16_d16_hi v109, v157 offset:3200
	ds_load_u16_d16_hi v110, v157 offset:3456
	ds_load_u16_d16_hi v118, v157 offset:3520
	ds_load_u16_d16_hi v117, v157 offset:3264
	ds_load_u16_d16_hi v111, v157 offset:3712
	ds_load_u16_d16_hi v112, v157 offset:3968
	ds_load_u16_d16_hi v120, v157 offset:4032
	ds_load_u16_d16_hi v119, v157 offset:3776
	ds_load_u16_d16_hi v121, v157 offset:128
	ds_load_u16_d16_hi v122, v157 offset:384
	ds_load_u16_d16_hi v98, v157 offset:448
	ds_load_u16_d16_hi v97, v157 offset:192
	ds_load_u16_d16_hi v195, v157 offset:320
	ds_load_u16_d16_hi v204, v157 offset:256
	ds_load_u16_d16_hi v205, v157
	ds_load_u16_d16_hi v196, v157 offset:64
	ds_load_u16_d16_hi v193, v157 offset:832
	ds_load_u16_d16_hi v202, v157 offset:768
	ds_load_u16_d16_hi v203, v157 offset:512
	ds_load_u16_d16_hi v194, v157 offset:576
	ds_load_u16_d16_hi v191, v157 offset:1344
	ds_load_u16_d16_hi v200, v157 offset:1280
	ds_load_u16_d16_hi v201, v157 offset:1024
	ds_load_u16_d16_hi v192, v157 offset:1088
	ds_load_u16_d16_hi v189, v157 offset:1856
	ds_load_u16_d16_hi v198, v157 offset:1792
	ds_load_u16_d16_hi v199, v157 offset:1536
	ds_load_u16_d16_hi v190, v157 offset:1600
	ds_load_u16_d16_hi v179, v157 offset:2368
	ds_load_u16_d16_hi v187, v157 offset:2304
	ds_load_u16_d16_hi v188, v157 offset:2048
	ds_load_u16_d16_hi v180, v157 offset:2112
	ds_load_u16_d16_hi v177, v157 offset:2880
	ds_load_u16_d16_hi v185, v157 offset:2816
	ds_load_u16_d16_hi v186, v157 offset:2560
	ds_load_u16_d16_hi v178, v157 offset:2624
	ds_load_u16_d16_hi v175, v157 offset:3392
	ds_load_u16_d16_hi v183, v157 offset:3328
	ds_load_u16_d16_hi v184, v157 offset:3072
	ds_load_u16_d16_hi v176, v157 offset:3136
	ds_load_u16_d16_hi v173, v157 offset:3904
	ds_load_u16_d16_hi v181, v157 offset:3840
	ds_load_u16_d16_hi v182, v157 offset:3584
	ds_load_u16_d16_hi v174, v157 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v152, v[214:217]
	ds_store_b128 v152, v[218:221] offset:1024
	ds_store_b128 v152, v[222:225] offset:2048
	ds_store_b128 v152, v[226:229] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[214:217], v197
	ds_load_b128 v[218:221], v166
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[206:213], v[65:72], v[214:221], v[206:213]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[214:217], v167
	ds_load_b128 v[218:221], v168
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[206:213], v[73:80], v[214:221], v[206:213]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[214:217], v169
	ds_load_b128 v[218:221], v170
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[206:213], v[81:88], v[214:221], v[206:213]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[214:217], v171
	ds_load_b128 v[218:221], v172
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[206:213], v[89:96], v[214:221], v[206:213]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v214, 2, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v197, v206, v238
	v_sub_f32_e32 v206, v207, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v207, v208, v238
	v_sub_f32_e32 v208, v209, v238
	v_sub_f32_e32 v209, v210, v238
	v_sub_f32_e32 v210, v211, v238
	v_sub_f32_e32 v211, v212, v238
	v_sub_f32_e32 v212, v213, v238
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v213, s60, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v213, s46, v213
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v214, v213
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v214, 4, v155
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s9, v155, v213
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s1, v214, v213
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v214, 6, v155
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s9, s0, s9
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s2, v214, v213
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v214, 8, v155
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s2, s0, s2
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s3, v214, v213
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v214, 10, v155
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s6, v214, v213
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v214, 12, v155
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s0, s6
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v214, v213
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v214, 14, v155
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s7, s0, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v214, v213
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v213, v230
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s8, s0, s8
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v213, 0, v213, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v197, v213, v197
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v197, s35, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v214, v197, 16, 1
	v_cmp_o_f32_e64 s9, v197, v197
	v_add3_u32 v197, v197, v214, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v214, v231
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e64 v197.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v97.l, 0x7fff, v197.h, s9
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v128.l, v197.l
	v_mov_b16_e64 v126.l, v197.l
	v_mov_b16_e64 v122.l, v197.l
	v_mov_b16_e64 v124.l, v197.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v214, 0, v214, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v112.l, v197.l
	v_mov_b16_e64 v121.l, v197.l
	v_mov_b16_e64 v123.l, v197.l
	v_mov_b16_e64 v125.l, v197.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v206, v214, v206
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v127.l, v197.l
	v_mov_b16_e64 v105.l, v197.l
	v_mov_b16_e64 v106.l, v197.l
	v_mov_b16_e64 v107.l, v197.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v206, s35, v206
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v108.l, v197.l
	v_mov_b16_e64 v109.l, v197.l
	v_mov_b16_e64 v110.l, v197.l
	v_mov_b16_e64 v111.l, v197.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v215, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.l, v197.l
	v_mov_b16_e64 v99.l, v197.l
	v_mov_b16_e64 v101.l, v197.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v216, v206, v215, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v206, v232
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v103.l, v197.l
	v_mov_b16_e64 v100.l, v197.l
	v_mov_b16_e64 v102.l, v197.l
	v_mov_b16_e64 v113.l, v197.l
	v_mov_b16_e64 v114.l, v197.l
	v_mov_b16_e64 v115.l, v197.l
	v_mov_b16_e64 v116.l, v197.l
	v_mov_b16_e64 v117.l, v197.l
	v_mov_b16_e64 v118.l, v197.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v206, 0, v206, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v119.l, v197.l
	v_mov_b16_e64 v120.l, v197.l
	v_mov_b16_e64 v199.l, v197.l
	v_mov_b16_e64 v200.l, v197.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v207, v206, v207
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v202.l, v197.l
	v_mov_b16_e64 v205.l, v197.l
	v_mov_b16_e64 v201.l, v197.l
	v_mov_b16_e64 v204.l, v197.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v207, s35, v207
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v203.l, v197.l
	v_mov_b16_e64 v198.l, v197.l
	v_mov_b16_e64 v195.l, v197.l
	v_mov_b16_e64 v194.l, v197.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v215, v207, 16, 1
	v_cmp_o_f32_e64 s1, v207, v207
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v193.l, v197.l
	v_mov_b16_e64 v192.l, v197.l
	v_mov_b16_e64 v190.l, v197.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v217, v207, v215, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v207, v233
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v196.l, v197.l
	v_mov_b16_e64 v191.l, v197.l
	v_mov_b16_e64 v189.l, v197.l
	v_mov_b16_e64 v188.l, v197.l
	v_mov_b16_e64 v184.l, v197.l
	v_mov_b16_e64 v186.l, v197.l
	v_mov_b16_e64 v182.l, v197.l
	v_mov_b16_e64 v187.l, v197.l
	v_mov_b16_e64 v185.l, v197.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v207, 0, v207, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v183.l, v197.l
	v_mov_b16_e64 v181.l, v197.l
	v_mov_b16_e64 v179.l, v197.l
	v_mov_b16_e64 v180.l, v197.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v208, v207, v208
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v178.l, v197.l
	v_mov_b16_e64 v176.l, v197.l
	v_mov_b16_e64 v174.l, v197.l
	v_mov_b16_e64 v177.l, v197.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v208, s35, v208
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v175.l, v197.l
	v_mov_b16_e64 v173.l, v197.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v215, v208, 16, 1
	v_cmp_o_f32_e64 s2, v208, v208
	v_add3_u32 v208, v208, v215, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v215, v234
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v215, 0, v215, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v209, v215, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v209, s35, v209
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v218, v209, 16, 1
	v_cmp_o_f32_e64 s3, v209, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v218, v209, v218, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v209, v235
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v218.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v209, 0, v209, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v210, v209, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v210, s35, v210
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v219, v210, 16, 1
	v_cmp_o_f32_e64 s6, v210, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v219, v210, v219, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v210, v236
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v210, 0, v210, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v211, v210, v211
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v211, s35, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v220, v211, 16, 1
	v_cmp_o_f32_e64 s7, v211, v211
	v_add3_u32 v220, v211, v220, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v211, v237
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v211, 0, v211, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v212, v211, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v212, s35, v212
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v221, v212, 16, 1
	v_cmp_o_f32_e64 s8, v212, v212
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v221, v212, v221, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_add_nc_u32_e32 v212, 0, v156
	ds_store_b16 v212, v97
	ds_store_b16 v212, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v216.h, vcc_lo
	v_cndmask_b16 v98.l, 0x7fff, v219.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	v_cmp_o_f32_e64 s6, v207, v207
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v160, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v217.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v160, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v220.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v210, v210
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v161, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v208.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v208, 0, v158
	ds_store_b16 v161, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v221.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v162, v97
	ds_store_b16 v162, v98 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[216:219], v208
	ds_load_b128 v[220:223], v163
	ds_load_b128 v[224:227], v164
	ds_load_b128 v[228:231], v165
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v239, v[129:132]
	ds_store_b128 v239, v[133:136] offset:1024
	ds_store_b128 v239, v[137:140] offset:2048
	ds_store_b128 v239, v[141:144] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v129, v157
	ds_load_u16_d16 v130, v157 offset:256
	ds_load_u16_d16 v131, v157 offset:512
	ds_load_u16_d16 v132, v157 offset:768
	ds_load_u16_d16 v135, v157 offset:1536
	ds_load_u16_d16 v136, v157 offset:1792
	ds_load_u16_d16 v133, v157 offset:1024
	ds_load_u16_d16 v134, v157 offset:1280
	ds_load_u16_d16 v140, v157 offset:832
	ds_load_u16_d16 v142, v157 offset:1344
	ds_load_u16_d16 v139, v157 offset:576
	ds_load_u16_d16 v138, v157 offset:320
	ds_load_u16_d16 v233, v157 offset:2304
	ds_load_u16_d16 v234, v157 offset:2560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v133, v157 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v134, v157 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v140, v157 offset:960
	ds_load_u16_d16 v137, v157 offset:64
	ds_load_u16_d16_hi v130, v157 offset:384
	ds_load_u16_d16_hi v129, v157 offset:128
	ds_load_u16_d16_hi v136, v157 offset:1920
	ds_load_u16_d16 v144, v157 offset:1856
	ds_load_u16_d16_hi v135, v157 offset:1664
	ds_load_u16_d16 v143, v157 offset:1600
	ds_load_u16_d16_hi v131, v157 offset:640
	ds_load_u16_d16_hi v132, v157 offset:896
	ds_load_u16_d16 v141, v157 offset:1088
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v139, v157 offset:704
	ds_load_u16_d16_hi v142, v157 offset:1472
	ds_load_u16_d16 v232, v157 offset:2048
	ds_load_u16_d16 v235, v157 offset:2816
	ds_load_u16_d16 v242, v157 offset:2624
	ds_load_u16_d16 v238, v157 offset:3584
	ds_load_u16_d16 v239, v157 offset:3840
	ds_load_u16_d16 v247, v157 offset:3904
	ds_load_u16_d16 v236, v157 offset:3072
	ds_load_u16_d16 v243, v157 offset:2880
	ds_load_u16_d16 v237, v157 offset:3328
	ds_load_u16_d16 v244, v157 offset:3136
	ds_load_u16_d16 v246, v157 offset:3648
	ds_load_u16_d16 v245, v157 offset:3392
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v157 offset:192
	ds_load_u16_d16_hi v138, v157 offset:448
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v144, v157 offset:1984
	ds_load_u16_d16 v241, v157 offset:2368
	ds_load_u16_d16 v240, v157 offset:2112
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v143, v157 offset:1728
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v215, v215
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(21)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[129:136], v[216:223], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v129, v213, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v141, v157 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v232, v157 offset:2176
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v235, v157 offset:2944
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v242, v157 offset:2752
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v238, v157 offset:3712
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v239, v157 offset:3968
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v247, v157 offset:4032
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v236, v157 offset:3200
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v243, v157 offset:3008
	ds_load_u16_d16_hi v234, v157 offset:2688
	ds_load_u16_d16_hi v233, v157 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v237, v157 offset:3456
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v244, v157 offset:3264
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v246, v157 offset:3776
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v245, v157 offset:3520
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v241, v157 offset:2496
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v240, v157 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v129, v213, v129, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v134, v211, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[137:144], v[216:223], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v197.h, 0x7fff, v129.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v220, v126, v126
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v211, v211
	v_add3_u32 v134, v211, v134, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v129, v213, v197
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v216.l, v197.l
	v_mov_b16_e64 v217.l, v197.l
	v_mov_b16_e64 v218.l, v197.l
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v218.h, 0x7fff, v134.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v130, v129, 16, 1
	v_cmp_o_f32_e64 s1, v129, v129
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[232:239], v[224:231], v[25:32]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v222, v124, v124
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[240:247], v[224:231], v[17:24]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v129, v129, v130, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v130, v214, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v224, v122, v122
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v211, v211, v218
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v219, v127, v127 :: v_dual_sub_f32 v226, v109, v109
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v130, v214, v130, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v130.l, v197.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v129.h, s1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v127.l, v199.h
	v_mov_b16_e64 v126.l, v200.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v130.h, 0x7fff, v130.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v221, v125, v125 :: v_dual_sub_f32 v228, v107, v107
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v125.l, v201.h
	v_mov_b16_e64 v124.l, v202.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v131, v214, v130
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v160, v130
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v130, v206, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v214.l, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v223, v123, v123 :: v_dual_sub_f32 v230, v105, v105
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v132, v131, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v130, v206, v130, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v123.l, v203.h
	v_mov_b16_e64 v122.l, v204.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v213, v131, v132, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v131, v215, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v132.l, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v225, v121, v121
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v121.l, v205.h
	v_mov_b16_e64 v109.l, v184.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v131, v215, v131, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v227, v108, v108 :: v_dual_sub_f32 v234, v99, v99
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v108.l, v185.h
	v_mov_b16_e64 v107.l, v186.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v132.h, 0x7fff, v131.h, s2
	v_cmp_o_f32_e64 s2, v209, v209
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v105.l, v188.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v231, v102, v102
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v102.l, v191.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v131, v215, v132
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v212, v132 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v132, v209, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v215.l, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v101, v101
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v133, v131, 16, 1
	v_cmp_o_f32_e64 s3, v131, v131
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v132, v209, v132, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v192.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v233, v100, v100
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v131, v131, v133, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v133, v210, 16, 1
	v_cndmask_b16 v214.h, 0x7fff, v132.h, s2
	v_cmp_o_f32_e64 s2, v206, v206
	v_bfe_u32 v132, v207, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v131.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v133, v210, v133, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v209, v209, v214
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v215.h, 0x7fff, v130.h, s2
	v_add3_u32 v132, v207, v132, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v100.l, v193.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v217.h, 0x7fff, v133.h, s7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v209, v209
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v206, v206, v215
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v216.h, 0x7fff, v132.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v212, v197
	ds_store_b16_d16_hi v160, v214 offset:512
	ds_store_b16_d16_hi v161, v215
	ds_store_b16_d16_hi v161, v217 offset:512
	ds_store_b16_d16_hi v162, v216
	ds_store_b16_d16_hi v162, v218 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v208
	ds_load_b128 v[141:144], v163
	ds_load_b128 v[129:132], v164
	ds_load_b128 v[133:136], v165
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v212, v97
	ds_store_b16 v212, v98 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v207, v207, v216
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v212, v206, 16, 1
	v_cndmask_b16 v97.l, 0x7fff, v213.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v210, v210, v217
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v207, v207
	v_add3_u32 v206, v206, v212, 0x7fff
	v_bfe_u32 v212, v207, 16, 1
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v218, v128, v128
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v210, v210
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v128.l, v198.h
	v_mov_b16_e64 v99.l, v194.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v207, v207, v212, 0x7fff
	v_bfe_u32 v212, v209, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v237, v113, v113
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[137:144], v[1:8]
	v_mov_b16_e64 v113.l, v180.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v223, v223
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v209, v209, v212, 0x7fff
	v_bfe_u32 v212, v210, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v222, v222
	v_cmp_o_f32_e64 s11, v221, v221
	v_cmp_o_f32_e64 s13, v220, v220
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v209.h, s2
	v_add3_u32 v210, v210, v212, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v160, v97
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v206.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v206, v112, v112
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v212, v211, 16, 1
	v_cmp_o_f32_e64 s6, v211, v211
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v160, v98 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v210.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v161, v97
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v211, v211, v212, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v207.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v112.l, v181.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v161, v98 offset:512
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v207, v111, v111
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v211.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v162, v97
	ds_store_b16 v162, v98 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[210:213], v208
	ds_load_b128 v[214:217], v163
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v111.l, v182.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v209, v110, v110 :: v_dual_sub_f32 v208, v103, v103
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v110.l, v183.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v97.l, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v229, v106, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v106.l, v187.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v98.l, v197.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v103.l, v190.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v236, v97, v97
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v97.l, v196.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[129:136], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v235, v98, v98
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v98.l, v195.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v224, v224
	v_cmp_o_f32_e64 s15, v219, v219
	v_cmp_o_f32_e64 s17, v218, v218
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[210:217], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v104, v104
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v189.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v120, v120
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v120.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v119, v119
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v119.l, v174.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v118, v118
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v118.l, v175.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v117, v117
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v117.l, v176.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v116, v116
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v116.l, v177.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v115, v115
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v115.l, v178.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v114, v114
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v114.l, v179.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[137:144], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v225, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[129:136], v[9:16]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[210:217], v[9:16]
	ds_load_b128 v[97:100], v164
	ds_load_b128 v[101:104], v165
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v199, v199
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v110.h, v197.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e32 v110.l, v109.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v200, v200
	v_sub_f32_e32 v105, v201, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v106.h, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v198, v198
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v110, 1, v110
	v_mov_b16_e32 v108.l, v107.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v202, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v107, v107
	v_mov_b16_e32 v106.l, v105.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v204, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v104.l, v103.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v205, v205
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v103, v103
	v_mov_b16_e64 v98.h, v197.l
	v_add3_u32 v107, v107, v108, 0x7fff
	v_and_b32_e32 v104, 1, v104
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e64 v108.l, v220.h
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v100.h, v197.l
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e64 v104.l, v222.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v101, v203, v203 :: v_dual_and_b32 v108, 1, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v102.h, v197.l
	v_and_b32_e32 v106, 1, v106
	v_mov_b16_e32 v100.l, v99.h
	v_and_b32_e32 v104, 1, v104
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_and_b32_e32 v112, 1, v112
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v197.l
	v_mov_b16_e64 v97.l, v225.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v197.l
	v_mov_b16_e64 v100.l, v224.h
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v197.l
	v_mov_b16_e64 v102.l, v223.h
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e64 v106.h, v197.l
	v_mov_b16_e64 v106.l, v221.h
	v_cmp_o_f32_e64 s14, v109, v109
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e64 v110.l, v219.h
	v_cmp_o_f32_e64 s16, v111, v111
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e64 v112.l, v218.h
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_add3_u32 v97, v225, v97, 0x7fff
	v_add3_u32 v100, v224, v100, 0x7fff
	v_add3_u32 v102, v223, v102, 0x7fff
	v_add3_u32 v104, v222, v104, 0x7fff
	v_add3_u32 v106, v221, v106, 0x7fff
	v_add3_u32 v108, v220, v108, 0x7fff
	v_add3_u32 v110, v219, v110, 0x7fff
	v_add3_u32 v112, v218, v112, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v192, v192
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v106.h, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v190, v190
	v_sub_f32_e32 v107, v191, v191
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[137:144], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v195, v195
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v100.h, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v194, v194
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v102.h, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v193, v193
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v100.l, v99.h
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e32 v102.l, v101.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_mov_b16_e32 v104.l, v103.h
	v_and_b32_e32 v100, 1, v100
	v_cmp_o_f32_e64 s6, v101, v101
	v_and_b32_e32 v102, 1, v102
	v_mov_b16_e32 v106.l, v105.h
	v_and_b32_e32 v104, 1, v104
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v197.l
	v_mov_b16_e64 v100.l, v235.h
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v197.l
	v_mov_b16_e64 v102.l, v234.h
	v_mov_b16_e64 v98.h, v197.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v196, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v106, 1, v106
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v111, v189, v189 :: v_dual_and_b32 v102, 1, v102
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e32 v110.l, v109.h
	v_mov_b16_e32 v98.l, v97.h
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e32 v108.l, v107.h
	v_and_b32_e32 v110, 1, v110
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v108, 1, v108
	v_cmp_o_f32_e64 s14, v109, v109
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	v_and_b32_e32 v112, 1, v112
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v184, v184
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v109, v109, v110, 0x7fff
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e64 v104.l, v233.h
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v197.l
	v_mov_b16_e64 v97.l, v236.h
	v_mov_b16_e64 v106.h, v197.l
	v_mov_b16_e64 v106.l, v232.h
	v_cmp_o_f32_e64 s12, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e64 v108.l, v231.h
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e64 v110.l, v208.h
	v_cmp_o_f32_e64 s16, v111, v111
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v182, v182
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e64 v112.l, v128.h
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_add3_u32 v102, v234, v102, 0x7fff
	v_add3_u32 v104, v233, v104, 0x7fff
	v_cmp_o_f32_e64 s1, v236, v236
	v_add3_u32 v97, v236, v97, 0x7fff
	v_cmp_o_f32_e64 s3, v235, v235
	v_add3_u32 v100, v235, v100, 0x7fff
	v_cmp_o_f32_e64 s7, v234, v234
	v_cmp_o_f32_e64 s9, v233, v233
	v_cmp_o_f32_e64 s11, v232, v232
	v_add3_u32 v106, v232, v106, 0x7fff
	v_cmp_o_f32_e64 s13, v231, v231
	v_cmp_o_f32_e64 s15, v208, v208
	v_cmp_o_f32_e64 s17, v128, v128
	v_add3_u32 v112, v128, v112, 0x7fff
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v183, v183
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v108, v231, v108, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v181, v181
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v110, v208, v110, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_mov_b16_e64 v106.h, v197.l
	v_mov_b16_e32 v106.l, v105.h
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e32 v108.l, v107.h
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[137:144], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v188, v188
	v_sub_f32_e32 v99, v187, v187
	v_sub_f32_e32 v101, v186, v186
	v_sub_f32_e32 v103, v185, v185
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v98.h, v197.l
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v100.h, v197.l
	v_mov_b16_e32 v100.l, v99.h
	v_mov_b16_e64 v102.h, v197.l
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e32 v104.l, v103.h
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e32 v110.l, v109.h
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v197.l
	v_mov_b16_e64 v97.l, v230.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v197.l
	v_mov_b16_e64 v100.l, v229.h
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v197.l
	v_mov_b16_e64 v102.l, v228.h
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e64 v104.l, v227.h
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e64 v106.h, v197.l
	v_mov_b16_e64 v106.l, v226.h
	v_cmp_o_f32_e64 s12, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e64 v108.l, v209.h
	v_cmp_o_f32_e64 s14, v109, v109
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e64 v110.l, v207.h
	v_cmp_o_f32_e64 s16, v111, v111
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e64 v112.l, v206.h
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s1, v230, v230
	v_add3_u32 v97, v230, v97, 0x7fff
	v_cmp_o_f32_e64 s3, v229, v229
	v_add3_u32 v100, v229, v100, 0x7fff
	v_cmp_o_f32_e64 s7, v228, v228
	v_add3_u32 v102, v228, v102, 0x7fff
	v_cmp_o_f32_e64 s9, v227, v227
	v_add3_u32 v104, v227, v104, 0x7fff
	v_cmp_o_f32_e64 s11, v226, v226
	v_add3_u32 v106, v226, v106, 0x7fff
	v_cmp_o_f32_e64 s13, v209, v209
	v_add3_u32 v108, v209, v108, 0x7fff
	v_cmp_o_f32_e64 s15, v207, v207
	v_add3_u32 v110, v207, v110, 0x7fff
	v_cmp_o_f32_e64 s17, v206, v206
	v_add3_u32 v112, v206, v112, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v176, v176
	v_sub_f32_e32 v107, v175, v175
	v_sub_f32_e32 v109, v174, v174
	v_sub_f32_e32 v111, v173, v173
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[129:136], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v180, v180
	v_sub_f32_e32 v99, v179, v179
	v_sub_f32_e32 v101, v178, v178
	v_sub_f32_e32 v103, v177, v177
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v98.h, v197.l
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v100.h, v197.l
	v_mov_b16_e32 v100.l, v99.h
	v_mov_b16_e64 v102.h, v197.l
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e32 v104.l, v103.h
	v_mov_b16_e64 v106.h, v197.l
	v_mov_b16_e32 v106.l, v105.h
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e32 v108.l, v107.h
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e32 v110.l, v109.h
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v197.l
	v_mov_b16_e64 v97.l, v237.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v197.l
	v_mov_b16_e32 v100.l, v127.h
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v197.l
	v_mov_b16_e32 v102.l, v126.h
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v197.l
	v_mov_b16_e32 v104.l, v125.h
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e64 v106.h, v197.l
	v_mov_b16_e32 v106.l, v124.h
	v_cmp_o_f32_e64 s12, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v197.l
	v_mov_b16_e32 v108.l, v123.h
	v_cmp_o_f32_e64 s14, v109, v109
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v197.l
	v_mov_b16_e32 v110.l, v122.h
	v_cmp_o_f32_e64 s16, v111, v111
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v197.l
	v_mov_b16_e32 v112.l, v121.h
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s1, v237, v237
	v_add3_u32 v97, v237, v97, 0x7fff
	v_cmp_o_f32_e64 s3, v127, v127
	v_add3_u32 v100, v127, v100, 0x7fff
	v_cmp_o_f32_e64 s7, v126, v126
	v_add3_u32 v102, v126, v102, 0x7fff
	v_cmp_o_f32_e64 s9, v125, v125
	v_add3_u32 v104, v125, v104, 0x7fff
	v_cmp_o_f32_e64 s11, v124, v124
	v_add3_u32 v106, v124, v106, 0x7fff
	v_cmp_o_f32_e64 s13, v123, v123
	v_add3_u32 v108, v123, v108, 0x7fff
	v_cmp_o_f32_e64 s15, v122, v122
	v_add3_u32 v110, v122, v110, 0x7fff
	v_cmp_o_f32_e64 s17, v121, v121
	v_add3_u32 v112, v121, v112, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s60, 32
	s_cmpk_lt_u32 s60, 0x7e0
	s_mov_b32 s60, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[129:136], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s18, v153
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, v154, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, s47, v153
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v47, 2, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v46, 6, v0
	v_or_b32_e32 v48, 4, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 8, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s4, s42
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v41, 14, v0
	v_or_b32_e32 v42, 12, v0
	v_or_b32_e32 v44, 10, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s33, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s33, 2
	v_add_lshl_u32 v50, v53, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v33, 32, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s19, v0
	v_cmp_gt_i32_e64 s1, s19, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v52, v54, s33, 2
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_add_lshl_u32 v49, v55, s33, 2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v40, 34, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v39, 36, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 38, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v58, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v35, 44, v0
	v_or_b32_e32 v37, 40, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s33, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v36, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x3
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	buffer_store_b32 v18, v28, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_or_b32_e32 v18, s34, v153
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v34, 46, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v61, v43, v37
	v_add_nc_u32_e32 v63, v43, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v29, s2
	v_add_lshl_u32 v17, v60, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s19, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_lshl_u32 v19, v61, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v26, v63, s33, 2
	v_add_lshl_u32 v25, v62, s33, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s45, s45, 0xffff
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s2
	v_add_lshl_u32 v20, v43, s33, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v18, v0, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v21, v19, s[4:7], 0 offen
	buffer_store_b32 v22, v25, s[4:7], 0 offen
	buffer_store_b32 v23, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_add_lshl_u32 v19, v18, v47, 2
	s_mov_b32 s46, s6
	s_mov_b32 s47, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v18, v48, 2
	v_cndmask_b32_e64 v1, 0x80000000, v19, s0
	v_add_lshl_u32 v17, v18, v46, 2
	v_add_lshl_u32 v19, v18, v45, 2
	v_add_lshl_u32 v20, v18, v44, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v2, v1, s[44:47], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v17, s0
	v_cndmask_b32_e64 v2, 0x80000000, v19, s0
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	buffer_store_b32 v3, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v18, v42, 2
	s_clause 0x2
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v17, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v41, 2
	v_add_lshl_u32 v2, v18, v33, 2
	v_add_lshl_u32 v3, v18, v40, 2
	v_add_lshl_u32 v4, v18, v39, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v0, s[44:47], 0 offen
	buffer_store_b32 v8, v1, s[44:47], 0 offen
	buffer_store_b32 v9, v2, s[44:47], 0 offen
	buffer_store_b32 v10, v3, s[44:47], 0 offen
	buffer_store_b32 v11, v4, s[44:47], 0 offen
	v_add_lshl_u32 v0, v18, v38, 2
	v_add_lshl_u32 v1, v18, v37, 2
	v_add_lshl_u32 v2, v18, v36, 2
	v_add_lshl_u32 v3, v18, v35, 2
	v_add_lshl_u32 v4, v18, v34, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[44:47], 0 offen
	buffer_store_b32 v13, v1, s[44:47], 0 offen
	buffer_store_b32 v14, v2, s[44:47], 0 offen
	buffer_store_b32 v15, v3, s[44:47], 0 offen
	buffer_store_b32 v16, v4, s[44:47], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 176
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 248
		.amdhsa_next_free_sgpr 61
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 248
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12112
; TotalNumSgprs: 63
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 63
; NumVGPRsForWavesPerEU: 248
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	0                               ; DW_CHILDREN_no
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     248
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
