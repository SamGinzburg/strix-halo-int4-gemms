	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v19, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s23, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_load_b32 s9, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 28, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 0x37c, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s10
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s9, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s9, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s10, s10, s4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v10, v19, 4, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v12, s9, 7, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s36, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s10
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s34, s26, s27
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s9, 31
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s31, s26, s9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s33, s9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v13, v2, v4, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s35, s34, s9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s31, s36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s36, v13
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s4, s35, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v3, s2, v10
	v_add_nc_u32_e32 v4, s2, v12
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v5, s4, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s36, 32
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s4, v12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s36, v13
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v3, 32, v3
	v_add_nc_u32_e32 v15, 32, v4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v9, 0x80000000, v4, s3
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v16, 32, v5
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v11, 0x80000000, v5, s3
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v17, 32, v6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v14, 0x80000000, v6, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b32 v18, v2, s[16:19], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v7, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x3
	buffer_load_b128 v[4:7], v8, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v9, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v11, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v14, s[20:23], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v15, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v9, 0x80000000, v16, s2
	v_cndmask_b32_e64 v11, 0x80000000, v17, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v16, v2, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[32:35], v3, s[20:23], 0 offen
	buffer_load_b128 v[36:39], v8, s[20:23], 0 offen
	buffer_load_b128 v[40:43], v9, s[20:23], 0 offen
	buffer_load_b128 v[44:47], v11, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v3, v0, 5, 1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v2, 4, v0
	v_bfe_i32 v8, v0, 3, 1
	v_and_b32_e32 v11, 4, v0
	s_mov_b32 s5, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 0x90, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v9, 0xf70, v2
	v_and_b32_e32 v8, 0x90, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x5f
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v14, v3, v1
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v15, v8, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, 0, v14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v8, 0, v15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v1, v18 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v8, v[4:7]
	s_waitcnt vmcnt(7)
	ds_store_b128 v8, v[20:23] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v8, v[24:27] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v8, v[28:31] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v1, v16 offset:33792
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[32:35] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[36:39] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[40:43] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[44:47] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v9, 0x160, v3
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v82, 0xe00, v2, v9
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr82
.LBB0_3:                                ; %Flow304
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[24:25], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v9, 0x160, v3
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s6, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v82, 0xe00, v2, v9
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x90, v1
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v16, v1, v9
	v_or_b32_e32 v83, v82, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v2, s5
	v_xor_b32_e32 v84, 16, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v85, 16, v83
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v21, 0
	s_add_i32 s36, s36, 32
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s29, 0, 0x8400
	s_add_i32 s28, 0, 0x2000
	s_add_i32 s30, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 5
	s_mov_b32 s8, s30
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s36, s6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v91, s8, v85
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v86, s6, v13
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s6, s6, s35
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v87, s7, v10
	v_add_nc_u32_e32 v88, s7, v12
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v89, s6, v10
	v_add_nc_u32_e32 v90, s6, v12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v198, v86, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[150:153], v87, s[20:23], 0 offen
	buffer_load_b128 v[154:157], v88, s[20:23], 0 offen
	buffer_load_b128 v[158:161], v89, s[20:23], 0 offen
	buffer_load_b128 v[162:165], v90, s[20:23], 0 offen
	s_mov_b32 s6, s0
	s_mov_b32 s7, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v86, s6, v16
	v_add_nc_u32_e32 v87, s6, v84
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v88, s7, v83
	v_add_nc_u32_e32 v89, s7, v85
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v90, s8, v83
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[134:137], v86
	ds_load_b128 v[166:169], v86 offset:512
	ds_load_b128 v[170:173], v87
	ds_load_b128 v[174:177], v87 offset:512
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[110:113], v88
	ds_load_b128 v[118:121], v88 offset:4096
	ds_load_b128 v[178:181], v89
	ds_load_b128 v[182:185], v89 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[142:145], v90
	ds_load_b128 v[186:189], v90 offset:4096
	ds_load_b128 v[190:193], v91
	ds_load_b128 v[194:197], v91 offset:4096
	s_mov_b32 s30, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s38, 1
	s_mov_b32 s4, s28
	s_cmp_lt_i32 s1, 2
	s_mov_b32 s0, s29
	s_cselect_b32 s38, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s38, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s7, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s28, s7, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s29, s1, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[110:113], v[134:137], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[118:121], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[110:113], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[118:121], v[166:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[142:145], v[134:137], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[186:189], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[142:145], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[186:189], v[166:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[86:93], v[178:181], v[170:173], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[182:185], v[170:173], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[178:181], v[174:177], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[182:185], v[174:177], v[110:117] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[190:193], v[170:173], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[194:197], v[170:173], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[190:193], v[174:177], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[194:197], v[174:177], v[142:149] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v60, v60, v96 :: v_dual_add_nc_u32 v199, s1, v14
	v_dual_add_f32 v45, v45, v105 :: v_dual_add_nc_u32 v200, s28, v15
	v_dual_add_f32 v81, v81, v87 :: v_dual_add_f32 v80, v80, v86
	v_dual_add_f32 v79, v79, v89 :: v_dual_add_f32 v78, v78, v88
	v_dual_add_f32 v73, v73, v91 :: v_dual_add_f32 v72, v72, v90
	v_dual_add_f32 v69, v69, v93 :: v_dual_add_f32 v68, v68, v92
	v_dual_add_f32 v65, v65, v95 :: v_dual_add_f32 v56, v56, v98
	v_dual_add_f32 v64, v64, v94 :: v_dual_add_f32 v61, v61, v97
	v_dual_add_f32 v57, v57, v99 :: v_dual_add_f32 v52, v52, v100
	v_add_f32_e32 v53, v53, v101
	v_dual_add_f32 v49, v49, v103 :: v_dual_add_f32 v48, v48, v102
	v_dual_add_f32 v44, v44, v104 :: v_dual_add_f32 v41, v41, v107
	v_dual_add_f32 v40, v40, v106 :: v_dual_add_f32 v37, v37, v109
	v_dual_add_f32 v36, v36, v108 :: v_dual_add_f32 v33, v33, v111
	v_dual_add_f32 v32, v32, v110 :: v_dual_add_f32 v29, v29, v113
	v_dual_add_f32 v28, v28, v112 :: v_dual_add_f32 v23, v23, v115
	v_dual_add_f32 v22, v22, v114 :: v_dual_add_f32 v21, v21, v117
	v_dual_add_f32 v20, v20, v116 :: v_dual_add_f32 v75, v75, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v74, v74, v118 :: v_dual_add_f32 v77, v77, v121
	v_dual_add_f32 v76, v76, v120 :: v_dual_add_f32 v71, v71, v123
	v_dual_add_f32 v70, v70, v122 :: v_dual_add_f32 v67, v67, v125
	v_dual_add_f32 v66, v66, v124 :: v_dual_add_f32 v63, v63, v127
	v_dual_add_f32 v62, v62, v126 :: v_dual_add_f32 v59, v59, v129
	v_dual_add_f32 v58, v58, v128 :: v_dual_add_f32 v55, v55, v131
	v_dual_add_f32 v54, v54, v130 :: v_dual_add_f32 v51, v51, v133
	v_dual_add_f32 v50, v50, v132 :: v_dual_add_f32 v47, v47, v135
	v_dual_add_f32 v46, v46, v134 :: v_dual_add_f32 v43, v43, v137
	v_dual_add_f32 v42, v42, v136 :: v_dual_add_f32 v39, v39, v139
	v_dual_add_f32 v38, v38, v138 :: v_dual_add_f32 v17, v17, v140
	v_dual_add_f32 v18, v18, v141 :: v_dual_add_f32 v35, v35, v143
	v_dual_add_f32 v34, v34, v142 :: v_dual_add_f32 v31, v31, v145
	v_dual_add_f32 v30, v30, v144 :: v_dual_add_f32 v27, v27, v147
	v_dual_add_f32 v26, v26, v146 :: v_dual_add_f32 v25, v25, v149
	v_add_f32_e32 v24, v24, v148
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s1, s28, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s37
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v199, v198 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v200, v[150:153]
	s_waitcnt vmcnt(2)
	ds_store_b128 v200, v[154:157] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v200, v[158:161] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v200, v[162:165] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v11
	s_mov_b32 s5, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v74, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s29, 0, 0x8400
	s_add_i32 s28, 0, 0x2000
	s_add_i32 s30, 0, 0x4000
	v_mov_b32_e32 v75, v74
	v_mov_b32_e32 v70, v74
	v_mov_b32_e32 v72, v74
	v_mov_b32_e32 v66, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v68, v74 :: v_dual_mov_b32 v69, v75
	v_dual_mov_b32 v81, v75 :: v_dual_mov_b32 v80, v74
	v_mov_b32_e32 v71, v75
	v_mov_b32_e32 v73, v75
	v_dual_mov_b32 v77, v75 :: v_dual_mov_b32 v76, v74
	v_dual_mov_b32 v79, v75 :: v_dual_mov_b32 v78, v74
	v_dual_mov_b32 v67, v75 :: v_dual_mov_b32 v62, v74
	v_dual_mov_b32 v63, v75 :: v_dual_mov_b32 v64, v74
	v_dual_mov_b32 v65, v75 :: v_dual_mov_b32 v54, v74
	v_dual_mov_b32 v55, v75 :: v_dual_mov_b32 v56, v74
	v_dual_mov_b32 v57, v75 :: v_dual_mov_b32 v58, v74
	v_dual_mov_b32 v59, v75 :: v_dual_mov_b32 v60, v74
	v_dual_mov_b32 v61, v75 :: v_dual_mov_b32 v50, v74
	v_dual_mov_b32 v51, v75 :: v_dual_mov_b32 v52, v74
	v_dual_mov_b32 v53, v75 :: v_dual_mov_b32 v46, v74
	v_dual_mov_b32 v47, v75 :: v_dual_mov_b32 v48, v74
	v_dual_mov_b32 v49, v75 :: v_dual_mov_b32 v38, v74
	v_dual_mov_b32 v39, v75 :: v_dual_mov_b32 v40, v74
	v_dual_mov_b32 v41, v75 :: v_dual_mov_b32 v42, v74
	v_dual_mov_b32 v43, v75 :: v_dual_mov_b32 v44, v74
	v_mov_b32_e32 v45, v75
	v_dual_mov_b32 v17, v74 :: v_dual_mov_b32 v18, v75
	v_dual_mov_b32 v36, v74 :: v_dual_mov_b32 v37, v75
	v_dual_mov_b32 v34, v74 :: v_dual_mov_b32 v35, v75
	v_dual_mov_b32 v32, v74 :: v_dual_mov_b32 v33, v75
	v_dual_mov_b32 v26, v74 :: v_dual_mov_b32 v27, v75
	v_dual_mov_b32 v22, v74 :: v_dual_mov_b32 v23, v75
	v_dual_mov_b32 v30, v74 :: v_dual_mov_b32 v31, v75
	v_dual_mov_b32 v28, v74 :: v_dual_mov_b32 v29, v75
	v_dual_mov_b32 v24, v74 :: v_dual_mov_b32 v25, v75
	v_dual_mov_b32 v20, v74 :: v_dual_mov_b32 v21, v75
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v86, 0, 1, s3
	s_mov_b32 s4, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v83, 0x90, 0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v84, v83, v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v82, v82, v83
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v85, 16, v84
	v_add_nc_u32_e32 v1, s0, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v83, 16, v82
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s0, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v86
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v2 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v86, s5, v82
	v_add_nc_u32_e32 v87, s5, v83
	ds_load_b128 v[118:121], v86
	ds_load_b128 v[122:125], v86 offset:4096
	ds_load_b128 v[126:129], v87 offset:4096
	ds_load_b128 v[130:133], v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	v_dual_mov_b32 v93, s11 :: v_dual_mov_b32 v90, s8
	v_dual_mov_b32 v92, s10 :: v_dual_mov_b32 v91, s9
	v_dual_mov_b32 v89, s7 :: v_dual_mov_b32 v88, s6
	v_dual_mov_b32 v87, s5 :: v_dual_mov_b32 v86, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[118:121], v[13:16], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[122:125], v[13:16], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[118:121], v[9:12], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[130:133], v[5:8], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[122:125], v[9:12], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[126:129], v[5:8], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[130:133], v[1:4], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_wmma_i32_16x16x16_iu8 v[86:93], v[126:129], v[1:4], v[86:93] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v79, v79, v97 :: v_dual_add_f32 v78, v78, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v104
	v_cvt_f32_i32_e32 v97, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v73, v73, v99 :: v_dual_add_f32 v72, v72, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v98, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v61, v105 :: v_dual_add_f32 v60, v60, v96
	v_add_f32_e32 v57, v57, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v109
	v_cvt_f32_i32_e32 v97, v108
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v56, v56, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v98, v111
	v_cvt_f32_i32_e32 v99, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v53, v53, v96 :: v_dual_add_f32 v52, v52, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v113
	v_cvt_f32_i32_e32 v97, v112
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v49, v49, v98 :: v_dual_add_f32 v48, v48, v99
	v_dual_add_f32 v45, v45, v96 :: v_dual_add_f32 v44, v44, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v115
	v_cvt_f32_i32_e32 v98, v114
	v_cvt_f32_i32_e32 v99, v117
	v_cvt_f32_i32_e32 v97, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v86 :: v_dual_add_f32 v29, v29, v89
	v_add_f32_e32 v28, v28, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v86, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v87, v93
	v_cvt_f32_i32_e32 v88, v92
	v_cvt_f32_i32_e32 v89, v95
	v_cvt_f32_i32_e32 v90, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v69, v69, v101 :: v_dual_add_f32 v68, v68, v100
	v_dual_add_f32 v65, v65, v103 :: v_dual_add_f32 v64, v64, v102
	v_dual_add_f32 v41, v41, v96 :: v_dual_add_f32 v40, v40, v98
	v_dual_add_f32 v37, v37, v99 :: v_dual_add_f32 v36, v36, v97
	v_dual_add_f32 v22, v22, v86 :: v_dual_add_f32 v21, v21, v87
	v_dual_add_f32 v20, v20, v88 :: v_dual_add_f32 v81, v81, v89
	v_add_f32_e32 v80, v80, v90
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v86, s30, v82
	v_add_nc_u32_e32 v87, s30, v83
	ds_load_b128 v[118:121], v86
	ds_load_b128 v[122:125], v86 offset:4096
	ds_load_b128 v[126:129], v87 offset:4096
	ds_load_b128 v[130:133], v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v93, s11 :: v_dual_mov_b32 v90, s8
	v_dual_mov_b32 v92, s10 :: v_dual_mov_b32 v91, s9
	v_dual_mov_b32 v89, s7 :: v_dual_mov_b32 v88, s6
	v_dual_mov_b32 v87, s5 :: v_dual_mov_b32 v86, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[118:121], v[13:16], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[122:125], v[13:16], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[118:121], v[9:12], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[122:125], v[9:12], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[130:133], v[5:8], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[126:129], v[5:8], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[130:133], v[1:4], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[126:129], v[1:4], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v96
	v_cvt_f32_i32_e32 v2, v97
	v_cvt_f32_i32_e32 v3, v98
	v_cvt_f32_i32_e32 v4, v99
	v_cvt_f32_i32_e32 v5, v100
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v76, v76, v1 :: v_dual_add_f32 v77, v77, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v105
	v_cvt_f32_i32_e32 v2, v104
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v71, v71, v4 :: v_dual_add_f32 v70, v70, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v107
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v59, v59, v1 :: v_dual_add_f32 v58, v58, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v109
	v_cvt_f32_i32_e32 v4, v106
	v_cvt_f32_i32_e32 v2, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v55, v55, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v51, v51, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v113
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v54, v54, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v50, v50, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v43, v43, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v115
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v47, v47, v3 :: v_dual_add_f32 v46, v46, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v114
	v_cvt_f32_i32_e32 v4, v117
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v42, v42, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v39, v39, v1 :: v_dual_add_f32 v38, v38, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v87
	v_cvt_f32_i32_e32 v6, v101
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v17, v17, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v86
	v_cvt_f32_i32_e32 v3, v89
	v_cvt_f32_i32_e32 v4, v88
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v35, v35, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v91
	v_cvt_f32_i32_e32 v7, v102
	v_cvt_f32_i32_e32 v8, v103
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v67, v67, v6 :: v_dual_add_f32 v66, v66, v5
	v_dual_add_f32 v34, v34, v2 :: v_dual_add_f32 v31, v31, v3
	v_add_f32_e32 v30, v30, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v90
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v27, v27, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v93
	v_cvt_f32_i32_e32 v3, v92
	v_cvt_f32_i32_e32 v4, v95
	v_cvt_f32_i32_e32 v5, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v63, v63, v8 :: v_dual_add_f32 v62, v62, v7
	v_dual_add_f32 v26, v26, v2 :: v_dual_add_f32 v25, v25, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v24, v24, v3 :: v_dual_add_f32 v75, v75, v4
	v_add_f32_e32 v74, v74, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v1, s29, v84
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, s29, v85
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v84, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v2 offset:512
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v85, 0
	v_cmp_ne_u32_e64 s0, 1, v84
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v121, s11 :: v_dual_add_nc_u32 v84, s28, v82
	v_dual_mov_b32 v120, s10 :: v_dual_add_nc_u32 v85, s28, v83
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[88:91], v84
	ds_load_b128 v[110:113], v84 offset:4096
	ds_load_b128 v[130:133], v85 offset:4096
	ds_load_b128 v[134:137], v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v119, s9 :: v_dual_mov_b32 v118, s8
	v_dual_mov_b32 v117, s7 :: v_dual_mov_b32 v116, s6
	v_dual_mov_b32 v115, s5 :: v_dual_mov_b32 v114, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[88:91], v[13:16], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[110:113], v[13:16], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[88:91], v[9:12], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[110:113], v[9:12], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[134:137], v[5:8], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[130:133], v[5:8], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[134:137], v[1:4], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[130:133], v[1:4], v[114:121] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v124
	v_cvt_f32_i32_e32 v89, v125
	v_cvt_f32_i32_e32 v84, v126
	v_cvt_f32_i32_e32 v86, v127
	v_cvt_f32_i32_e32 v88, v128
	v_cvt_f32_i32_e32 v91, v129
	v_cvt_f32_i32_e32 v90, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v92, v98
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v96, v100
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v100, v106
	v_cvt_f32_i32_e32 v103, v107
	v_cvt_f32_i32_e32 v104, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v106, v114
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v108, v118
	v_cvt_f32_i32_e32 v113, v119
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v118, v121
	v_cvt_f32_i32_e32 v109, v122
	v_cvt_f32_i32_e32 v110, v123
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v149, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v82, s1, v82
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v152, s11 :: v_dual_add_nc_u32 v83, s1, v83
	v_mov_b32_e32 v151, s10
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[153:156], v82
	ds_load_b128 v[157:160], v82 offset:4096
	ds_load_b128 v[161:164], v83 offset:4096
	ds_load_b128 v[165:168], v83
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v150, s9 :: v_dual_mov_b32 v149, s8
	v_dual_mov_b32 v148, s7 :: v_dual_mov_b32 v147, s6
	v_dual_mov_b32 v146, s5 :: v_dual_mov_b32 v145, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[153:156], v[13:16], v[145:152] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[157:160], v[13:16], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[153:156], v[9:12], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[157:160], v[9:12], v[145:152] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[5:8], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[161:164], v[5:8], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[1:4], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[161:164], v[1:4], v[145:152] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v119, v125
	v_cvt_f32_i32_e32 v122, v126
	v_cvt_f32_i32_e32 v123, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v127, v133
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v131, v135
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v133, v137
	v_cvt_f32_i32_e32 v136, v138
	v_cvt_f32_i32_e32 v137, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v135, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v142, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v145, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v143, v149
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v147, v151
	v_cvt_f32_i32_e32 v149, v152
.LBB0_16:
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v151, v81, v110 :: v_dual_and_b32 v82, 15, v0
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v2, s26, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s33, v82
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v153, v79, v89 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s28, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v156, v72, v84 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_add_f32 v157, v69, v91 :: v_dual_and_b32 v150, 0xf0, v0
	v_dual_add_f32 v154, v78, v85 :: v_dual_add_f32 v115, v56, v92
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v3, 32, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v150, 2, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v160, v64, v90 :: v_dual_add_f32 v161, v61, v97
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v11, v1, s[28:31], 0 offen
	buffer_load_u16 v10, v3, s[28:31], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v152, v80, v109 :: v_dual_lshlrev_b32 v3, 5, v19
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v2, s[28:31], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v155, v73, v86 :: v_dual_lshlrev_b32 v2, 1, v0
	v_add_f32_e32 v159, v65, v93
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 28, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v162, v60, v94 :: v_dual_add_f32 v109, v53, v99
	v_dual_add_f32 v114, v57, v95 :: v_dual_add_f32 v13, v48, v98
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v9, v4, v3, v2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s34, v0, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v110, v52, v96 :: v_dual_add_f32 v5, v45, v105
	v_dual_add_f32 v12, v49, v101 :: v_dual_add_f32 v3, v40, v100
	v_dual_add_f32 v6, v44, v102 :: v_dual_add_f32 v85, v23, v113
	v_dual_add_f32 v98, v37, v107 :: v_dual_add_f32 v97, v32, v106
	v_dual_add_f32 v96, v33, v111 :: v_dual_add_f32 v107, v75, v120
	v_dual_add_f32 v90, v29, v117 :: v_dual_add_f32 v117, v71, v122
	v_dual_add_f32 v92, v28, v112 :: v_dual_add_f32 v83, v21, v118
	v_add_f32_e32 v86, v22, v108
	v_add_f32_e32 v84, v20, v116
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v108, v74, v87 :: v_dual_add_f32 v111, v77, v124
	v_dual_add_f32 v116, v76, v121 :: v_dual_add_f32 v121, v63, v128
	v_dual_add_f32 v118, v70, v119 :: v_dual_add_f32 v119, v67, v126
	v_dual_add_f32 v120, v66, v123 :: v_dual_add_f32 v7, v43, v140
	v_dual_add_f32 v122, v62, v125 :: v_dual_add_f32 v123, v59, v132
	v_dual_add_f32 v112, v51, v134 :: v_dual_add_f32 v113, v50, v131
	v_dual_add_f32 v14, v47, v136 :: v_dual_add_f32 v15, v46, v133
	v_dual_add_f32 v8, v42, v137 :: v_dual_add_f32 v93, v27, v146
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v102, v150, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v111, s2
	v_cndmask_b32_e64 v71, v71, v117, s2
	v_cndmask_b32_e64 v67, v67, v119, s2
	v_cndmask_b32_e64 v111, v64, v160, s2
	v_cndmask_b32_e64 v63, v63, v121, s2
	v_cndmask_b32_e64 v117, v61, v161, s2
	v_cndmask_b32_e64 v61, v59, v123, s2
	v_cndmask_b32_e64 v56, v56, v115, s2
	v_cndmask_b32_e64 v57, v57, v114, s2
	v_cndmask_b32_e64 v52, v52, v110, s2
	v_cndmask_b32_e64 v59, v53, v109, s2
	v_cndmask_b32_e64 v109, v50, v113, s2
	v_cndmask_b32_e64 v110, v51, v112, s2
	v_cndmask_b32_e64 v48, v48, v13, s2
	v_cndmask_b32_e64 v51, v49, v12, s2
	v_cndmask_b32_e64 v119, v46, v15, s2
	v_cndmask_b32_e64 v44, v44, v6, s2
	v_cndmask_b32_e64 v45, v45, v5, s2
	v_cndmask_b32_e64 v121, v42, v8, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v124, v58, v129 :: v_dual_add_f32 v101, v35, v144
	v_add_f32_e32 v125, v55, v130
	v_dual_add_f32 v4, v39, v138 :: v_dual_add_f32 v105, v38, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v116, s2
	v_cndmask_b32_e64 v116, v60, v162, s2
	v_cndmask_b32_e64 v60, v58, v124, s2
	v_cndmask_b32_e64 v55, v55, v125, s2
	v_cndmask_b32_e64 v42, v40, v3, s2
	v_cndmask_b32_e64 v124, v39, v4, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v126, v54, v127 :: v_dual_add_f32 v95, v31, v148
	v_add_f32_e32 v19, v18, v142
	v_add_f32_e32 v100, v34, v141
	v_add_f32_e32 v91, v26, v143
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v106, 1, v150
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v153, s2
	v_cndmask_b32_e64 v78, v78, v154, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v123, v38, v105, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v38, s33, s26, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v155, s2
	v_cndmask_b32_e64 v69, v69, v157, s2
	v_cndmask_b32_e64 v65, v65, v159, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v101, s2
	v_cndmask_b32_e64 v31, v31, v95, s2
	v_cndmask_b32_e64 v33, v33, v96, s2
	v_cndmask_b32_e64 v32, v32, v97, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.h, v87.h
	v_mov_b16_e32 v46.h, v87.h
	v_mov_b16_e32 v50.h, v87.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v93, s2
	v_cndmask_b32_e64 v29, v29, v90, s2
	v_cndmask_b32_e64 v28, v28, v92, s2
	v_cndmask_b32_e64 v23, v23, v85, s2
	v_cndmask_b32_e64 v22, v22, v86, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v82, s27, v82
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s30
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_add_f32_e32 v158, v68, v88
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v88, v24, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v99, v36, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v81, v151, s2
	v_cndmask_b32_e64 v81, v75, v107, s2
	v_cndmask_b32_e64 v107, v72, v156, s2
	v_cndmask_b32_e64 v72, v70, v118, s2
	v_cndmask_b32_e64 v118, v54, v126, s2
	v_cndmask_b32_e64 v126, v18, v19, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.h, v87.h
	v_mov_b16_e32 v70.h, v87.h
	v_mov_b16_e32 v54.h, v87.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v39, s27, 4, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s27, s31
	v_and_b32_e32 v0, 16, v0
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v11
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v100, s2
	v_cndmask_b32_e64 v26, v26, v91, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v9, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v16, v2, s[28:31], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v41, v103
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v1, v17, v139
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v103, v80, v152, s2
	v_cndmask_b32_e64 v80, v74, v108, s2
	v_cndmask_b32_e64 v108, v68, v158, s2
	v_cndmask_b32_e64 v68, v66, v120, s2
	v_cndmask_b32_e64 v64, v62, v122, s2
	v_cndmask_b32_e64 v120, v47, v14, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[112:115], v102
	ds_load_b128 v[12:15], v102 offset:16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v122, v43, v7, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[5:8], v102 offset:512
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v2, s2
	v_cndmask_b32_e64 v125, v17, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[1:4], v102 offset:528
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v94, v30, v145
	v_add_f32_e32 v89, v25, v149
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.h, v87.h
	v_mov_b16_e32 v66.h, v87.h
	v_mov_b16_e32 v43.h, v87.h
	v_mov_b16_e32 v62.h, v87.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v10, v112, v127
	v_mul_f32_e32 v11, v113, v127
	v_dual_mul_f32 v18, v115, v127 :: v_dual_mul_f32 v137, v112, v40
	v_dual_mul_f32 v19, v12, v127 :: v_dual_mul_f32 v140, v115, v40
	v_mul_f32_e32 v47, v13, v127
	v_dual_mul_f32 v130, v6, v127 :: v_dual_mul_f32 v53, v12, v40
	v_dual_mul_f32 v17, v114, v127 :: v_dual_mul_f32 v138, v113, v40
	v_dual_mul_f32 v49, v14, v127 :: v_dual_mul_f32 v142, v103, v10
	v_dual_mul_f32 v128, v15, v127 :: v_dual_mul_f32 v139, v114, v40
	v_dual_mul_f32 v132, v8, v127 :: v_dual_mul_f32 v79, v79, v18
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v141, v104, v11
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v136, v4, v127 :: v_dual_mul_f32 v143, v78, v17
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v107, v107, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v129, v5, v127 :: v_dual_mul_f32 v108, v108, v49
	v_dual_mul_f32 v131, v7, v127 :: v_dual_mul_f32 v128, v69, v128
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v134, v2, v127 :: v_dual_mul_f32 v111, v111, v129
	v_dual_mul_f32 v135, v3, v127 :: v_dual_mul_f32 v130, v65, v130
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v78, v117, v132
	v_dual_mul_f32 v42, v42, v53 :: v_dual_mul_f32 v13, v13, v40
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v14, v14, v40
	v_mul_f32_e32 v15, v15, v40
	v_mul_f32_e32 v6, v6, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v94, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v8, v8, v40
	v_mul_f32_e32 v2, v2, v40
	v_mul_f32_e32 v4, v4, v40
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v33, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v29, v8
	v_mul_f32_e32 v2, v23, v2
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[103:106], v102
	ds_load_b128 v[112:115], v102 offset:16
	ds_load_b128 v[16:19], v102 offset:512
	ds_load_b128 v[9:12], v102 offset:528
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v133, v1, v127
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v59, v136
	v_mul_f32_e32 v65, v52, v135
	v_dual_mul_f32 v59, v48, v137 :: v_dual_mul_f32 v52, v45, v140
	v_mul_f32_e32 v51, v51, v138
	v_mul_f32_e32 v13, v41, v13
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v45, v104, v127
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v102, v112, v127
	v_mul_f32_e32 v104, v104, v40
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v144, v73, v47 :: v_dual_mul_f32 v69, v56, v133
	v_mul_f32_e32 v73, v116, v131
	v_mul_f32_e32 v47, v57, v134
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v116, v113, v127
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v136, v10, v127 :: v_dual_mul_f32 v113, v113, v40
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v44, v139
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v44, v103, v127
	v_mul_f32_e32 v48, v105, v127
	v_dual_mul_f32 v117, v114, v127 :: v_dual_mul_f32 v112, v112, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v129, v115, v127 :: v_dual_mul_f32 v44, v80, v44
	v_dual_mul_f32 v134, v19, v127 :: v_dual_mul_f32 v105, v105, v40
	v_mul_f32_e32 v114, v114, v40
	v_mul_f32_e32 v103, v103, v40
	v_dual_mul_f32 v135, v9, v127 :: v_dual_mul_f32 v72, v72, v102
	v_mul_f32_e32 v56, v106, v127
	v_dual_mul_f32 v137, v11, v127 :: v_dual_mul_f32 v68, v68, v117
	v_mul_f32_e32 v131, v16, v127
	v_dual_mul_f32 v132, v17, v127 :: v_dual_mul_f32 v115, v115, v40
	v_dual_mul_f32 v133, v18, v127 :: v_dual_mul_f32 v76, v76, v48
	v_dual_mul_f32 v127, v12, v127 :: v_dual_mul_f32 v48, v125, v114
	v_mul_f32_e32 v106, v106, v40
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v71, v71, v116 :: v_dual_mul_f32 v102, v118, v135
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v67, v67, v129 :: v_dual_mul_f32 v110, v110, v127
	v_dual_mul_f32 v105, v121, v105 :: v_dual_mul_f32 v116, 0xbfb8aa3b, v72
	v_dual_mul_f32 v77, v77, v56 :: v_dual_mul_f32 v60, v60, v133
	v_dual_mul_f32 v109, v109, v137 :: v_dual_mul_f32 v56, v123, v112
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v112, 0xbfb8aa3b, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v63, v63, v132 :: v_dual_mul_f32 v64, v64, v131
	v_dual_mul_f32 v103, v119, v103 :: v_dual_mul_f32 v114, 0xbfb8aa3b, v76
	v_dual_mul_f32 v106, v122, v106 :: v_dual_mul_f32 v81, v81, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v117, 0xbfb8aa3b, v71
	v_dual_mul_f32 v119, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v132, 0xbfb8aa3b, v105
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v116
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v112
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v61, v61, v134 :: v_dual_mul_f32 v104, v120, v104
	v_dual_mul_f32 v80, v55, v136 :: v_dual_mul_f32 v55, v124, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v118, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v45, v126, v115
	v_mul_f32_e32 v120, 0xbfb8aa3b, v64
	v_mul_f32_e32 v126, 0xbfb8aa3b, v109
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v117
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v132
	v_cndmask_b32_e64 v116, 0, 0x42800000, s6
	v_dual_mul_f32 v115, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v134, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v112, 0, 0x42800000, s1
	v_mul_f32_e32 v124, 0xbfb8aa3b, v102
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v114
	v_cndmask_b32_e64 v117, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v118
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v120
	v_cndmask_b32_e64 v132, 0, 0x42800000, s20
	v_dual_mul_f32 v123, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v112, 0xbfb8aa3b, v44
	v_dual_mul_f32 v129, 0xbfb8aa3b, v103 :: v_dual_fmac_f32 v116, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v115
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v124
	v_cndmask_b32_e64 v114, 0, 0x42800000, s4
	v_cndmask_b32_e64 v118, 0, 0x42800000, s8
	v_mul_f32_e32 v133, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v120, 0, 0x42800000, s10
	v_dual_fmac_f32 v117, 0xbfb8aa3b, v71 :: v_dual_fmac_f32 v132, 0xbfb8aa3b, v105
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v123
	v_exp_f32_e32 v116, v116
	v_dual_mul_f32 v113, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v122, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v115, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v134
	v_exp_f32_e32 v112, v112
	v_cndmask_b32_e64 v124, 0, 0x42800000, s14
	v_dual_mul_f32 v127, 0xbfb8aa3b, v110 :: v_dual_fmac_f32 v114, 0xbfb8aa3b, v76
	v_dual_mul_f32 v135, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v120, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v119
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v126
	v_fmac_f32_e32 v118, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v133
	v_exp_f32_e32 v132, v132
	v_cndmask_b32_e64 v123, 0, 0x42800000, s11
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v113
	v_cndmask_b32_e64 v134, 0, 0x42800000, s22
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v115, 0xbfb8aa3b, v77
	v_dual_mul_f32 v125, 0xbfb8aa3b, v80 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v102
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v122
	v_dual_mul_f32 v121, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v136, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v119, 0, 0x42800000, s7
	v_cndmask_b32_e64 v126, 0, 0x42800000, s16
	v_cndmask_b32_e64 v133, 0, 0x42800000, s19
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s20
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v120, v120
	v_ldexp_f32 v116, v116, v146
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v113, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v56
	v_exp_f32_e32 v115, v115
	v_ldexp_f32 v112, v112, v138
	v_cndmask_b32_e64 v122, 0, 0x42800000, s12
	v_exp_f32_e32 v124, v124
	v_dual_mul_f32 v131, 0xbfb8aa3b, v104 :: v_dual_fmac_f32 v126, 0xbfb8aa3b, v109
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v121
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v127
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s4
	v_dual_fmac_f32 v119, 0xbfb8aa3b, v67 :: v_dual_add_f32 v112, 1.0, v112
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s10
	v_ldexp_f32 v132, v132, v160
	v_dual_fmac_f32 v133, 0xbfb8aa3b, v106 :: v_dual_add_f32 v116, 1.0, v116
	v_exp_f32_e32 v123, v123
	v_dual_fmac_f32 v113, 0xbfb8aa3b, v81 :: v_dual_fmac_f32 v122, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v129
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v121, 0, 0x42800000, s9
	v_cndmask_b32_e64 v127, 0, 0x42800000, s15
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v114, v114, v140
	v_ldexp_f32 v120, v120, v150
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v133, v133
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v125
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s11
	v_exp_f32_e32 v113, v113
	v_ldexp_f32 v115, v115, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v139, null, v112, v112, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v129, 0, 0x42800000, s18
	v_exp_f32_e32 v122, v122
	v_ldexp_f32 v124, v124, v154
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v135
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s8
	v_dual_fmac_f32 v121, 0xbfb8aa3b, v63 :: v_dual_add_f32 v114, 1.0, v114
	v_dual_fmac_f32 v127, 0xbfb8aa3b, v110 :: v_dual_add_f32 v120, 1.0, v120
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v125, 0, 0x42800000, s13
	v_ldexp_f32 v123, v123, v151
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v151, null, v116, v116, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v134, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v186, v139
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v131
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s12
	v_dual_fmac_f32 v129, 0xbfb8aa3b, v103 :: v_dual_add_f32 v124, 1.0, v124
	v_cndmask_b32_e64 v135, 0, 0x42800000, s21
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v127, v127
	v_ldexp_f32 v119, v119, v147
	v_ldexp_f32 v118, v118, v148
	v_ldexp_f32 v126, v126, v156
	v_ldexp_f32 v133, v133, v159
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v147, null, v114, v114, v76
	v_div_scale_f32 v159, null, v120, v120, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v125, 0xbfb8aa3b, v80 :: v_dual_add_f32 v118, 1.0, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v190, v151
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s22
	v_ldexp_f32 v113, v113, v137
	v_cndmask_b32_e64 v131, 0, 0x42800000, s17
	v_ldexp_f32 v122, v122, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v167, null, v124, v124, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s15
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v55 :: v_dual_add_f32 v126, 1.0, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v188, v147
	v_rcp_f32_e32 v194, v159
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v125, v125
	v_ldexp_f32 v134, v134, v162
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v113, 1.0, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v208, -v139, v186, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v131, 0xbfb8aa3b, v104 :: v_dual_add_f32 v122, 1.0, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v198, v167
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v117, v117, v145
	v_ldexp_f32 v127, v127, v155
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v155, null, v118, v118, v68
	v_div_scale_f32 v171, null, v126, v126, v109
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v212, -v151, v190, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v119, 1.0, v119 :: v_dual_add_f32 v134, 1.0, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v137, null, v113, v113, v81
	v_fmac_f32_e32 v186, v208, v186
	v_div_scale_f32 v145, null, v115, v115, v77
	v_div_scale_f32 v163, null, v122, v122, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v192, v155
	v_rcp_f32_e32 v200, v171
	v_fma_f32 v210, -v147, v188, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v117, 1.0, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v216, -v159, v194, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v125, v125, v153
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v190, v212, v190
	v_div_scale_f32 v153, null, v119, v119, v67
	v_rcp_f32_e32 v185, v137
	v_rcp_f32_e32 v187, v145
	v_rcp_f32_e32 v196, v163
	v_fma_f32 v220, -v167, v198, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v131, v131
	v_ldexp_f32 v121, v121, v149
	v_ldexp_f32 v129, v129, v158
	v_ldexp_f32 v135, v135, v161
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v179, null, v132, v132, v105
	v_fmac_f32_e32 v188, v210, v188
	v_div_scale_f32 v149, null, v117, v117, v71
	v_fmac_f32_e32 v194, v216, v194
	v_div_scale_f32 v161, null, v123, v123, v61
	v_rcp_f32_e32 v191, v153
	v_fmac_f32_e32 v198, v220, v198
	v_div_scale_f32 v169, null, v127, v127, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v189, v149
	v_rcp_f32_e32 v195, v161
	v_rcp_f32_e32 v204, v179
	v_fma_f32 v214, -v155, v192, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v121, 1.0, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v222, -v171, v200, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v129, 1.0, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v148, s16, v76, v114, v76
	v_fma_f32 v207, -v137, v185, 1.0
	v_fma_f32 v209, -v145, v187, 1.0
	v_rcp_f32_e32 v199, v169
	v_fma_f32 v218, -v163, v196, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v131, v131, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v192, v214, v192
	v_div_scale_f32 v157, null, v121, v121, v63
	v_fmac_f32_e32 v200, v222, v200
	v_div_scale_f32 v175, null, v129, v129, v103
	v_div_scale_f32 v156, s20, v68, v118, v68
	v_fma_f32 v213, -v153, v191, 1.0
	v_div_scale_f32 v138, vcc_lo, v81, v113, v81
	v_div_scale_f32 v140, s14, v44, v112, v44
	v_fmac_f32_e32 v185, v207, v185
	v_dual_fmac_f32 v187, v209, v187 :: v_dual_mul_f32 v210, v148, v188
	v_fmac_f32_e32 v196, v218, v196
	v_div_scale_f32 v165, null, v125, v125, v80
	v_div_scale_f32 v164, s12, v60, v122, v60
	v_rcp_f32_e32 v193, v157
	v_rcp_f32_e32 v202, v175
	v_fma_f32 v211, -v149, v189, 1.0
	v_fma_f32 v217, -v161, v195, 1.0
	v_fma_f32 v226, -v179, v204, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v133, 1.0, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v146, s15, v77, v115, v77
	v_dual_fmac_f32 v191, v213, v191 :: v_dual_mul_f32 v214, v156, v192
	v_mul_f32_e32 v208, v140, v186
	v_fma_f32 v232, -v147, v210, v148
	v_mul_f32_e32 v207, v138, v185
	v_div_scale_f32 v172, s8, v109, v126, v109
	v_rcp_f32_e32 v197, v165
	v_fma_f32 v221, -v169, v199, 1.0
	v_div_scale_f32 v150, s17, v71, v117, v71
	v_div_scale_f32 v152, s18, v72, v116, v72
	v_fmac_f32_e32 v189, v211, v189
	v_dual_fmac_f32 v195, v217, v195 :: v_dual_mul_f32 v218, v164, v196
	v_fmac_f32_e32 v204, v226, v204
	v_div_scale_f32 v177, null, v133, v133, v106
	v_fma_f32 v236, -v155, v214, v156
	v_dual_mul_f32 v209, v146, v187 :: v_dual_fmac_f32 v210, v232, v188
	v_fma_f32 v229, -v137, v207, v138
	v_div_scale_f32 v154, s19, v67, v119, v67
	v_dual_fmac_f32 v199, v221, v199 :: v_dual_mul_f32 v222, v172, v200
	v_fma_f32 v230, -v139, v208, v140
	v_div_scale_f32 v160, s22, v64, v120, v64
	v_rcp_f32_e32 v203, v177
	v_fma_f32 v215, -v157, v193, 1.0
	v_fma_f32 v224, -v175, v202, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v131, 1.0, v131 :: v_dual_mul_f32 v212, v152, v190
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v240, -v163, v218, v164
	v_dual_mul_f32 v211, v150, v189 :: v_dual_fmac_f32 v214, v236, v192
	v_fma_f32 v231, -v145, v209, v146
	v_dual_fmac_f32 v207, v229, v185 :: v_dual_fmac_f32 v208, v230, v186
	v_div_scale_f32 v168, s10, v102, v124, v102
	v_fma_f32 v219, -v165, v197, 1.0
	v_fma_f32 v244, -v171, v222, v172
	v_mul_f32_e32 v213, v154, v191
	v_dual_fmac_f32 v193, v215, v193 :: v_dual_mul_f32 v216, v160, v194
	v_fmac_f32_e32 v202, v224, v202
	v_div_scale_f32 v173, null, v131, v131, v104
	v_fmac_f32_e32 v218, v240, v196
	v_fma_f32 v233, -v149, v211, v150
	v_fma_f32 v234, -v151, v212, v152
	v_fmac_f32_e32 v209, v231, v187
	v_fma_f32 v137, -v137, v207, v138
	v_dual_fmac_f32 v197, v219, v197 :: v_dual_mul_f32 v220, v168, v198
	v_fmac_f32_e32 v222, v244, v200
	v_fma_f32 v235, -v153, v213, v154
	v_fma_f32 v138, -v139, v208, v140
	v_div_scale_f32 v180, s4, v105, v132, v105
	v_rcp_f32_e32 v201, v173
	v_fma_f32 v225, -v177, v203, 1.0
	v_fma_f32 v238, -v159, v216, v160
	v_dual_fmac_f32 v211, v233, v189 :: v_dual_fmac_f32 v212, v234, v190
	v_fma_f32 v139, -v145, v209, v146
	v_div_fmas_f32 v137, v137, v185, v207
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v140, -v147, v210, v148
	v_fma_f32 v242, -v167, v220, v168
	v_fmac_f32_e32 v213, v235, v191
	v_div_fmas_f32 v138, v138, v186, v208
	s_mov_b32 vcc_lo, s15
	v_div_scale_f32 v158, s21, v63, v121, v63
	v_dual_fmac_f32 v203, v225, v203 :: v_dual_mul_f32 v226, v180, v204
	v_fmac_f32_e32 v216, v238, v194
	v_fma_f32 v145, -v149, v211, v150
	v_div_fmas_f32 v139, v139, v187, v209
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v146, -v151, v212, v152
	v_div_fixup_f32 v81, v137, v113, v81
	v_div_fmas_f32 v113, v140, v188, v210
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v162, s13, v61, v123, v61
	v_fmac_f32_e32 v220, v242, v198
	v_fma_f32 v147, -v153, v213, v154
	v_div_scale_f32 v176, s6, v103, v129, v103
	v_fma_f32 v223, -v173, v201, 1.0
	v_fma_f32 v248, -v179, v226, v180
	v_mul_f32_e32 v215, v158, v193
	v_div_fixup_f32 v44, v138, v112, v44
	v_div_fmas_f32 v112, v145, v189, v211
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v148, -v155, v214, v156
	v_div_fixup_f32 v77, v139, v115, v77
	v_div_fmas_f32 v115, v146, v190, v212
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v76, v113, v114, v76
	v_mul_f32_e32 v217, v162, v195
	v_div_fmas_f32 v113, v147, v191, v213
	s_mov_b32 vcc_lo, s20
	v_dual_fmac_f32 v201, v223, v201 :: v_dual_mul_f32 v224, v176, v202
	v_fmac_f32_e32 v226, v248, v204
	v_fma_f32 v237, -v157, v215, v158
	v_div_scale_f32 v166, s11, v80, v125, v80
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v77, v79, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v79, v148, v192, v214
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v143, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v239, -v161, v217, v162
	v_fma_f32 v246, -v175, v224, v176
	v_fmac_f32_e32 v215, v237, v193
	v_div_scale_f32 v174, s7, v104, v131, v104
	v_div_scale_f32 v183, null, v134, v134, v56
	v_div_fixup_f32 v72, v115, v116, v72
	v_mul_f32_e32 v219, v166, v197
	v_div_fixup_f32 v68, v79, v118, v68
	v_dual_fmac_f32 v217, v239, v195 :: v_dual_mul_f32 v44, v142, v44
	v_fmac_f32_e32 v224, v246, v202
	v_fma_f32 v149, -v157, v215, v158
	v_div_scale_f32 v170, s9, v110, v127, v110
	v_rcp_f32_e32 v206, v183
	v_dual_mul_f32 v223, v174, v201 :: v_dual_mul_f32 v68, v108, v68
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v107, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v241, -v165, v219, v166
	v_fma_f32 v150, -v159, v216, v160
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v151, -v161, v217, v162
	v_div_fixup_f32 v71, v112, v117, v71
	v_div_fmas_f32 v112, v149, v193, v215
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v152, -v163, v218, v164
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v44.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v221, v170, v199
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v68.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v219, v241, v197
	v_div_fixup_f32 v67, v113, v119, v67
	v_div_fmas_f32 v113, v150, v194, v216
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v228, -v183, v206, 1.0
	v_div_fmas_f32 v107, v151, v195, v217
	s_mov_b32 vcc_lo, s12
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v63, v112, v121, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v74, 1, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v243, -v169, v221, v170
	v_div_fmas_f32 v112, v152, v196, v218
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v153, -v165, v219, v166
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v206, v228, v206
	v_div_scale_f32 v181, null, v135, v135, v55
	v_fma_f32 v245, -v173, v223, v174
	v_div_fmas_f32 v108, v153, v197, v219
	v_div_fixup_f32 v60, v112, v122, v60
	v_fmac_f32_e32 v221, v243, v199
	v_fma_f32 v154, -v167, v220, v168
	v_div_scale_f32 v178, s5, v106, v133, v106
	v_rcp_f32_e32 v205, v181
	v_div_fixup_f32 v64, v113, v120, v64
	v_div_fixup_f32 v80, v108, v125, v80
	v_fmac_f32_e32 v223, v245, v201
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v73, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v155, -v169, v221, v170
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v156, -v171, v222, v172
	v_div_fixup_f32 v61, v107, v123, v61
	v_div_fmas_f32 v107, v154, v198, v220
	s_mov_b32 vcc_lo, s9
	v_dual_mul_f32 v225, v178, v203 :: v_dual_mul_f32 v64, v111, v64
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v141, v81
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s15, v44, v44
	v_add3_u32 v74, v44, v74, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v111, v155, v199, v221
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v80, v47, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v157, -v173, v223, v174
	s_mov_b32 vcc_lo, s8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v78, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v78, v156, v200, v222
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v184, s1, v56, v134, v56
	v_fma_f32 v227, -v181, v205, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v81.h
	v_cndmask_b16 v44.l, 0x7fff, v74.h, s15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v73, v157, v201, v223
	v_div_fixup_f32 v74, v111, v127, v110
	v_dual_fmac_f32 v205, v227, v205 :: v_dual_mul_f32 v228, v184, v206
	v_fma_f32 v158, -v175, v224, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v73, v73, v131, v104
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v74, v49, v74 :: v_dual_and_b32 v79, 1, v87
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v77.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v250, -v183, v228, v184
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s14, v81, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v79, v81, v79, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	v_dual_fmac_f32 v228, v250, v206 :: v_dual_and_b32 v81, 1, v87
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v136
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s16, v77, v77
	v_mov_b16_e32 v75.l, v76.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v77, v77, v81, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v81, v158, v202, v224
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v136, 0, 0x42800000, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s9, v68, v68
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v66, v68, v66, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v68, v81, v129, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s13, v76, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v75, v76, v75, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v76, v107, v124, v102
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v59, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v182, s3, v55, v135, v55
	v_fma_f32 v247, -v177, v225, v178
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v60.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v71, v144, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v59.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v69, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v72.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v227, v182, v205
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v64.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v225, v247, v203 :: v_dual_and_b32 v58, 1, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v71.h
	v_and_b32_e32 v46, 1, v46
	v_mov_b16_e32 v54.l, v69.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v128, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v44.h, 0x7fff, v79.h, s14
	v_and_b32_e32 v79, 1, v87
	v_and_b32_e32 v70, 1, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v249, -v181, v227, v182
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.h, 0x7fff, v77.h, s16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v77, v78, v126, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v62, 1, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v159, -v177, v225, v178
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v54, 1, v54
	v_mov_b16_e32 v87.l, v67.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v227, v249, v205
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s12, v71, v71
	v_cmp_o_f32_e64 s11, v72, v72
	v_add3_u32 v70, v72, v70, 0x7fff
	v_add3_u32 v71, v71, v79, 0x7fff
	v_and_b32_e32 v72, 1, v87
	v_cndmask_b16 v47.l, 0x7fff, v75.h, s13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v75, v159, v203, v225
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v160, -v179, v226, v180
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v67, v67
	v_cmp_o_f32_e64 s7, v64, v64
	v_cndmask_b16 v49.h, 0x7fff, v71.h, s12
	v_add3_u32 v67, v67, v72, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v71, v75, v133, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v64, v62, 0x7fff
	v_mov_b16_e32 v50.l, v65.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v63, v130, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v51, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v76, v160, v204, v226
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v51.h, 0x7fff, v67.h, s10
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v52, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v52.l, 0x7fff, v62.h, s7
	v_and_b32_e32 v62, 1, v50
	v_mov_b16_e32 v87.l, v63.h
	v_cndmask_b16 v49.l, 0x7fff, v70.h, s11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v64, v76, v132, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v51.l, 0x7fff, v66.h, s9
	v_cmp_o_f32_e64 s5, v60, v60
	v_and_b32_e32 v70, 1, v87
	v_mov_b16_e32 v87.l, v61.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v57, v57, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v58, v60, v58, 0x7fff
	v_cmp_o_f32_e64 s4, v69, v69
	v_add3_u32 v54, v69, v54, 0x7fff
	v_and_b32_e32 v66, 1, v87
	v_mov_b16_e32 v87.l, v80.h
	v_cmp_o_f32_e64 s6, v61, v61
	v_mov_b16_e32 v43.l, v57.h
	v_cndmask_b16 v50.l, 0x7fff, v58.h, s5
	v_add3_u32 v60, v61, v66, 0x7fff
	v_and_b32_e32 v61, 1, v87
	v_mov_b16_e32 v87.l, v74.h
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s4
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cndmask_b16 v50.h, 0x7fff, v60.h, s6
	v_add3_u32 v60, v80, v61, 0x7fff
	v_and_b32_e32 v58, 1, v87
	v_add3_u32 v61, v65, v62, 0x7fff
	v_and_b32_e32 v62, 1, v43
	v_cmp_o_f32_e64 s7, v59, v59
	v_add3_u32 v46, v59, v46, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s9, v65, v65
	v_cmp_o_f32_e64 s8, v63, v63
	v_add3_u32 v63, v63, v70, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v60.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.l, 0x7fff, v61.h, s9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v61, v136
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v181, v227, v182
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v52.h, 0x7fff, v63.h, s8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v183, v228, v184
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v72.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v60, v205, v227
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v61, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v63, v63, v206, v228
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v59
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v55, v60, v135, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v56, v63, v134, v56
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v35, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v87
	v_cmp_o_f32_e64 s11, v74, v74
	v_add3_u32 v58, v74, v58, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v42, v42, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v67.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v16, v16, v40 :: v_dual_mul_f32 v55, v13, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v41, v59
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v53, v53, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v72, v43, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v46.h, s7
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s11
	v_and_b32_e32 v58, 1, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v16, v34, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v55.h
	v_add3_u32 v56, v67, v58, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v42.h
	v_mov_b16_e32 v13.h, v87.h
	v_add3_u32 v60, v57, v62, 0x7fff
	v_cmp_o_f32_e64 s0, v57, v57
	v_and_b32_e32 v57, 1, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v62, 1, v13
	v_cndmask_b16 v13.h, 0x7fff, v56.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v41, v59, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v60.h, s0
	v_add3_u32 v57, v55, v57, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, vcc_lo, v45, v53, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v56, v59
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v42, v62, 0x7fff
	v_cmp_o_f32_e64 s1, v42, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v58, v58, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v55, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v36, v99, s2
	v_cndmask_b32_e64 v36, v37, v98, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v63, v61
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v18, v18, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v41, v42, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v14, v35, v14 :: v_dual_mul_f32 v15, v36, v15
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v19, v19, v40 :: v_dual_mul_f32 v18, v30, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v37, v59
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v10, v10, v40
	v_mul_f32_e32 v9, v9, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v61, v63, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v31, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v41, v42, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v64
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s4
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v10, v27, v10 :: v_dual_mul_f32 v9, v26, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v59, v42
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v12, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v72, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v34, v53, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v41, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v56, v63
	v_div_scale_f32 v56, s3, v48, v58, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v36, 1.0, v41 :: v_dual_mul_f32 v15, v15, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v62, v56, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v87.h
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v87.l, v15.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v61, v62, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v37, v63
	v_div_scale_f32 v41, null, v36, v36, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v15, v45, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v61, v62, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v63, v62
	v_div_fixup_f32 v35, v42, v58, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v42.h, 0x7fff, v57.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v42.l, 0x7fff, v60.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v14, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s5
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v5, v5, v40 :: v_dual_and_b32 v34, 1, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v32, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v14, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v37, v35
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v35, v35, v16
	v_fma_f32 v53, -v41, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v55, v48
	v_fma_f32 v31, -v48, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v31, v55
	v_div_scale_f32 v31, s0, v16, v35, v16
	v_fmac_f32_e32 v37, v53, v37
	v_div_scale_f32 v53, vcc_lo, v17, v36, v17
	v_mul_f32_e32 v58, v31, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v56, v53, v37
	v_fma_f32 v33, -v48, v58, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v41, v56, v53
	v_fmac_f32_e32 v58, v33, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v57, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v48, v58, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v57, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v56, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v41, v37, v56
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v55, v58
	v_div_scale_f32 v32, null, v30, v30, v19
	v_div_fixup_f32 v17, v37, v36, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v31, v35, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v87.h
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v14.l, v5.h
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v14, 1, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v32, v16, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v5, v14, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v36, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v57
	v_ldexp_f32 v31, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v15, v15, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v6, v31, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, s0, v19, v30, v19
	v_rcp_f32_e32 v33, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v14.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v5, v6, v16
	s_mov_b32 vcc_lo, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v24, v88, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v32, v5, v6
	v_fma_f32 v34, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v36, v16
	v_fma_f32 v6, -v32, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v6, v16, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v30, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v8, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v25, v89, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v5.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v7, v7, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v87
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v28, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, s3, v18, v15, v18
	s_mov_b32 vcc_lo, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v37, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v17, v37, v34
	v_fmac_f32_e32 v37, v27, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v17, v37, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v33, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_exp_f32_e32 v17, v27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v15, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v87.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v7, v17, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v16
	v_mul_f32_e32 v16, 0xbfb8aa3b, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v6, v18, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v15, v12
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v12, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s1, v9, v12, v9
	v_rcp_f32_e32 v26, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v19, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v11, v11, v40 :: v_dual_mul_f32 v34, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v14, v11
	.loc	1 385 34 is_stmt 1              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v7, v7, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v14, v15, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v5, v5, v8
	v_fmac_f32_e32 v15, v25, v15
	v_div_scale_f32 v25, vcc_lo, v10, v7, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v30, v27
	v_mul_f32_e32 v16, v25, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v14, v16, v25
	v_fma_f32 v36, -v27, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v32, v15
	v_fma_f32 v32, -v19, v34, v29
	v_dual_fmac_f32 v30, v36, v30 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v14, v16, v25
	v_fmac_f32_e32 v34, v32, v26
	v_div_scale_f32 v32, s0, v8, v5, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v14, v15, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v19, v34, v29
	v_mul_f32_e32 v16, v32, v30
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v7, v14, v7, v10
	v_div_fmas_f32 v15, v15, v26, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v26, -v27, v16, v32
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v1, v1, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v21, v83, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v26, v30
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v22, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v4, v14, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v10, -v27, v16, v32
	v_div_fixup_f32 v9, v15, v12, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v28, null, v17, v17, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v30, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v20, v84, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v10, v5, v8
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v3, v3, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	v_mov_b32_e32 v10, 0x7632
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v4, v5 :: v_dual_mul_f32 v3, v9, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v28, v33, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v87.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v25, v33
	v_div_scale_f32 v25, s3, v11, v17, v11
	s_mov_b32 vcc_lo, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v19, v25, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v28, v19, v25
	v_fmac_f32_e32 v19, v22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v28, v19, v25
	v_div_fmas_f32 v12, v12, v33, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v6.h, v87.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v12, v17, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v87
	v_mov_b16_e32 v87.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v6.l, v3.h
	v_add3_u32 v7, v2, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 1, v87
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v4, v8, 0x7fff
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v9, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e32 v1, v49, v44, vcc_lo
	v_dual_cndmask_b32 v5, v47, v51 :: v_dual_cndmask_b32 v10, 0x3276, v10
	v_dual_cndmask_b32 v14, v43, v42 :: v_dual_cndmask_b32 v9, 0x1054, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, v0, v24, vcc_lo
	v_cndmask_b32_e32 v0, v24, v0, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v15, v35, v13, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b32_e32 v2, v44, v49, vcc_lo
	v_dual_cndmask_b32 v7, v52, v54 :: v_dual_cndmask_b32 v12, v42, v43
	v_and_b32_e32 v10, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x540054, v9
	v_dual_cndmask_b32 v11, v50, v46 :: v_dual_cndmask_b32 v16, v3, v31
	v_cndmask_b32_e32 v3, v31, v3, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 4, v9
	v_cndmask_b32_e32 v13, v13, v35, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v4, v51, v47, vcc_lo
	v_cndmask_b32_e32 v6, v54, v52, vcc_lo
	v_cndmask_b32_e32 v8, v46, v50, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v9
	v_and_b32_e32 v19, 0x7060706, v10
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v18
	v_perm_b32 v1, v2, v1, v19
	v_perm_b32 v2, v5, v4, v18
	v_perm_b32 v3, v5, v4, v19
	v_perm_b32 v4, v7, v6, v18
	v_perm_b32 v5, v7, v6, v19
	v_perm_b32 v6, v11, v8, v18
	v_perm_b32 v7, v11, v8, v19
	v_perm_b32 v8, v14, v12, v18
	v_perm_b32 v9, v14, v12, v19
	v_perm_b32 v10, v13, v15, v18
	v_perm_b32 v11, v13, v15, v19
	v_perm_b32 v12, v20, v16, v18
	v_perm_b32 v13, v20, v16, v19
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v38, v82, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v21, v17, v18
	v_perm_b32 v15, v21, v17, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v38, v39, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 251
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 251
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13292
; TotalNumSgprs: 41
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 251
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     251
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
