	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v34, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v27, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v9, 48, v3
	v_and_b32_e32 v46, 56, v34
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s31, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[10:11], null, s31, v1, v[9:10]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s39, s11
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v47, s31, 6, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s17, s18
	s_mov_b64 s[28:29], s[14:15]
	s_add_i32 s17, s17, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s16, 0
	s_cselect_b32 s4, s18, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s30, v46
	v_or_b32_e32 v4, s30, v9
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s3, 5
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s18, s4
.Ltmp19:
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s44, s33, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s18, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s4, s26, s31
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v48, v2, v46, s4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s44, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s4, v10
	v_add_nc_u32_e32 v2, s4, v47
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s30, v48
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v5, 0x80000000, v1, s2
	v_cndmask_b32_e64 v6, 0x80000000, v2, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s30, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s34, v46
	v_or_b32_e32 v8, s34, v9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v11, s34, v48
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 64, v2
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v5, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v6, s[36:39], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[25:26], v4, s[8:11], 0 offen
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v7, 16, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v1, 64, v1
	v_and_b32_e32 v5, 48, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0xbf
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[32:33], v4, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v1, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v2, s[36:39], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0xe0, v0
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v50, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v36, 0, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v4, 1, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 48, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v49, v34, v4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v11, 6, v2
	v_or_b32_e32 v12, 8, v2
	v_or_b32_e32 v3, 10, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v35, 0, v49
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v35, v[25:26] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v36, v[13:16]
	ds_store_b128 v36, v[17:20] offset:4096
	v_and_b32_e32 v13, 48, v34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v35, v[32:33] offset:18432
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v36, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v36, v[28:31] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v38, v27, 6, v13
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v42, v1, 5, v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v39, 16, v38
	v_xor_b32_e32 v41, 32, v38
	v_xor_b32_e32 v40, 48, v38
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v44, 16, v42
	v_xor_b32_e32 v43, 32, v42
	v_xor_b32_e32 v45, 48, v42
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr45
.LBB0_3:                                ; %Flow81
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v14, s26, v27
	v_or_b32_e32 v7, s26, v7
	s_ashr_i32 s0, s5, 6
	v_or_b32_e32 v35, s33, v2
	v_or_b32_e32 v34, s33, v6
	v_mul_lo_u32 v36, v14, s0
	v_mul_lo_u32 v37, v7, s0
	v_or_b32_e32 v33, s33, v8
	v_or_b32_e32 v31, s33, v11
	v_or_b32_e32 v29, s33, v12
	v_or_b32_e32 v32, s33, v3
	v_or_b32_e32 v30, s33, v4
	v_or_b32_e32 v28, s33, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_lshl_or_b32 v38, v27, 6, v13
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_lshl_or_b32 v42, v1, 5, v38
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_xor_b32_e32 v39, 16, v38
	v_xor_b32_e32 v41, 32, v38
	v_xor_b32_e32 v40, 48, v38
	v_xor_b32_e32 v44, 16, v42
	v_xor_b32_e32 v43, 32, v42
	v_xor_b32_e32 v45, 48, v42
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s45, s0, 3
	s_add_i32 s15, s34, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s45, s45, -3
	s_mov_b32 s46, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s19, s17, 6
	s_mov_b32 s18, s30
	s_mov_b32 s30, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s15, s19
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s19, s18, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v51, s34, v46
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s19, s19, 26
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v53, s34, v48
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s18, s18, s19
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s20, s34, s44
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v51
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s18, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v52, s34, v9
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v54, v37, s18, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v51, 0x80000000, v53, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v36, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v35, s18, 1
	v_add_lshl_u32 v56, v34, s18, 1
	v_add_lshl_u32 v57, v33, s18, 1
	v_add_lshl_u32 v58, v31, s18, 1
	v_add_lshl_u32 v59, v29, s18, 1
	v_add_lshl_u32 v60, v32, s18, 1
	v_add_lshl_u32 v61, v30, s18, 1
	v_add_lshl_u32 v62, v28, s18, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[119:120], v51, s[8:11], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v51, 0x80000000, v53, vcc_lo
	v_dual_cndmask_b32 v53, 0x80000000, v54 :: v_dual_cndmask_b32 v54, 0x80000000, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v55, 0x80000000, v56 :: v_dual_cndmask_b32 v56, 0x80000000, v57
	v_cndmask_b32_e32 v57, 0x80000000, v58, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v58, 0x80000000, v59 :: v_dual_cndmask_b32 v59, 0x80000000, v60
	v_dual_cndmask_b32 v60, 0x80000000, v61 :: v_dual_cndmask_b32 v61, 0x80000000, v62
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v121, v51, s[4:7], 0 offen
	buffer_load_u16 v122, v53, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v123, v55, s[40:43], 0 offen
	buffer_load_u16 v124, v54, s[40:43], 0 offen
	buffer_load_u16 v125, v57, s[40:43], 0 offen
	buffer_load_u16 v126, v56, s[40:43], 0 offen
	buffer_load_u16 v127, v59, s[40:43], 0 offen
	buffer_load_u16 v128, v58, s[40:43], 0 offen
	buffer_load_u16 v129, v61, s[40:43], 0 offen
	buffer_load_u16 v130, v60, s[40:43], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v51, s20, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v52
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v53, s20, v47
	s_mov_b32 s18, s14
	s_mov_b32 s14, s1
	s_mov_b32 s1, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v52, 0x80000000, v53
	s_clause 0x1
	buffer_load_b128 v[67:70], v51, s[36:39], 0 offen
	buffer_load_b128 v[71:74], v52, s[36:39], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v51, s18, v38
	v_add_nc_u32_e32 v52, s18, v39
	v_add_nc_u32_e32 v53, s18, v41
	v_add_nc_u32_e32 v54, s18, v40
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v55, s1, v42
	v_add_nc_u32_e32 v56, s1, v44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[59:62], v51
	ds_load_b128 v[75:78], v51 offset:1024
	ds_load_b128 v[79:82], v52
	ds_load_b128 v[83:86], v52 offset:1024
	ds_load_b128 v[87:90], v53
	ds_load_b128 v[91:94], v53 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[95:98], v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[99:102], v54
	ds_load_b128 v[103:106], v54 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[107:110], v56
	v_add_nc_u32_e32 v57, s1, v43
	v_add_nc_u32_e32 v58, s1, v45
	ds_load_b128 v[111:114], v57
	ds_load_b128 v[115:118], v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s46, 1
	s_mov_b32 s16, s35
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s46, s1, 0
	s_add_i32 s18, s17, 1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s19, s46, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s46, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s35, s19, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s20, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[95:98], v[59:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[95:98], v[75:78], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s20, 0x4000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[79:82], v[51:58] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[107:110], v[83:86], v[59:66] neg_lo:[1,1,0]
	s_mov_b32 s17, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[111:114], v[87:90], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[111:114], v[91:94], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[99:102], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[115:118], v[103:106], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v75, 16, v121
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v76, 16, v122
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v78, 16, v124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v79, 16, v125
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v80, 16, v126
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v81, 16, v127
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v88, v79, v75 :: v_dual_lshlrev_b32 v83, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v24, v88, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v90, v81, v75
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v87, v80, v75 :: v_dual_lshlrev_b32 v84, 16, v130
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v77, 16, v123
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v78, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v20, v90, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v81, v76, v81 :: v_dual_lshlrev_b32 v82, 16, v128
	v_dual_mul_f32 v91, v84, v75 :: v_dual_add_nc_u32 v132, s35, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v22, v87, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v86, v77, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v89, v82, v75
	v_mul_f32_e32 v75, v83, v75
	v_mul_f32_e32 v77, v76, v77
	v_mul_f32_e32 v78, v76, v78
	v_mul_f32_e32 v80, v76, v80
	v_mul_f32_e32 v82, v76, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v18, v89, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v79, v76, v79 :: v_dual_fmac_f32 v16, v75, v58
	v_mul_f32_e32 v83, v76, v83
	v_dual_mul_f32 v76, v76, v84 :: v_dual_add_nc_u32 v131, s20, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v26, v86, v52 :: v_dual_fmac_f32 v11, v85, v51
	v_fmac_f32_e32 v25, v78, v59
	v_fmac_f32_e32 v23, v77, v60
	v_fmac_f32_e32 v21, v80, v61
	v_fmac_f32_e32 v19, v79, v62
	v_fmac_f32_e32 v17, v82, v63
	v_fmac_f32_e32 v15, v81, v64
	v_dual_fmac_f32 v13, v76, v65 :: v_dual_fmac_f32 v12, v83, v66
	v_fmac_f32_e32 v14, v91, v57
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v131, v[119:120] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[67:70]
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[71:74] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s35, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v10, s16, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v56, s11 :: v_dual_add_nc_u32 v47, s14, v38
	v_dual_mov_b32 v49, s4 :: v_dual_add_nc_u32 v46, s16, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[73:76], v47 offset:1024
	ds_load_b128 v[77:80], v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v51, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[65:68], v10
	ds_load_b128 v[69:72], v46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v46, s14, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v55, s10 :: v_dual_add_nc_u32 v2, s16, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s14, v41
	ds_load_b128 v[85:88], v46 offset:1024
	ds_load_b128 v[89:92], v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v53, s8 :: v_dual_add_nc_u32 v6, s16, v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[6:9], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v54, s9 :: v_dual_add_nc_u32 v47, s14, v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[81:84], v10
	ds_load_b128 v[93:96], v10 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v52, s7
	v_mov_b32_e32 v50, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[97:100], v47
	ds_load_b128 v[101:104], v47 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[73:76], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[85:88], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[6:9], v[81:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[6:9], v[93:96], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[2:5], v[97:100], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[2:5], v[101:104], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v2, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v7, v62
	v_cvt_f32_i32_e32 v4, v63
	v_cvt_f32_i32_e32 v8, v64
	v_cvt_f32_i32_e32 v46, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v47, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v9, v57
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v36, s4, 1
	v_add_lshl_u32 v54, v37, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v35, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v56, v34, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v74, v53, s[12:15], 0 offen
	buffer_load_u16 v75, v54, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v33, s4, 1
	v_dual_cndmask_b32 v54, 0x80000000, v55 :: v_dual_cndmask_b32 v55, 0x80000000, v56
	v_add_lshl_u32 v56, v31, s4, 1
	v_add_lshl_u32 v57, v29, s4, 1
	v_add_lshl_u32 v58, v32, s4, 1
	v_add_lshl_u32 v59, v30, s4, 1
	v_add_lshl_u32 v60, v28, s4, 1
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	s_clause 0x7
	buffer_load_u16 v76, v54, s[28:31], 0 offen
	buffer_load_u16 v77, v55, s[28:31], 0 offen
	buffer_load_u16 v72, v53, s[28:31], 0 offen
	buffer_load_u16 v73, v56, s[28:31], 0 offen
	buffer_load_u16 v70, v57, s[28:31], 0 offen
	buffer_load_u16 v71, v58, s[28:31], 0 offen
	buffer_load_u16 v68, v59, s[28:31], 0 offen
	buffer_load_u16 v69, v60, s[28:31], 0 offen
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v67, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s35, v44
	v_add_nc_u32_e32 v42, s35, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v38, s1, v38
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v44, s35, v45
	v_add_nc_u32_e32 v43, s35, v43
	ds_load_b128 v[63:66], v1
	ds_load_b128 v[78:81], v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s1, v41
	v_add_nc_u32_e32 v39, s1, v39
	ds_load_b128 v[82:85], v38 offset:1024
	ds_load_b128 v[86:89], v38
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[90:93], v44
	ds_load_b128 v[94:97], v43
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[98:101], v1
	ds_load_b128 v[102:105], v39 offset:1024
	ds_load_b128 v[106:109], v39
	v_add_nc_u32_e32 v53, s1, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v45, s11 :: v_dual_mov_b32 v40, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v44, s10 :: v_dual_mov_b32 v43, s9
	v_dual_mov_b32 v42, s8 :: v_dual_mov_b32 v41, s7
	v_dual_mov_b32 v39, s5 :: v_dual_mov_b32 v38, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[114:117], v53
	ds_load_b128 v[118:121], v53 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[78:81], v[86:89], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[78:81], v[82:85], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[106:109], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[63:66], v[102:105], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[94:97], v[98:101], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[94:97], v[110:113], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[90:93], v[114:117], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[90:93], v[118:121], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v54, v59
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v55, v61
	v_cvt_f32_i32_e32 v59, v62
	v_cvt_f32_i32_e32 v61, v38
	v_cvt_f32_i32_e32 v65, v39
	v_cvt_f32_i32_e32 v64, v40
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v60, v42
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v62, v44
	v_cvt_f32_i32_e32 v66, v45
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s34, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v38.h, v75.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v36, v36, s1, 1
	v_add_lshl_u32 v37, v37, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s1, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v35, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v34, s1, 1
	v_add_lshl_u32 v31, v31, s1, 1
	v_add_lshl_u32 v33, v33, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v29, v29, s1, 1
	v_add_lshl_u32 v32, v32, s1, 1
	v_add_lshl_u32 v30, v30, s1, 1
	v_add_lshl_u32 v28, v28, s1, 1
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	s_clause 0x7
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v39.h, v74.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v41.h, v77.l
	v_mov_b16_e32 v42.h, v76.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v43.h, v73.l
	v_mov_b16_e32 v44.h, v72.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v45.h, v71.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v68.h, v70.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v69.h, v69.l
	v_mov_b16_e32 v70.h, v68.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v39.l, v38.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v41.l, v38.l
	v_mov_b16_e32 v42.l, v38.l
	v_mov_b16_e32 v43.l, v38.l
	v_mov_b16_e32 v44.l, v38.l
	v_mov_b16_e32 v45.l, v38.l
	v_mov_b16_e32 v68.l, v38.l
	v_mov_b16_e32 v69.l, v38.l
	v_mov_b16_e32 v70.l, v38.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v40, 1, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v72, 0x7632 :: v_dual_mul_f32 v81, v38, v42
	v_mov_b16_e32 v73.h, v38.l
	v_mov_b16_e32 v74.h, v38.l
	v_mov_b16_e32 v75.h, v38.l
	v_mov_b16_e32 v76.h, v38.l
	v_mov_b16_e32 v77.h, v38.l
	v_mov_b16_e32 v78.h, v38.l
	v_mov_b16_e32 v79.h, v38.l
	v_mov_b16_e32 v80.h, v38.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v38, v41
	v_dual_mul_f32 v83, v38, v44 :: v_dual_mul_f32 v44, v44, v39
	v_mul_f32_e32 v84, v38, v43
	v_dual_mul_f32 v85, v38, v68 :: v_dual_mul_f32 v68, v68, v39
	v_dual_mul_f32 v86, v38, v45 :: v_dual_mul_f32 v45, v45, v39
	v_mul_f32_e32 v87, v38, v70
	v_dual_mul_f32 v38, v38, v69 :: v_dual_mul_f32 v69, v69, v39
	v_dual_mul_f32 v41, v41, v39 :: v_dual_and_b32 v40, 0x78, v40
	v_mul_f32_e32 v42, v42, v39
	v_mul_f32_e32 v43, v43, v39
	v_mul_f32_e32 v39, v70, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v85, v10, v17
	v_fma_f32 v8, v69, v8, v16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v27, s27, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v44, v2, v22
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s26, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v17, v10, s3
	v_cndmask_b32_e64 v8, v16, v8, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v41, v5, v26
	v_fma_f32 v6, v43, v6, v24
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v27, s0, v40, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v82, v50, v23
	v_fma_f32 v43, v86, v48, v15
	v_fma_f32 v7, v45, v7, v20
	v_fma_f32 v3, v68, v3, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v22, v2, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v71, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v40, s3
	v_cndmask_b32_e64 v5, v26, v5, s3
	v_cndmask_b32_e64 v15, v15, v43, s3
	v_cndmask_b32_e64 v7, v20, v7, s3
	v_cndmask_b32_e64 v3, v18, v3, s3
	v_cndmask_b32_e64 v6, v24, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v51, v12
	v_fma_f32 v46, v81, v46, v25
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s1, s27, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s26, s14
	s_mov_b32 s16, 0x76543210
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v38, s3
	v_cndmask_b32_e64 v25, v25, v46, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v39, v4, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v17, 16, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v42, v9, v11
	v_fma_f32 v42, v83, v49, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v14, v4, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v14, 16, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshlrev_b32_e32 v39, 1, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v11, v9, s3
	v_cndmask_b32_e64 v11, v21, v42, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v21, 16, v33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v22, 16, v32
	v_lshlrev_b32_e32 v18, 16, v35
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v28
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v30, v17, v14 :: v_dual_mul_f32 v17, v16, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v21, v14
	v_mul_f32_e32 v34, v22, v14
	v_mul_f32_e32 v22, v16, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v65, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v35, v28, v14 :: v_dual_lshlrev_b32 v24, 16, v29
	v_mul_f32_e32 v29, v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v63, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v23, v17, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v16, v21
	v_mul_f32_e32 v18, v16, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v29, v1, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v22, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v17.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v24, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v31, v53, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v9, v1, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v15.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v20, v14
	v_mul_f32_e32 v14, v26, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v64, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v16, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v41, v84, v52, v19
	v_fma_f32 v14, v14, v59, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v21, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v18, v61, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v29, s2
	v_cndmask_b32_e64 v19, v19, v41, s3
	v_cndmask_b32_e64 v8, v8, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v14, v1, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v87, v47, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v25, v18, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v11.h
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v1, v1, v14, 0x7fff
	v_and_b32_e32 v14, 1, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v33, v54, v3
	v_fma_f32 v33, v35, v55, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v44, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v16, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v33, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v2, v2
	v_mov_b16_e32 v74.l, v9.h
	v_bfe_u32 v21, v3, 16, 1
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v23, v4, 16, 1
	v_cmp_o_f32_e64 s11, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v62, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v21, 0x7fff
	v_and_b32_e32 v21, 1, v77
	v_add3_u32 v4, v4, v23, 0x7fff
	v_add_lshl_u32 v27, v27, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v28, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v16, v24
	v_mul_f32_e32 v16, v16, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v30, v56, v5
	v_fma_f32 v30, v32, v57, v6
	v_fma_f32 v32, v34, v58, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v66, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v26, s2
	v_cndmask_b32_e64 v6, v6, v30, s2
	v_cndmask_b32_e64 v7, v7, v32, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v16, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v16, v5, 16, 1
	v_cmp_o_f32_e64 s4, v6, v6
	v_bfe_u32 v22, v7, 16, 1
	v_cmp_o_f32_e64 s0, v5, v5
	v_mov_b16_e32 v79.l, v12.h
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v5, v16, 0x7fff
	v_add3_u32 v7, v7, v22, 0x7fff
	v_and_b32_e32 v16, 1, v74
	v_and_b32_e32 v23, 1, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v67, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s8
	v_add3_u32 v5, v9, v16, 0x7fff
	v_mov_b16_e32 v80.l, v13.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v19, v20, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v19, v2, 16, 1
	v_bfe_u32 v20, v6, 16, 1
	v_cmp_o_f32_e64 s12, v8, v8
	v_cmp_o_f32_e64 s14, v13, v13
	v_mov_b16_e32 v75.l, v18.h
	v_add3_u32 v2, v2, v19, 0x7fff
	v_add3_u32 v6, v6, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_cmp_o_f32_e64 s9, v15, v15
	v_and_b32_e32 v19, 1, v75
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s4
	v_and_b32_e32 v20, 1, v76
	v_cmp_o_f32_e64 s13, v12, v12
	v_add3_u32 v12, v12, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v11, v20, 0x7fff
	v_add3_u32 v11, v18, v19, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s6
	v_dual_cndmask_b32 v6, v3, v1 :: v_dual_cndmask_b32 v1, v1, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v60, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v24, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v9, v9
	v_bfe_u32 v24, v8, 16, 1
	v_add3_u32 v9, v17, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v78.l, v10.h
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v8, v24, 0x7fff
	v_and_b32_e32 v24, 1, v80
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s5
	v_cndmask_b32_e32 v9, 0x1054, v71, vcc_lo
	v_dual_cndmask_b32 v11, 0x3276, v72 :: v_dual_and_b32 v22, 1, v78
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s12
	v_add3_u32 v8, v13, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v11, v11, 8, v11
	v_cmp_o_f32_e64 s10, v10, v10
	v_add3_u32 v7, v10, v22, 0x7fff
	v_add3_u32 v10, v15, v21, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s14
	v_and_b32_e32 v8, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v11
	v_cndmask_b16 v10.l, 0x7fff, v7.h, s10
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s9
	v_cndmask_b16 v7.h, 0x7fff, v12.h, s13
	v_dual_cndmask_b32 v3, v4, v2 :: v_dual_cndmask_b32 v2, v2, v4
	v_lshl_or_b32 v4, v8, 4, v8
	v_lshl_or_b32 v8, v9, 4, v9
	v_dual_cndmask_b32 v11, v10, v0 :: v_dual_cndmask_b32 v0, v0, v10
	v_cndmask_b32_e32 v9, v7, v5, vcc_lo
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_and_b32_e32 v7, 0x5040504, v4
	v_and_b32_e32 v8, 0x7060706, v8
	v_permlanex16_b32 v4, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v0, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v5, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v6, v7
	v_perm_b32 v1, v1, v6, v8
	v_perm_b32 v2, v4, v3, v7
	v_perm_b32 v3, v4, v3, v8
	v_perm_b32 v4, v10, v11, v7
	v_perm_b32 v5, v10, v11, v8
	v_perm_b32 v6, v12, v9, v7
	v_perm_b32 v7, v12, v9, v8
	s_clause 0x1
	buffer_store_b128 v[0:3], v39, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v27, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 47
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 133
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5672
; TotalNumSgprs: 49
; NumVgprs: 133
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 241
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     133
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
