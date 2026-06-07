	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v79, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s34, s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 3, v79
	v_and_b32_e32 v42, 24, v3
	v_and_b32_e32 v89, 1, v79
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v79
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v40, v79, 4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v141, 4, v89
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v40, 0x90, v40
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s34, v1
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v0
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
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 1, v79
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[31:32], null, s34, v0, v[141:142]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v96, s34, 7, v31
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s8
	s_mul_i32 s10, s2, s6
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s2, s10, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s3, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v0, s3, v42
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s3, v141
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s8
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s2, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s34, 31
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s7
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s29, s14, s15
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s35, s14, s34
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s36, s29, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 31
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s34, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s4, s28, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s33, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s5, s35, s3
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s7, s36, s3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v255, v1, v42, s4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v0, s5, v31
	v_add_nc_u32_e32 v1, s5, v96
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v2, s7, v31
	v_add_nc_u32_e32 v4, s7, v96
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s33
	s_and_b32 s2, s2, s33
	s_cmp_gt_i32 s6, 63
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v6, 0x80000000, v0, s2
	v_cndmask_b32_e64 v9, 0x80000000, v1, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v13, 0x80000000, v2, s2
	v_cndmask_b32_e64 v17, 0x80000000, v4, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s7, s3, 32
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s3, v255
	v_add_nc_u32_e32 v23, s7, v255
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v22, 32, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s7, v42
	v_or_b32_e32 v14, s7, v141
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v21, 32, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v0, 0x80000000, v5, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v6, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s34, v14
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[0:1], v0, s[20:23], 0 offen
	v_and_b32_e32 v3, 0x778, v3
	s_mov_b32 s5, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_add_nc_u32 v2, 32, v2
	v_dual_cndmask_b32 v25, 0x80000000, v22 :: v_dual_add_nc_u32 v4, 32, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v68, v40, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 5, v79
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[29:30], v23, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v2, s[24:27], 0 offen
	buffer_load_b128 v[36:39], v4, s[24:27], 0 offen
	v_lshlrev_b32_e32 v2, 4, v79
	v_bfe_i32 v4, v79, 3, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x5f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v41, 0xf70, v2
	v_and_b32_e32 v4, 0x90, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v67, v4, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 16, v79
	v_add_nc_u32_e32 v41, 0, v68
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v40, 0, v67
	s_waitcnt vmcnt(8)
	ds_store_b128 v40, v[9:12] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(7)
	ds_store_b128 v40, v[13:16] offset:16384
	s_waitcnt vmcnt(6)
	ds_store_b128 v40, v[17:20] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v41, v[0:1] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v40, v[5:8]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v41, v[29:30] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v40, v[21:24] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v40, v[25:28] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[32:35] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[36:39] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v0, 0x160, v3
	v_and_b32_e32 v1, 4, v79
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v39, 0xe00, v2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr39
.LBB0_3:                                ; %Flow608
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v4
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v79, 2, 1
	v_dual_mov_b32 v222, 0 :: v_dual_and_b32 v3, 0x160, v3
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s38, s6, 5
	s_add_i32 s1, s7, 32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x90, v0
	v_and_or_b32 v0, 0xe00, v2, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v89, off offset:212
	scratch_store_b32 off, v79, off offset:204
	v_dual_mov_b32 v89, s11 :: v_dual_mov_b32 v86, s8
	v_mov_b32_e32 v88, s10
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, v0, v1
	v_or_b32_e32 v1, v1, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:184
	scratch_store_b32 off, v0, off offset:180
	v_xor_b32_e32 v0, 16, v0
	v_dual_mov_b32 v87, s9 :: v_dual_mov_b32 v84, s6
	v_dual_mov_b32 v85, s7 :: v_dual_mov_b32 v82, s4
	v_dual_mov_b32 v83, s5 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v204, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v205, 0
	s_add_i32 s40, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s37, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v3, off offset:220
	scratch_store_b32 off, v0, off offset:188
	scratch_store_b64 off, v[31:32], off offset:196
	scratch_store_b32 off, v42, off offset:176
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_mov_b32 s6, s4
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s4, s5, 5
	s_clause 0x14                           ; 168-byte Folded Spill
	scratch_store_b64 off, v[241:242], off offset:32
	scratch_store_b64 off, v[253:254], off offset:160
	scratch_store_b64 off, v[92:93], off offset:152
	scratch_store_b64 off, v[80:81], off offset:144
	scratch_store_b64 off, v[222:223], off offset:136
	scratch_store_b64 off, v[101:102], off offset:128
	scratch_store_b64 off, v[166:167], off offset:120
	scratch_store_b64 off, v[107:108], off offset:112
	scratch_store_b64 off, v[220:221], off offset:64
	scratch_store_b64 off, v[218:219], off offset:56
	scratch_store_b64 off, v[208:209], off
	scratch_store_b64 off, v[131:132], off offset:8
	scratch_store_b64 off, v[133:134], off offset:16
	scratch_store_b64 off, v[135:136], off offset:24
	scratch_store_b64 off, v[25:26], off offset:40
	scratch_store_b64 off, v[145:146], off offset:48
	scratch_store_b64 off, v[105:106], off offset:104
	scratch_store_b64 off, v[202:203], off offset:96
	scratch_store_b64 off, v[251:252], off offset:88
	scratch_store_b64 off, v[115:116], off offset:80
	scratch_store_b64 off, v[249:250], off offset:72
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s4, s1, s4
	v_mov_b32_e32 v146, v128
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v13, s4, v42
	v_dual_mov_b32 v145, v127 :: v_dual_add_nc_u32 v14, s4, v255
	v_dual_mov_b32 v25, v204 :: v_dual_mov_b32 v26, v205
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v13
	v_dual_mov_b32 v92, v162 :: v_dual_mov_b32 v93, v163
	v_dual_mov_b32 v107, v206 :: v_dual_mov_b32 v108, v207
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	v_dual_mov_b32 v131, v200 :: v_dual_mov_b32 v132, v201
	v_dual_mov_b32 v8, v67 :: v_dual_mov_b32 v115, v129
	v_dual_mov_b32 v116, v130 :: v_dual_mov_b32 v129, v225
	v_mov_b32_e32 v130, v226
	v_dual_mov_b32 v80, v231 :: v_dual_mov_b32 v27, v121
	v_mov_b32_e32 v28, v122
	v_dual_mov_b32 v122, v7 :: v_dual_mov_b32 v121, v6
	v_dual_mov_b32 v4, v239 :: v_dual_mov_b32 v5, v240
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	v_mov_b32_e32 v31, v68
	v_mov_b32_e32 v134, v112
	v_mov_b32_e32 v135, v164
	v_mov_b32_e32 v133, v111
	v_mov_b32_e32 v111, v157
	v_mov_b32_e32 v136, v165
	v_dual_mov_b32 v165, v141 :: v_dual_mov_b32 v112, v158
	buffer_load_b64 v[2:3], v13, s[20:23], 0 offen
	v_dual_mov_b32 v158, v154 :: v_dual_mov_b32 v157, v153
	v_dual_mov_b32 v154, v148 :: v_dual_mov_b32 v153, v147
	v_dual_mov_b32 v148, v144 :: v_dual_mov_b32 v147, v143
	v_dual_mov_b32 v144, v140 :: v_dual_mov_b32 v143, v139
	v_dual_mov_b32 v140, v138 :: v_dual_mov_b32 v139, v137
	v_dual_mov_b32 v137, v227 :: v_dual_mov_b32 v138, v228
	v_dual_mov_b32 v81, v232 :: v_dual_mov_b32 v6, v247
	v_dual_mov_b32 v105, v233 :: v_dual_mov_b32 v106, v234
	v_dual_mov_b32 v141, v235 :: v_dual_mov_b32 v142, v236
	v_dual_mov_b32 v101, v243 :: v_dual_mov_b32 v102, v244
	v_dual_mov_b32 v127, v245 :: v_dual_mov_b32 v128, v246
	v_mov_b32_e32 v7, v248
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s40, v0
	v_xor_b32_e32 v10, 16, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v10, s40, v10
	s_mov_b32 s40, s31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v12, s6, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(1)
	scratch_store_b64 off, v[2:3], off offset:168 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[166:169], v10 offset:1024
	ds_load_b128 v[161:164], v10 offset:1536
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[170:173], v12 offset:4096
	v_dual_mov_b32 v2, v229 :: v_dual_mov_b32 v3, v230
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s6, v0
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v68, s37, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[32:35], v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[36:39], v11
	ds_load_b128 v[40:43], v11 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[44:47], v9 offset:512
	ds_load_b128 v[48:51], v9 offset:1024
	ds_load_b128 v[178:181], v9 offset:1536
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[52:55], v12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[56:59], v10
	ds_load_b128 v[60:63], v10 offset:512
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s6, s4, s35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[36:39], v[32:35], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[183:190], v[36:39], v[44:47], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[199:206], v[36:39], v[48:51], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[36:39], v[178:181], v[82:89] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v36, s37, v1
	v_dual_mov_b32 v0, v151 :: v_dual_mov_b32 v1, v152
	ds_load_b128 v[64:67], v68
	ds_load_b128 v[68:71], v68 offset:4096
	ds_load_b128 v[72:75], v36
	ds_load_b128 v[76:79], v36 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[40:43], v[32:35], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[191:198], v[40:43], v[44:47], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[40:43], v[48:51], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[40:43], v[178:181], v[82:89] neg_lo:[1,1,0]
	v_dual_mov_b32 v151, v159 :: v_dual_mov_b32 v152, v160
	v_dual_mov_b32 v160, v156 :: v_dual_mov_b32 v159, v155
	v_dual_mov_b32 v156, v150 :: v_dual_mov_b32 v155, v149
	v_dual_mov_b32 v149, v237 :: v_dual_mov_b32 v150, v238
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[170:173], v[56:59], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[170:173], v[60:63], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[170:173], v[166:169], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[170:173], v[161:164], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[52:55], v[56:59], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[183:190], v[52:55], v[60:63], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[52:55], v[166:169], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[52:55], v[161:164], v[207:214] neg_lo:[1,1,0]
	s_mov_b32 s37, s3
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[64:67], v[32:35], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[239:246], v[64:67], v[44:47], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[231:238], v[68:71], v[32:35], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[247:254], v[68:71], v[44:47], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[64:67], v[48:51], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[68:71], v[48:51], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[64:67], v[178:181], v[82:89] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v64, v183
	v_cvt_f32_i32_e32 v65, v184
	v_cvt_f32_i32_e32 v183, v197
	v_cvt_f32_i32_e32 v184, v198
	v_cvt_f32_i32_e32 v197, v203
	v_cvt_f32_i32_e32 v198, v204
	v_cvt_f32_i32_e32 v203, v217
	v_cvt_f32_i32_e32 v204, v218
	v_cvt_f32_i32_e32 v217, v223
	v_cvt_f32_i32_e32 v218, v224
	v_cvt_f32_i32_e32 v223, v229
	v_cvt_f32_i32_e32 v224, v230
	v_dual_mov_b32 v230, v3 :: v_dual_mov_b32 v229, v2
	v_cvt_f32_i32_e32 v66, v185
	v_cvt_f32_i32_e32 v67, v186
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[72:75], v[56:59], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[239:246], v[72:75], v[60:63], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[231:238], v[76:79], v[56:59], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[247:254], v[76:79], v[60:63], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[72:75], v[166:169], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[76:79], v[166:169], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[68:71], v[178:181], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[72:75], v[161:164], v[48:55] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v166, v195
	v_cvt_f32_i32_e32 v167, v196
	v_cvt_f32_i32_e32 v195, v201
	v_cvt_f32_i32_e32 v196, v202
	v_cvt_f32_i32_e32 v201, v215
	v_cvt_f32_i32_e32 v202, v216
	v_cvt_f32_i32_e32 v215, v221
	v_cvt_f32_i32_e32 v216, v222
	v_cvt_f32_i32_e32 v221, v227
	v_cvt_f32_i32_e32 v222, v228
	v_dual_mov_b32 v228, v138 :: v_dual_mov_b32 v227, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v230, v230, v22 :: v_dual_add_f32 v229, v229, v21
	v_add_f32_e32 v98, v98, v184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v68, v187
	v_cvt_f32_i32_e32 v69, v188
	v_cvt_f32_i32_e32 v70, v189
	v_cvt_f32_i32_e32 v71, v190
	v_dual_mov_b32 v137, v139 :: v_dual_mov_b32 v138, v140
	v_dual_mov_b32 v139, v143 :: v_dual_mov_b32 v140, v144
	v_dual_mov_b32 v143, v147 :: v_dual_mov_b32 v144, v148
	v_dual_mov_b32 v147, v153 :: v_dual_mov_b32 v148, v154
	v_dual_mov_b32 v153, v157 :: v_dual_mov_b32 v154, v158
	v_dual_mov_b32 v158, v112 :: v_dual_mov_b32 v157, v111
	v_mov_b32_e32 v111, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v95, v95, v198 :: v_dual_add_f32 v114, v114, v204
	v_dual_add_f32 v97, v97, v183 :: v_dual_add_f32 v94, v94, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v169, v174
	v_cvt_f32_i32_e32 v174, v177
	v_cvt_f32_i32_e32 v168, v172
	v_cvt_f32_i32_e32 v172, v173
	v_cvt_f32_i32_e32 v173, v175
	v_cvt_f32_i32_e32 v72, v239
	v_cvt_f32_i32_e32 v73, v240
	v_dual_mov_b32 v240, v5 :: v_dual_mov_b32 v239, v4
	v_cvt_f32_i32_e32 v74, v241
	v_cvt_f32_i32_e32 v75, v242
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v177, v235
	v_cvt_f32_i32_e32 v181, v236
	v_dual_mov_b32 v236, v142 :: v_dual_mov_b32 v235, v141
	v_mov_b32_e32 v141, v165
	v_cvt_f32_i32_e32 v178, v237
	v_cvt_f32_i32_e32 v182, v238
	v_mov_b32_e32 v238, v150
	v_cvt_f32_i32_e32 v175, v231
	v_cvt_f32_i32_e32 v179, v232
	v_mov_b32_e32 v232, v81
	v_wmma_i32_16x16x16_iu8 v[56:63], v[76:79], v[161:164], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v170
	v_cvt_f32_i32_e32 v170, v176
	v_cvt_f32_i32_e32 v176, v233
	v_cvt_f32_i32_e32 v180, v234
	v_dual_mov_b32 v234, v106 :: v_dual_mov_b32 v233, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v164, v193
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v185, v247
	v_cvt_f32_i32_e32 v186, v248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v193, v199
	v_cvt_f32_i32_e32 v199, v205
	v_cvt_f32_i32_e32 v205, v219
	v_cvt_f32_i32_e32 v219, v225
	v_cvt_f32_i32_e32 v165, v194
	v_cvt_f32_i32_e32 v194, v200
	v_cvt_f32_i32_e32 v200, v206
	v_cvt_f32_i32_e32 v206, v220
	v_cvt_f32_i32_e32 v220, v226
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v76, v243
	v_cvt_f32_i32_e32 v77, v244
	v_dual_mov_b32 v244, v102 :: v_dual_mov_b32 v243, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v162, v191
	v_cvt_f32_i32_e32 v163, v192
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v191, v253
	v_cvt_f32_i32_e32 v192, v254
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v166
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[101:102], off, off offset:128
	scratch_load_b64 v[253:254], off, off offset:160
	scratch_load_b64 v[166:167], off, off offset:120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v187, v249
	v_cvt_f32_i32_e32 v188, v250
	v_cvt_f32_i32_e32 v189, v251
	v_cvt_f32_i32_e32 v190, v252
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v113, v113, v203
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v78, v245
	v_cvt_f32_i32_e32 v79, v246
	v_dual_mov_b32 v246, v128 :: v_dual_mov_b32 v245, v127
	v_dual_mov_b32 v127, v145 :: v_dual_mov_b32 v112, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v117, v117, v201
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v154, v154, v67 :: v_dual_mov_b32 v67, v8
	v_dual_add_f32 v143, v143, v68 :: v_dual_add_f32 v140, v140, v71
	v_dual_mov_b32 v68, v31 :: v_dual_add_f32 v137, v137, v162
	v_mov_b32_e32 v237, v149
	v_dual_mov_b32 v149, v155 :: v_dual_mov_b32 v150, v156
	v_dual_mov_b32 v155, v159 :: v_dual_mov_b32 v156, v160
	v_dual_mov_b32 v160, v152 :: v_dual_mov_b32 v159, v151
	v_dual_mov_b32 v152, v1 :: v_dual_mov_b32 v151, v0
	scratch_load_b64 v[0:1], off, off offset:196 ; 8-byte Folded Reload
	v_mov_b32_e32 v231, v80
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:152
	scratch_load_b64 v[80:81], off, off offset:144
	scratch_load_b64 v[4:5], off, off offset:112
	scratch_load_b64 v[241:242], off, off offset:32
	v_dual_mov_b32 v248, v7 :: v_dual_mov_b32 v247, v6
	v_dual_mov_b32 v6, v121 :: v_dual_mov_b32 v7, v122
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v225, s4, v141
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s4, s4, s36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v228, v228, v165 :: v_dual_add_f32 v227, v227, v164
	v_dual_add_f32 v244, v244, v14 :: v_dual_add_f32 v243, v243, v13
	v_dual_add_f32 v234, v234, v18 :: v_dual_add_f32 v233, v233, v17
	v_dual_add_f32 v232, v232, v16 :: v_dual_add_f32 v231, v231, v15
	v_dual_add_f32 v248, v248, v12 :: v_dual_add_f32 v247, v247, v11
	v_dual_add_f32 v240, v240, v20 :: v_dual_add_f32 v239, v239, v19
	v_dual_add_f32 v236, v236, v24 :: v_dual_add_f32 v235, v235, v23
	v_mov_b32_e32 v128, v146
	v_dual_mov_b32 v122, v28 :: v_dual_mov_b32 v121, v27
	v_dual_mov_b32 v27, v107 :: v_dual_mov_b32 v28, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v121, v121, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v222
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v139, v139, v70 :: v_dual_add_f32 v138, v138, v163
	v_dual_mov_b32 v163, v93 :: v_dual_mov_b32 v162, v92
	v_dual_add_f32 v153, v153, v66 :: v_dual_add_f32 v144, v144, v69
	v_add_f32_e32 v91, v91, v212
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v123, v123, v38 :: v_dual_add_f32 v112, v112, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v156, v156, v65 :: v_dual_add_nc_u32 v11, s4, v96
	v_add_f32_e32 v155, v155, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v159, v159, v170 :: v_dual_add_f32 v152, v152, v181
	v_dual_add_f32 v151, v151, v177 :: v_dual_add_f32 v238, v238, v75
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v225
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v157, v157, v56
	v_dual_add_f32 v163, v163, v61 :: v_dual_add_f32 v122, v122, v220
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v118, v118, v202
	v_dual_add_f32 v6, v6, v9 :: v_dual_add_nc_u32 v9, s6, v96
	v_dual_add_f32 v7, v7, v10 :: v_dual_add_f32 v90, v90, v211
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v246, v246, v172
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v100, v100, v210 :: v_dual_cndmask_b32 v13, 0x80000000, v9
	v_add_f32_e32 v128, v128, v200
	v_dual_mov_b32 v201, v132 :: v_dual_add_f32 v110, v110, v206
	v_mov_b32_e32 v200, v131
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v245, v245, v168 :: v_dual_add_f32 v120, v120, v41
	v_add_f32_e32 v124, v124, v39
	v_add_f32_e32 v200, v200, v175
	v_add_f32_e32 v126, v126, v37
	v_add_f32_e32 v162, v162, v60
	v_add_f32_e32 v158, v158, v57
	v_add_f32_e32 v160, v160, v174
	v_add_f32_e32 v150, v150, v73
	v_add_f32_e32 v148, v148, v77
	v_add_f32_e32 v104, v104, v49
	s_waitcnt vmcnt(8)
	v_add_f32_e32 v102, v102, v173
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(7)
	v_dual_add_f32 v254, v254, v208 :: v_dual_add_f32 v253, v253, v207
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v166, v166, v52 :: v_dual_add_f32 v3, v3, v63
	v_mov_b32_e32 v105, v0
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v165, v136 :: v_dual_add_f32 v242, v242, v196
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v241, v241, v195
	v_dual_mov_b32 v0, v25 :: v_dual_mov_b32 v1, v26
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v226, s6, v105
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v10, s4, v105
	v_dual_mov_b32 v164, v135 :: v_dual_add_f32 v5, v5, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v1, v224 :: v_dual_cndmask_b32 v12, 0x80000000, v226
	v_dual_mov_b32 v226, v130 :: v_dual_mov_b32 v225, v129
	v_dual_mov_b32 v130, v116 :: v_dual_cndmask_b32 v17, 0x80000000, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v21, 0x80000000, v11 :: v_dual_add_f32 v226, v226, v194
	v_mov_b32_e32 v129, v115
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x2
	buffer_load_b128 v[9:12], v12, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[105:106], off, off offset:104
	scratch_load_b64 v[202:203], off, off offset:96
	scratch_load_b64 v[115:116], off, off offset:80
	scratch_load_b64 v[251:252], off, off offset:88
	scratch_load_b64 v[249:250], off, off offset:72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v225, v225, v193
	v_add_f32_e32 v4, v4, v213
	v_dual_add_f32 v99, v99, v209 :: v_dual_mov_b32 v108, v5
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[208:209], off, off
	scratch_load_b64 v[131:132], off, off offset:8
	scratch_load_b64 v[133:134], off, off offset:16
	scratch_load_b64 v[135:136], off, off offset:24
	scratch_load_b64 v[25:26], off, off offset:40
	scratch_load_b64 v[145:146], off, off offset:48
	v_dual_add_f32 v81, v81, v218 :: v_dual_add_f32 v0, v0, v223
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[218:219], off, off offset:56
	scratch_load_b64 v[222:223], off, off offset:136
	v_add_f32_e32 v27, v27, v221
	scratch_load_b64 v[220:221], off, off offset:64 ; 8-byte Folded Reload
	v_dual_add_f32 v109, v109, v205 :: v_dual_add_f32 v164, v164, v215
	v_dual_mov_b32 v205, v1 :: v_dual_mov_b32 v204, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_load_b64 v[0:1], off, off offset:168 ; 8-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s39, 1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v2, v2, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 2
	s_mov_b32 s4, s30
	s_cselect_b32 s39, s6, 0
	v_mov_b32_e32 v207, v28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s3, s39, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s7, s39, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s3, s3, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s30, s7, 0
	v_mov_b32_e32 v93, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v127, v127, v199 :: v_dual_add_nc_u32 v64, s3, v68
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v65, s30, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v165, v165, v216
	v_dual_mov_b32 v107, v4 :: v_dual_mov_b32 v206, v27
	v_add_f32_e32 v80, v80, v217
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v101, v101, v169
	v_add_f32_e32 v201, v201, v179
	v_add_f32_e32 v149, v149, v72
	v_add_f32_e32 v237, v237, v74
	v_dual_add_f32 v147, v147, v76 :: v_dual_add_f32 v130, v130, v35
	v_add_f32_e32 v129, v129, v34
	v_add_f32_e32 v125, v125, v36
	v_add_f32_e32 v119, v119, v40
	v_add_f32_e32 v111, v111, v44
	v_add_f32_e32 v103, v103, v48
	v_dual_add_f32 v167, v167, v53 :: v_dual_mov_b32 v92, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s3, 0x8000
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s3, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v64, v[0:1] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v65, v[9:12]
	ds_store_b128 v65, v[13:16] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v65, v[17:20] offset:16384
	ds_store_b128 v65, v[21:24] offset:20480
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v249, v249, v42
	scratch_load_b32 v42, off, off offset:176 ; 4-byte Folded Reload
	v_dual_add_f32 v223, v223, v171 :: v_dual_add_f32 v222, v222, v161
	v_add_f32_e32 v221, v221, v180
	v_dual_add_f32 v220, v220, v176 :: v_dual_add_f32 v219, v219, v182
	v_add_f32_e32 v218, v218, v178
	v_dual_add_f32 v26, v26, v186 :: v_dual_add_f32 v25, v25, v185
	v_add_f32_e32 v134, v134, v190
	v_dual_add_f32 v136, v136, v188 :: v_dual_add_f32 v135, v135, v187
	v_dual_add_f32 v208, v208, v32 :: v_dual_add_f32 v133, v133, v189
	v_add_f32_e32 v131, v131, v191
	v_dual_add_f32 v209, v209, v33 :: v_dual_add_f32 v250, v250, v43
	v_dual_add_f32 v252, v252, v47 :: v_dual_add_f32 v251, v251, v46
	v_dual_add_f32 v116, v116, v51 :: v_dual_add_f32 v115, v115, v50
	v_dual_add_f32 v203, v203, v55 :: v_dual_add_f32 v202, v202, v54
	v_dual_add_f32 v106, v106, v59 :: v_dual_add_f32 v105, v105, v58
	v_dual_add_f32 v146, v146, v79 :: v_dual_add_f32 v145, v145, v78
	v_add_f32_e32 v132, v132, v192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v79, off, off offset:204
	scratch_load_b32 v89, off, off offset:212
	scratch_load_b32 v39, off, off offset:216
	scratch_load_b32 v0, off, off offset:220
	v_dual_mov_b32 v142, v30 :: v_dual_mov_b32 v141, v29
	s_mov_b32 s5, s4
	v_dual_mov_b32 v82, v97 :: v_dual_mov_b32 v83, v98
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v1, 4, v79
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v222, 0
	s_add_i32 s40, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s37, 0, 0x4000
	v_mov_b32_e32 v223, v222
	v_mov_b32_e32 v6, v222
	v_mov_b32_e32 v101, v222
	v_mov_b32_e32 v159, v222
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v200, v222 :: v_dual_mov_b32 v201, v223
	v_mov_b32_e32 v7, v223
	v_mov_b32_e32 v102, v223
	v_dual_mov_b32 v244, v223 :: v_dual_mov_b32 v243, v222
	v_dual_mov_b32 v246, v223 :: v_dual_mov_b32 v245, v222
	v_dual_mov_b32 v248, v223 :: v_dual_mov_b32 v247, v222
	v_mov_b32_e32 v160, v223
	v_dual_mov_b32 v232, v223 :: v_dual_mov_b32 v231, v222
	v_dual_mov_b32 v234, v223 :: v_dual_mov_b32 v233, v222
	v_dual_mov_b32 v151, v222 :: v_dual_mov_b32 v152, v223
	v_dual_mov_b32 v230, v223 :: v_dual_mov_b32 v229, v222
	v_dual_mov_b32 v220, v222 :: v_dual_mov_b32 v221, v223
	v_dual_mov_b32 v240, v223 :: v_dual_mov_b32 v239, v222
	v_dual_mov_b32 v218, v222 :: v_dual_mov_b32 v219, v223
	v_dual_mov_b32 v236, v223 :: v_dual_mov_b32 v235, v222
	v_dual_mov_b32 v149, v222 :: v_dual_mov_b32 v150, v223
	v_dual_mov_b32 v155, v222 :: v_dual_mov_b32 v156, v223
	v_dual_mov_b32 v147, v222 :: v_dual_mov_b32 v148, v223
	v_dual_mov_b32 v143, v222 :: v_dual_mov_b32 v144, v223
	v_dual_mov_b32 v238, v223 :: v_dual_mov_b32 v237, v222
	v_dual_mov_b32 v153, v222 :: v_dual_mov_b32 v154, v223
	v_dual_mov_b32 v145, v222 :: v_dual_mov_b32 v146, v223
	v_dual_mov_b32 v139, v222 :: v_dual_mov_b32 v140, v223
	v_dual_mov_b32 v25, v222 :: v_dual_mov_b32 v26, v223
	v_dual_mov_b32 v137, v222 :: v_dual_mov_b32 v138, v223
	v_dual_mov_b32 v133, v222 :: v_dual_mov_b32 v134, v223
	v_dual_mov_b32 v141, v222 :: v_dual_mov_b32 v142, v223
	v_dual_mov_b32 v135, v222 :: v_dual_mov_b32 v136, v223
	v_dual_mov_b32 v228, v223 :: v_dual_mov_b32 v227, v222
	v_dual_mov_b32 v131, v222 :: v_dual_mov_b32 v132, v223
	v_dual_mov_b32 v82, v222 :: v_dual_mov_b32 v83, v223
	v_dual_mov_b32 v208, v222 :: v_dual_mov_b32 v209, v223
	v_dual_mov_b32 v226, v223 :: v_dual_mov_b32 v225, v222
	v_dual_mov_b32 v125, v222 :: v_dual_mov_b32 v126, v223
	v_dual_mov_b32 v94, v222 :: v_dual_mov_b32 v95, v223
	v_dual_mov_b32 v129, v222 :: v_dual_mov_b32 v130, v223
	v_dual_mov_b32 v242, v223 :: v_dual_mov_b32 v241, v222
	v_dual_mov_b32 v123, v222 :: v_dual_mov_b32 v124, v223
	v_dual_mov_b32 v127, v222 :: v_dual_mov_b32 v128, v223
	v_dual_mov_b32 v119, v222 :: v_dual_mov_b32 v120, v223
	v_dual_mov_b32 v117, v222 :: v_dual_mov_b32 v118, v223
	v_dual_mov_b32 v111, v222 :: v_dual_mov_b32 v112, v223
	v_dual_mov_b32 v109, v222 :: v_dual_mov_b32 v110, v223
	v_dual_mov_b32 v250, v223 :: v_dual_mov_b32 v249, v222
	v_dual_mov_b32 v113, v222 :: v_dual_mov_b32 v114, v223
	v_dual_mov_b32 v252, v223 :: v_dual_mov_b32 v251, v222
	v_dual_mov_b32 v164, v222 :: v_dual_mov_b32 v165, v223
	v_dual_mov_b32 v103, v222 :: v_dual_mov_b32 v104, v223
	v_dual_mov_b32 v254, v223 :: v_dual_mov_b32 v253, v222
	v_dual_mov_b32 v166, v222 :: v_dual_mov_b32 v167, v223
	v_dual_mov_b32 v90, v222 :: v_dual_mov_b32 v91, v223
	v_dual_mov_b32 v115, v222 :: v_dual_mov_b32 v116, v223
	v_dual_mov_b32 v99, v222 :: v_dual_mov_b32 v100, v223
	v_dual_mov_b32 v202, v222 :: v_dual_mov_b32 v203, v223
	v_dual_mov_b32 v107, v222 :: v_dual_mov_b32 v108, v223
	v_dual_mov_b32 v157, v222 :: v_dual_mov_b32 v158, v223
	v_dual_mov_b32 v80, v222 :: v_dual_mov_b32 v81, v223
	v_dual_mov_b32 v162, v222 :: v_dual_mov_b32 v163, v223
	v_dual_mov_b32 v206, v222 :: v_dual_mov_b32 v207, v223
	v_dual_mov_b32 v105, v222 :: v_dual_mov_b32 v106, v223
	v_dual_mov_b32 v121, v222 :: v_dual_mov_b32 v122, v223
	v_dual_mov_b32 v92, v222 :: v_dual_mov_b32 v93, v223
	v_dual_mov_b32 v204, v222 :: v_dual_mov_b32 v205, v223
	s_add_i32 s3, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v30, v7 :: v_dual_mov_b32 v29, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v27, 0x90, 0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v28, 0, 1, s33
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_mov_b32 s4, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v161, v27, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v87, v39, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s1, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v0, 16, v161
	v_add_nc_u32_e32 v1, s40, v161
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v98, 16, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s40, v0
	ds_load_b128 v[31:34], v1
	ds_load_b128 v[35:38], v1 offset:512
	ds_load_b128 v[17:20], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[21:24], v2
	ds_load_b128 v[13:16], v2 offset:512
	ds_load_b128 v[9:12], v2 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v2 offset:1536
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
	v_add_nc_u32_e32 v27, s5, v87
	ds_load_b128 v[63:66], v27
	ds_load_b128 v[67:70], v27 offset:4096
	v_add_nc_u32_e32 v27, s5, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	v_mov_b32_e32 v46, s11
	v_mov_b32_e32 v44, s9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[71:74], v27
	ds_load_b128 v[75:78], v27 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v45, s10 :: v_dual_mov_b32 v42, s7
	v_dual_mov_b32 v43, s8 :: v_dual_mov_b32 v40, s5
	v_mov_b32_e32 v41, s6
	v_mov_b32_e32 v39, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[63:66], v[31:34], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[71:74], v[21:24], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v27, v50
	v_cvt_f32_i32_e32 v28, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v50, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v248, v248, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v244, v244, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[67:70], v[31:34], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[63:66], v[35:38], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v247, v247, v28 :: v_dual_add_f32 v232, v232, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[75:78], v[21:24], v[55:62] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v28, v53
	v_wmma_i32_16x16x16_iu8 v[168:175], v[71:74], v[13:16], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[67:70], v[35:38], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v58
	v_cvt_f32_i32_e32 v49, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v243, v243, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v231, v231, v28 :: v_dual_add_f32 v240, v240, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v57
	v_cvt_f32_i32_e32 v27, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v234, v234, v49 :: v_dual_add_f32 v233, v233, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v59
	v_cvt_f32_i32_e32 v50, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v239, v239, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v230, v230, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v169
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v229, v229, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v171
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v235, v235, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v168
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v156, v156, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v173
	v_wmma_i32_16x16x16_iu8 v[176:183], v[75:78], v[13:16], v[176:183] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v236, v236, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v155, v155, v28 :: v_dual_add_f32 v144, v144, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v172
	v_cvt_f32_i32_e32 v27, v175
	v_wmma_i32_16x16x16_iu8 v[184:191], v[63:66], v[17:20], v[39:46] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v154, v154, v49 :: v_dual_add_f32 v153, v153, v50
	v_add_f32_e32 v140, v140, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v174
	v_cvt_f32_i32_e32 v50, v177
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v143, v143, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v176
	v_cvt_f32_i32_e32 v27, v179
	v_wmma_i32_16x16x16_iu8 v[184:191], v[71:74], v[9:12], v[184:191] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v139, v139, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v181
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v137, v137, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v178
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v228, v228, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v183
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v138, v138, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v180
	v_wmma_i32_16x16x16_iu8 v[192:199], v[67:70], v[17:20], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v83, v83, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v185
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v227, v227, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v182
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v141, v141, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v187
	v_wmma_i32_16x16x16_iu8 v[192:199], v[75:78], v[9:12], v[192:199] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v142, v142, v49
	v_add_f32_e32 v82, v82, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v186
	v_cvt_f32_i32_e32 v49, v184
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v226, v226, v27
	v_add_f32_e32 v242, v242, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v189
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v241, v241, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v188
	v_cvt_f32_i32_e32 v50, v190
	v_wmma_i32_16x16x16_iu8 v[210:217], v[63:66], v[5:8], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v225, v225, v49 :: v_dual_add_f32 v94, v94, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v191
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v127, v127, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v192
	v_cvt_f32_i32_e32 v50, v197
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v95, v95, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v193
	v_wmma_i32_16x16x16_iu8 v[210:217], v[71:74], v[1:4], v[210:217] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v128, v128, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v194
	v_wmma_i32_16x16x16_iu8 v[39:46], v[67:70], v[5:8], v[39:46] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v118, v118, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v195
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v117, v117, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v196
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v110, v110, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v210
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v114, v114, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v199
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v109, v109, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v198
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v113, v113, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v211
	v_wmma_i32_16x16x16_iu8 v[39:46], v[75:78], v[1:4], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v164, v164, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v212
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v254, v254, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v214
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v165, v165, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v213
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v253, v253, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v217
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v99, v99, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v216
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v100, v100, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v215
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v90, v90, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v108, v108, v50 :: v_dual_add_f32 v107, v107, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v91, v91, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v39, v42
	v_cvt_f32_i32_e32 v40, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v80, v80, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v81, v81, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v122, v122, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v39, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v121, v121, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v207, v207, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v46
	v_cvt_f32_i32_e32 v41, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v206, v206, v28
	v_add_f32_e32 v204, v204, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v30, v30, v40 :: v_dual_add_f32 v205, v205, v27
	v_add_f32_e32 v29, v29, v41
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[82:83], off offset:220
	scratch_store_b64 off, v[225:226], off offset:88
	scratch_store_b64 off, v[227:228], off offset:104
	scratch_store_b64 off, v[141:142], off offset:204
	scratch_store_b64 off, v[231:232], off offset:128
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v46, s11 :: v_dual_add_nc_u32 v27, s37, v87
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[63:66], v27
	ds_load_b128 v[67:70], v27 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v44, s9 :: v_dual_add_nc_u32 v27, s37, v98
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[71:74], v27 offset:4096
	ds_load_b128 v[75:78], v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v45, s10 :: v_dual_mov_b32 v42, s7
	v_dual_mov_b32 v43, s8 :: v_dual_mov_b32 v40, s5
	v_mov_b32_e32 v41, s6
	v_mov_b32_e32 v39, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[63:66], v[31:34], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[67:70], v[31:34], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[63:66], v[35:38], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[67:70], v[35:38], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[31:38], v[63:66], v[17:20], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[67:70], v[17:20], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[75:78], v[21:24], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[21:24], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[63:66], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[67:70], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[75:78], v[13:16], v[168:175] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[75:78], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[71:74], v[13:16], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[71:74], v[1:4], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v51
	v_cvt_f32_i32_e32 v2, v54
	v_cvt_f32_i32_e32 v3, v56
	v_cvt_f32_i32_e32 v4, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v245, v245, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v101, v101, v1 :: v_dual_add_f32 v160, v160, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v53
	v_cvt_f32_i32_e32 v2, v58
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v200, v200, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v62
	v_wmma_i32_16x16x16_iu8 v[31:38], v[75:78], v[9:12], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[71:74], v[9:12], v[184:191] neg_lo:[1,1,0]
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v221, v221, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v60
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v159, v159, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v57
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v201, v201, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v59
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v152, v152, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v169
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v220, v220, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v151, v151, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v171
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v150, v150, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v173
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v218, v218, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v168
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v219, v219, v4 :: v_dual_add_f32 v238, v238, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v148, v148, v2 :: v_dual_add_f32 v149, v149, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v172
	v_cvt_f32_i32_e32 v2, v175
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v237, v237, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v174
	v_cvt_f32_i32_e32 v4, v177
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v147, v147, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v176
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v146, v146, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v179
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v145, v145, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v181
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v25, v25, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v178
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v136, v136, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v183
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v26, v26, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v180
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v135, v135, v1 :: v_dual_add_f32 v134, v134, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v182
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v132, v132, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v32
	v_cvt_f32_i32_e32 v3, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v133, v133, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v131, v131, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v208, v208, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v209, v209, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v129, v129, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v130, v130, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v126, v126, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v185
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v125, v125, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v184
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v124, v124, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v186
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v120, v120, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v187
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v123, v123, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v189
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v119, v119, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v188
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v250, v250, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v191
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v249, v249, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v111, v111, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v190
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v252, v252, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v112, v112, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v251, v251, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v116, v116, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v104, v104, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v103, v103, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v167, v167, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v115, v115, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v23
	v_cvt_f32_i32_e32 v5, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v166, v166, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v203, v203, v4 :: v_dual_add_f32 v202, v202, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v39
	v_cvt_f32_i32_e32 v4, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v246, v246, v5
	v_add_f32_e32 v158, v158, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v44
	v_cvt_f32_i32_e32 v5, v47
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v106, v106, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v157, v157, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v105, v105, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v163, v163, v2 :: v_dual_add_f32 v222, v222, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v46
	v_cvt_f32_i32_e32 v7, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v223, v223, v4 :: v_dual_add_f32 v162, v162, v1
	v_dual_mov_b32 v82, v222 :: v_dual_add_f32 v93, v93, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v102, v102, v7
	v_dual_add_f32 v92, v92, v3 :: v_dual_mov_b32 v83, v223
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[200:201], off offset:112
	scratch_store_b64 off, v[220:221], off offset:64
	scratch_store_b64 off, v[218:219], off offset:56
	scratch_store_b64 off, v[208:209], off
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_dual_mov_b32 v82, v222 :: v_dual_mov_b32 v83, v223
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[220:221], off offset:64
	scratch_store_b64 off, v[218:219], off offset:56
	scratch_store_b64 off, v[200:201], off offset:112
	scratch_store_b64 off, v[208:209], off
.LBB0_13:
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v1, s31, v161
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v0, s31, v0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v27, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[13:16], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[1:4], v1 offset:1536
	ds_load_b128 v[31:34], v0
	ds_load_b128 v[36:39], v0 offset:512
	ds_load_b128 v[17:20], v0 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v0 offset:1536
	v_dual_mov_b32 v75, v247 :: v_dual_mov_b32 v76, v248
	v_dual_mov_b32 v96, v245 :: v_dual_mov_b32 v97, v246
	v_dual_mov_b32 v84, v243 :: v_dual_mov_b32 v85, v244
	v_dual_mov_b32 v141, v233 :: v_dual_mov_b32 v142, v234
	v_cmp_ne_u32_e64 s1, 1, v27
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v200, 0
	v_mov_b32_e32 v199, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[239:240], off offset:160
	scratch_store_b64 off, v[235:236], off offset:152
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v0, s30, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v45, s6
	v_mov_b32_e32 v49, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[59:62], v0
	ds_load_b128 v[63:66], v0 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v47, s8 :: v_dual_add_nc_u32 v0, s30, v98
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[67:70], v0 offset:4096
	ds_load_b128 v[71:74], v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v43, s4
	v_dual_mov_b32 v46, s7 :: v_dual_mov_b32 v77, v229
	v_mov_b32_e32 v44, s5
	v_mov_b32_e32 v78, v230
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[186:193], v[59:62], v[13:16], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[59:62], v[21:24], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[194:201], v[63:66], v[13:16], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[186:193], v[71:74], v[36:39], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[71:74], v[31:34], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[194:201], v[67:70], v[36:39], v[194:201] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v28, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v174, v56
	v_cvt_f32_i32_e32 v56, v197
	v_cvt_f32_i32_e32 v175, v53
	v_cvt_f32_i32_e32 v176, v54
	v_mov_b32_e32 v197, v28
	v_wmma_i32_16x16x16_iu8 v[178:185], v[63:66], v[21:24], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[59:62], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[63:66], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[59:62], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[67:70], v[31:34], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[71:74], v[17:20], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[67:70], v[17:20], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[71:74], v[5:8], v[225:232] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[67:70], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v173, v55
	v_cvt_f32_i32_e32 v0, v57
	v_cvt_f32_i32_e32 v42, v58
	v_cvt_f32_i32_e32 v41, v178
	v_cvt_f32_i32_e32 v40, v179
	v_cvt_f32_i32_e32 v168, v180
	v_cvt_f32_i32_e32 v171, v181
	v_cvt_f32_i32_e32 v27, v182
	v_cvt_f32_i32_e32 v169, v183
	v_cvt_f32_i32_e32 v170, v184
	v_cvt_f32_i32_e32 v172, v185
	v_cvt_f32_i32_e32 v255, v186
	v_cvt_f32_i32_e32 v35, v187
	v_cvt_f32_i32_e32 v86, v188
	v_cvt_f32_i32_e32 v208, v189
	v_cvt_f32_i32_e32 v65, v190
	v_cvt_f32_i32_e32 v67, v191
	v_cvt_f32_i32_e32 v72, v192
	v_cvt_f32_i32_e32 v73, v194
	v_cvt_f32_i32_e32 v53, v195
	v_cvt_f32_i32_e32 v54, v196
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v28, v199
	v_cvt_f32_i32_e32 v55, v200
	v_cvt_f32_i32_e32 v58, v201
	v_cvt_f32_i32_e32 v57, v209
	v_cvt_f32_i32_e32 v60, v210
	v_cvt_f32_i32_e32 v61, v211
	v_cvt_f32_i32_e32 v64, v212
	v_cvt_f32_i32_e32 v59, v213
	v_cvt_f32_i32_e32 v62, v214
	v_cvt_f32_i32_e32 v63, v215
	v_cvt_f32_i32_e32 v68, v216
	v_cvt_f32_i32_e32 v66, v217
	v_cvt_f32_i32_e32 v70, v218
	v_cvt_f32_i32_e32 v71, v219
	v_cvt_f32_i32_e32 v178, v220
	v_cvt_f32_i32_e32 v69, v221
	v_cvt_f32_i32_e32 v74, v222
	v_cvt_f32_i32_e32 v161, v223
	v_cvt_f32_i32_e32 v180, v224
	v_cvt_f32_i32_e32 v179, v225
	v_cvt_f32_i32_e32 v182, v226
	v_cvt_f32_i32_e32 v183, v227
	v_cvt_f32_i32_e32 v185, v228
	v_cvt_f32_i32_e32 v181, v229
	v_cvt_f32_i32_e32 v184, v230
	v_dual_mov_b32 v230, v78 :: v_dual_mov_b32 v229, v77
	v_cvt_f32_i32_e32 v231, v231
	v_cvt_f32_i32_e32 v77, v232
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v78, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v201, v46
	v_cvt_f32_i32_e32 v44, v47
	v_cvt_f32_i32_e32 v88, v48
	v_cvt_f32_i32_e32 v200, v49
	v_cvt_f32_i32_e32 v199, v50
	v_cvt_f32_i32_e32 v191, v51
	v_cvt_f32_i32_e32 v192, v52
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v45, off offset:332
	scratch_store_b32 off, v78, off offset:328
	scratch_store_b32 off, v44, off offset:324
	scratch_store_b32 off, v77, off offset:320
	scratch_store_b32 off, v43, off offset:316
	scratch_store_b32 off, v185, off offset:312
	scratch_store_b32 off, v184, off offset:308
	scratch_store_b32 off, v183, off offset:304
	scratch_store_b32 off, v182, off offset:300
	scratch_store_b32 off, v181, off offset:296
	scratch_store_b32 off, v180, off offset:292
	scratch_store_b32 off, v179, off offset:288
	scratch_store_b32 off, v178, off offset:284
	scratch_store_b32 off, v161, off offset:280
	scratch_store_b32 off, v74, off offset:276
	scratch_store_b32 off, v71, off offset:272
	scratch_store_b32 off, v70, off offset:268
	scratch_store_b32 off, v69, off offset:264
	scratch_store_b32 off, v68, off offset:260
	scratch_store_b32 off, v66, off offset:256
	scratch_store_b32 off, v64, off offset:252
	scratch_store_b32 off, v63, off offset:248
	scratch_store_b32 off, v62, off offset:244
	scratch_store_b32 off, v61, off offset:240
	scratch_store_b32 off, v60, off offset:236
	scratch_store_b32 off, v59, off offset:232
	scratch_store_b32 off, v58, off offset:228
	scratch_store_b32 off, v57, off offset:216
	scratch_store_b32 off, v56, off offset:212
	scratch_store_b32 off, v55, off offset:196
	scratch_store_b32 off, v28, off offset:184
	scratch_store_b32 off, v54, off offset:180
	s_clause 0xe                            ; 116-byte Folded Spill
	scratch_store_b32 off, v53, off offset:176
	scratch_store_b64 off, v[147:148], off offset:188
	scratch_store_b64 off, v[145:146], off offset:48
	scratch_store_b64 off, v[143:144], off offset:168
	scratch_store_b64 off, v[25:26], off offset:40
	scratch_store_b64 off, v[139:140], off offset:144
	scratch_store_b64 off, v[135:136], off offset:24
	scratch_store_b64 off, v[137:138], off offset:136
	scratch_store_b64 off, v[133:134], off offset:16
	scratch_store_b64 off, v[131:132], off offset:8
	scratch_store_b64 off, v[129:130], off offset:96
	scratch_store_b64 off, v[241:242], off offset:32
	scratch_store_b64 off, v[125:126], off offset:80
	scratch_store_b64 off, v[123:124], off offset:72
	scratch_store_b64 off, v[94:95], off offset:120
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v246, 0
	v_mov_b32_e32 v248, 0
	v_mov_b32_e32 v64, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v25, v65 :: v_dual_add_nc_u32 v28, s3, v98
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	ds_load_b128 v[59:62], v28 offset:4096
	ds_load_b128 v[63:66], v28
	v_dual_mov_b32 v77, v72 :: v_dual_add_nc_u32 v28, s3, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v26, v67
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[67:70], v28 offset:4096
	v_mov_b32_e32 v78, v73
	ds_load_b128 v[71:74], v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v45, s6
	v_dual_mov_b32 v49, s10 :: v_dual_mov_b32 v48, s9
	v_mov_b32_e32 v43, s4
	v_dual_mov_b32 v47, s8 :: v_dual_mov_b32 v46, s7
	v_mov_b32_e32 v44, s5
	v_mov_b32_e32 v28, v231
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[209:216], v[67:70], v[21:24], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[71:74], v[21:24], v[43:50] neg_lo:[1,1,0]
	v_dual_mov_b32 v23, v229 :: v_dual_mov_b32 v24, v230
	v_mov_b32_e32 v21, v237
	v_wmma_i32_16x16x16_iu8 v[225:232], v[67:70], v[13:16], v[43:50] neg_lo:[1,1,0]
	v_mov_b32_e32 v22, v238
	v_wmma_i32_16x16x16_iu8 v[233:240], v[71:74], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[71:74], v[13:16], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[67:70], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[71:74], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[67:70], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[59:62], v[36:39], v[225:232] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[59:62], v[31:34], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[63:66], v[17:20], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[63:66], v[31:34], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[63:66], v[36:39], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[59:62], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[63:66], v[5:8], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_mov_b32_e32 v65, v25
	v_cvt_f32_i32_e32 v68, v229
	v_cvt_f32_i32_e32 v71, v230
	v_dual_mov_b32 v230, v24 :: v_dual_mov_b32 v73, v78
	v_cvt_f32_i32_e32 v187, v215
	v_cvt_f32_i32_e32 v189, v216
	v_mov_b32_e32 v229, v23
	v_cvt_f32_i32_e32 v69, v231
	v_mov_b32_e32 v231, v28
	v_cvt_f32_i32_e32 v215, v237
	v_cvt_f32_i32_e32 v216, v238
	v_mov_b32_e32 v238, v22
	v_dual_mov_b32 v72, v77 :: v_dual_mov_b32 v67, v26
	v_cvt_f32_i32_e32 v177, v51
	v_cvt_f32_i32_e32 v196, v52
	v_cvt_f32_i32_e32 v194, v53
	v_cvt_f32_i32_e32 v195, v54
	v_cvt_f32_i32_e32 v190, v55
	v_cvt_f32_i32_e32 v193, v56
	v_cvt_f32_i32_e32 v180, v57
	v_cvt_f32_i32_e32 v182, v58
	v_cvt_f32_i32_e32 v181, v209
	v_cvt_f32_i32_e32 v184, v210
	v_cvt_f32_i32_e32 v185, v211
	v_cvt_f32_i32_e32 v188, v212
	v_cvt_f32_i32_e32 v183, v213
	v_cvt_f32_i32_e32 v186, v214
	v_cvt_f32_i32_e32 v178, v217
	v_cvt_f32_i32_e32 v179, v218
	v_cvt_f32_i32_e32 v161, v219
	v_cvt_f32_i32_e32 v51, v220
	v_cvt_f32_i32_e32 v209, v221
	v_cvt_f32_i32_e32 v25, v222
	v_cvt_f32_i32_e32 v210, v223
	v_cvt_f32_i32_e32 v212, v224
	v_cvt_f32_i32_e32 v66, v225
	v_cvt_f32_i32_e32 v214, v226
	v_cvt_f32_i32_e32 v70, v227
	v_cvt_f32_i32_e32 v218, v228
	v_cvt_f32_i32_e32 v220, v232
	v_cvt_f32_i32_e32 v219, v233
	v_cvt_f32_i32_e32 v78, v234
	v_cvt_f32_i32_e32 v77, v235
	v_cvt_f32_i32_e32 v226, v236
	v_mov_b32_e32 v237, v21
	v_cvt_f32_i32_e32 v26, v239
	v_cvt_f32_i32_e32 v222, v240
	v_cvt_f32_i32_e32 v227, v241
	v_cvt_f32_i32_e32 v211, v242
	v_cvt_f32_i32_e32 v213, v243
	v_cvt_f32_i32_e32 v234, v244
	v_cvt_f32_i32_e32 v74, v245
	v_cvt_f32_i32_e32 v232, v246
	v_cvt_f32_i32_e32 v233, v247
	v_cvt_f32_i32_e32 v236, v248
	v_cvt_f32_i32_e32 v235, v9
	v_cvt_f32_i32_e32 v217, v10
	v_cvt_f32_i32_e32 v239, v11
	v_cvt_f32_i32_e32 v242, v12
	v_cvt_f32_i32_e32 v221, v13
	v_cvt_f32_i32_e32 v240, v14
	v_cvt_f32_i32_e32 v241, v15
	v_cvt_f32_i32_e32 v245, v16
	v_cvt_f32_i32_e32 v244, v43
	v_cvt_f32_i32_e32 v62, v44
	v_cvt_f32_i32_e32 v246, v45
	v_cvt_f32_i32_e32 v63, v46
	v_cvt_f32_i32_e32 v243, v47
	v_cvt_f32_i32_e32 v247, v48
	v_cvt_f32_i32_e32 v248, v49
	v_cvt_f32_i32_e32 v64, v50
.LBB0_17:
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(4)
	v_dual_add_f32 v1, v29, v191 :: v_dual_add_f32 v2, v30, v192
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v94, 0xf0, v79
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v4, s14, v79
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v32, v29, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v1, 1, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v30, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v2, 5, v89
	v_lshl_add_u32 v3, v94, 2, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v30, v26 :: v_dual_and_b32 v1, 28, v1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v4, 1, v4
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v33, v3, v2, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v82, v177 :: v_dual_add_f32 v2, v83, v196
	v_add_f32_e32 v3, v102, v193
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v17, v159, v180 :: v_dual_add_f32 v34, v152, v186
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v82, v1, s2
	v_cndmask_b32_e64 v15, v83, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v75, v175 :: v_dual_add_f32 v2, v76, v176
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v24, v94, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v147, v152, v34, s2
	v_cndmask_b32_e64 v17, v159, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v26, v75, v1, s2
	v_cndmask_b32_e64 v60, v76, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v96, v194 :: v_dual_add_f32 v2, v97, v195
	v_dual_add_f32 v82, v252, v236 :: v_dual_and_b32 v223, 15, v79
	v_add_f32_e32 v74, v111, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v96, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v84, v173
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v97, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v85, v174
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v230, v169
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v84, v1, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s28, v223
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v85, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v2, v101, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v102, v3, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v190, v206 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v101, v2, s2
	v_cndmask_b32_e64 v135, v230, v7, s2
	v_mov_b32_e32 v193, v204
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v2, 32, v1
	v_or_b32_e32 v3, 64, v1
	v_or_b32_e32 v5, 0x60, v1
	s_clause 0x3
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	buffer_load_u16 v53, v2, s[8:11], 0 offen
	buffer_load_u16 v87, v3, s[8:11], 0 offen
	buffer_load_u16 v175, v5, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v142, v40
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v4, v141, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v139, v142, v3, s2
	v_dual_mov_b32 v194, v205 :: v_dual_mov_b32 v191, v207
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v89, v249, v213
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v129, v141, v4, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v221, v166, v221
	v_add_f32_e32 v213, v106, v63
	v_add_f32_e32 v63, v105, v246
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v243, v162, v243 :: v_dual_lshlrev_b32 v140, 16, v28
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v207, 16, v175
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v33, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[83:84], off, off offset:128
	scratch_load_b64 v[75:76], off, off offset:112
	scratch_load_b64 v[39:40], off, off offset:56
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v1, s29, v79, 1
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[101:102], off, off offset:160
	scratch_load_b64 v[43:44], off, off offset:152
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v8, v229, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v36, v151, v183
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v183, v119, v227
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v227, v115, v239 :: v_dual_add_f32 v2, v84, v42
	scratch_load_b64 v[41:42], off, off offset:64 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v0, v83, v0 :: v_dual_add_f32 v11, v160, v182
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v5, v102, v171 :: v_dual_add_f32 v6, v101, v168
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v9, v44, v172 :: v_dual_add_f32 v10, v43, v170
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v20, v76, v184 :: v_dual_add_f32 v21, v75, v181
	v_dual_add_f32 v37, v40, v189 :: v_dual_add_f32 v38, v39, v187
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v137, v83, v0, s2
	v_cndmask_b32_e64 v138, v84, v2, s2
	v_cndmask_b32_e64 v31, v75, v21, s2
	v_cndmask_b32_e64 v27, v76, v20, s2
	v_cndmask_b32_e64 v130, v101, v6, s2
	v_cndmask_b32_e64 v134, v102, v5, s2
	v_cndmask_b32_e64 v133, v229, v8, s2
	v_cndmask_b32_e64 v132, v44, v9, s2
	v_cndmask_b32_e64 v55, v40, v37, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[4:7], v24 offset:512
	ds_load_b128 v[0:3], v24 offset:528
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v151, v36, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v36, v150, v179
	v_dual_mov_b32 v84, v107 :: v_dual_mov_b32 v85, v108
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v187, 16, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v145, v150, v36, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v22, v42, v188 :: v_dual_add_f32 v23, v41, v185
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v160, v11, s2
	v_cndmask_b32_e64 v131, v43, v10, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v43, v237, v161
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v42, v22, s2
	v_cndmask_b32_e64 v148, v41, v23, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[20:23], v24
	ds_load_b128 v[8:11], v24 offset:16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v33, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v34, v156, v35 :: v_dual_add_f32 v35, v149, v178
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v39, v38, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[37:40], v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v155, v255
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v156, v34, s2
	v_cndmask_b32_e64 v143, v149, v35, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v154, v208
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v237, v43, s2
	v_cndmask_b32_e64 v136, v155, v33, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[33:36], v24 offset:16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v44, v238, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v126, v154, v42, s2
	scratch_load_b64 v[180:181], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v102, 16, v53
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:188
	scratch_load_b64 v[173:174], off, off offset:168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v238, v44, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v204, v112, v232
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v44, v37, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v14, v44
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v38, v140
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v15, v15, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v15
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v153, v86 :: v_dual_add_f32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v153, v41, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v28, v28, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v15, v28, v15
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v44, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v41, v28, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v14
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v15, v39, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v12
	v_ldexp_f32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v43, v43, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v45, -v42, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v14, v43, v14
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v42, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v46, v45
	v_div_fmas_f32 v42, v42, v44, v46
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v44, v40, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v13, v44
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v44, v44, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v13, v44, v13
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v125, v45, v44, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v13, v33, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v16, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v13
	v_ldexp_f32 v15, v15, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v15, v15, v12
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v172, v75, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v28
	v_fma_f32 v46, -v28, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, vcc_lo, v12, v15, v12
	v_mul_f32_e32 v47, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v28, v47, v46
	v_fmac_f32_e32 v47, v48, v41
	v_div_fixup_f32 v124, v42, v43, v14
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v34, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v28, v47, v46
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v41, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v146, v28, v15, v12
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v36, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v14
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v41
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v18, v18, v14
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v43, v42
	v_fma_f32 v47, -v41, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v42
	v_fma_f32 v41, -v41, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v156, v41, v18, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v42
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v16, v16, v13
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v13, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v43, v19, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v44, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v12
	v_fma_f32 v19, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v19, v15
	v_div_scale_f32 v19, vcc_lo, v43, v44, v43
	v_mul_f32_e32 v28, v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v12, v28, v19
	v_fmac_f32_e32 v28, v45, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v28, v19
	v_div_fmas_f32 v45, v12, v15, v28
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v35, v140
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v42, v16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v41, v17, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v46, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v12
	v_fma_f32 v15, -v12, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v41, v46, v41
	v_mul_f32_e32 v17, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v12, v17, v15
	v_fmac_f32_e32 v17, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v17, v15
	v_div_fmas_f32 v47, v12, v14, v17
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[16:19], v24 offset:512
	ds_load_b128 v[12:15], v24 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v24, v17, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v24, v27, v24
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v27, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v49, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v24, v27, v24
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v42, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v50, v49
	v_div_fmas_f32 v48, v42, v48, v50
	v_div_fixup_f32 v42, v45, v44, v43
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v43, v16, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v150, v48, v27, v24
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v24, v18, v140 :: v_dual_mul_f32 v43, v31, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v27, v148, v24
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v24, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v43
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v44
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v44, v44, v43
	v_rcp_f32_e32 v45, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v31, v45, 1.0
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, vcc_lo, v43, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v49, v45
	v_fma_f32 v51, -v31, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v45
	v_fma_f32 v31, -v31, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v45, v31, v45, v50
	v_div_fixup_f32 v31, v47, v46, v41
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v41, v19, v140
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v161, v45, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v41, v52, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v46, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v50, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v41, v46, v41
	v_mul_f32_e32 v51, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v47, v51, v50
	v_fmac_f32_e32 v51, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v51, v50
	v_div_fmas_f32 v47, v47, v49, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v47, v46, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v48, v48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v24
	v_fma_f32 v50, -v24, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v27, v48, v27
	v_mul_f32_e32 v51, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v24, v51, v50
	v_fmac_f32_e32 v51, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v51, v50
	v_div_fmas_f32 v49, v24, v49, v51
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v24, v13, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v43, v147, v24
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v44, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v24
	v_fma_f32 v50, -v24, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v50, v45
	v_div_scale_f32 v50, vcc_lo, v43, v44, v43
	v_mul_f32_e32 v51, v50, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v24, v51, v50
	v_fmac_f32_e32 v51, v52, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v51, v50
	v_div_fmas_f32 v45, v24, v45, v51
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v24, v12, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v147, v144, v24
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v144, v49, v48, v27
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v27, v15, v140 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v27, v55, v27
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v147
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v46
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v148, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v148, v148, v147
	v_rcp_f32_e32 v46, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v24, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v147, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v47, v46
	v_fma_f32 v51, -v24, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v46
	v_fma_f32 v24, -v24, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v24, v24, v46, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v27
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v46, v46, v47
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v168, 1.0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v168, v168, v27
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v27, v168, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v46, v46, v47, v49
	v_div_fixup_f32 v46, v46, v168, v27
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v20, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v27, v32, v27
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v155, v45, v44, v43
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v43, v14, v140
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v32, v23, v140 :: v_dual_mul_f32 v43, v54, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v43
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v45
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v44, v44, v43
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v45, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v43, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v45, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v45, -v45, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v45, v45, v47, v49
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v38, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v45, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v47, v145, v47 :: v_dual_mul_f32 v44, v60, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v22, v140
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v60, v34, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v44, v44, v125 :: v_dual_mul_f32 v45, v26, v32
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v9, v140
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.h, 0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v232, v103, v235
	v_dual_mov_b32 v236, v128 :: v_dual_mov_b32 v235, v127
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v45, v146
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v45, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v48, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v47, v48, v47
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v49, v52, v51
	v_fmac_f32_e32 v52, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v52, v51
	v_div_fmas_f32 v49, v49, v50, v52
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v37, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v50, v143, v50
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v49, v48, v47
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v58, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v32, v8, v140 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v50
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v47, v47, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v57, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v11, v140
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v47, v47
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v138, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v32, v10, v140 :: v_dual_mul_f32 v49, v49, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v54, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v50, v51, v50
	v_mul_f32_e32 v55, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v52, v55, v54
	v_fmac_f32_e32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v55, v54
	v_div_fmas_f32 v52, v52, v53, v55
	v_div_fixup_f32 v53, v24, v148, v147
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v24, v21, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v185, v52, v51, v50
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v50, v137, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v5, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v24, v59, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v51, v139, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v4, v140
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v24, v24, v123 :: v_dual_mul_f32 v51, v51, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v129, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v7, v140
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v24.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v54, v134, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v6, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v55, v130, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v1, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v55, v55, v144
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v56, v135, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v0, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v133, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v32, v3, v140 :: v_dual_mul_f32 v53, v57, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v58, v132, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v2, v140
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v59, v131, v32 :: v_dual_mul_f32 v32, v21, v102
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v48, v48, v28 :: v_dual_mul_f32 v43, v59, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v140, v61, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v20, v102
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v139, v136, v32
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v32, v40, v102
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v154, v96, v32
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v32, v39, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v160, v95, v32
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v32, v76, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v76, v32, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v153, v32, v60 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v154
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v154
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v32, v32, v60
	v_mul_f32_e32 v60, 0xbfb8aa3b, v160
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v96, 1.0, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v168, null, v96, v96, v154
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v98, v168
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v60, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v168, v98, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v98, v32, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v132, null, v32, v32, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v130, v132
	v_fma_f32 v60, -v132, v130, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v60, v130
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v60, v27, v124 :: v_dual_and_b32 v27, 1, v125
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v24, v27, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[176:177], off, off offset:136
	scratch_load_b32 v24, off, off offset:176
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v149, v177, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[224:225], off, off offset:104
	scratch_load_b32 v24, off, off offset:212
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v138, v225, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v24, off, off offset:180
	scratch_load_b64 v[237:238], off, off offset:48
	v_add_f32_e32 v95, v181, v197
	v_dual_add_f32 v123, v180, v72 :: v_dual_mul_f32 v54, v54, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.h, 0x7fff, v61.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v146, v224, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[141:142], off, off offset:204
	scratch_load_b32 v24, off, off offset:184
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v136, v141, v198 :: v_dual_add_f32 v135, v142, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[197:198], off, off offset:220
	scratch_load_b32 v24, off, off offset:228
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v133, v198, v24
	scratch_load_b32 v24, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v134, v197, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[195:196], off, off offset:88
	scratch_load_b32 v24, off, off offset:236
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v129, v196, v24
	scratch_load_b32 v24, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v63, off offset:216 ; 4-byte Folded Spill
	v_dual_add_f32 v63, v163, v247 :: v_dual_mul_f32 v46, v58, v46
	scratch_store_b32 off, v63, off offset:228 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v131, v195, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[170:171], off, off offset:32
	scratch_load_b32 v24, off, off offset:252
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v145, v171, v24
	scratch_load_b32 v24, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v25, v170, v24
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[228:229], off, off offset:120
	scratch_load_b32 v24, off, off offset:244
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v229, v24
	scratch_load_b32 v24, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v208, v228, v24
	scratch_load_b32 v24, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v182, v128, v24
	scratch_load_b32 v24, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v42, v127, v24
	scratch_load_b32 v24, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v178, v118, v24
	scratch_load_b32 v24, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v179, v117, v24
	scratch_load_b32 v24, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v79, v114, v24
	scratch_load_b32 v24, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v76, v113, v24
	scratch_load_b32 v24, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v147, v110, v24
	scratch_load_b32 v24, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v137, v109, v24
	scratch_load_b32 v24, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v156, v165, v24
	scratch_load_b32 v24, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v148, v164, v24
	scratch_load_b32 v24, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v192, v254, v24
	scratch_load_b32 v24, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v159, v253, v24
	scratch_load_b32 v24, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v100, v24
	scratch_store_b32 off, v24, off offset:236 ; 4-byte Folded Spill
	scratch_load_b32 v24, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v151, v99, v24
	scratch_load_b32 v24, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v91, v24
	scratch_store_b32 off, v24, off offset:232 ; 4-byte Folded Spill
	scratch_load_b32 v24, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v255, v90, v24
	scratch_load_b32 v24, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v85, v24
	scratch_load_b32 v24, off, off offset:328 ; 4-byte Folded Reload
	scratch_store_b32 off, v27, off offset:184 ; 4-byte Folded Spill
	v_add_f32_e32 v27, v84, v231
	scratch_load_b64 v[230:231], off, off offset:40 ; 8-byte Folded Reload
	scratch_store_b32 off, v27, off offset:196 ; 4-byte Folded Spill
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v27, v81, v24
	scratch_load_b32 v24, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v50, v50, v31 :: v_dual_add_f32 v31, v173, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v191, v88
	scratch_store_b32 off, v27, off offset:176 ; 4-byte Folded Spill
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v83, v231, v214
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v44.h
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v65, off offset:128 ; 4-byte Folded Spill
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v173, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v80, v24
	scratch_load_b32 v24, off, off offset:332 ; 4-byte Folded Reload
	v_add_f32_e32 v124, v174, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v27, off offset:180 ; 4-byte Folded Spill
	v_add_f32_e32 v27, v122, v201
	scratch_store_b32 off, v27, off offset:152 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v121, v24
	scratch_load_b32 v24, off, off offset:324 ; 4-byte Folded Reload
	v_add_f32_e32 v152, v176, v73
	scratch_load_b64 v[72:73], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v65, v190, v24 :: v_dual_add_f32 v214, v73, v71
	scratch_store_b32 off, v65, off offset:112 ; 4-byte Folded Spill
	v_add_f32_e32 v65, v194, v199
	scratch_store_b32 off, v27, off offset:160 ; 4-byte Folded Spill
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v27, v250, v234 :: v_dual_add_f32 v234, v251, v233
	v_add_f32_e32 v233, v104, v217
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v65, off offset:56 ; 4-byte Folded Spill
	v_dual_add_f32 v65, v193, v200 :: v_dual_add_f32 v200, v230, v66
	scratch_load_b64 v[66:67], off, off offset:24 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v217, v158, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v125.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v52, v52, v161
	v_mul_f32_e32 v56, v56, v155
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v56, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v199, v67, v218
	v_add_f32_e32 v218, v66, v70
	scratch_load_b64 v[70:71], off, off offset:8 ; 8-byte Folded Reload
	v_add_f32_e32 v169, v238, v212
	v_add_f32_e32 v212, v72, v68
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v210, v237, v210 :: v_dual_add_f32 v205, v70, v69
	scratch_load_b64 v[68:69], off, off     ; 8-byte Folded Reload
	v_add_f32_e32 v209, v71, v220
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v201, v68, v219
	scratch_load_b64 v[219:220], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v88, v69, v78 :: v_dual_add_f32 v29, v219, v77
	scratch_load_b64 v[77:78], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v189, v78, v216 :: v_dual_add_f32 v188, v77, v215
	scratch_load_b64 v[215:216], off, off offset:72 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v186, v216, v222
	v_add_f32_e32 v222, v167, v240
	v_dual_mov_b32 v240, v93 :: v_dual_mov_b32 v239, v92
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v196, v129, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v63, v240, v64
	scratch_store_b32 off, v65, off offset:64 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v64, 1, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v63, off offset:212 ; 4-byte Folded Spill
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v125
	v_mov_b16_e32 v125.l, v47.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v161, s28, s14, v64
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v64, v10, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s14, s10
	v_add3_u32 v44, v44, v63, 0x7fff
	v_and_b32_e32 v65, 1, v125
	v_mov_b16_e32 v125.l, v49.h
	v_mov_b16_e32 v63.h, v125.h
	v_mov_b16_e32 v63.l, v48.h
	v_cndmask_b16 v246.h, 0x7fff, v44.h, s3
	v_add3_u32 v47, v47, v65, 0x7fff
	v_and_b32_e32 v57, 1, v125
	v_mov_b16_e32 v62.l, v60.h
	v_cmp_o_f32_e64 s1, v60, v60
	v_mov_b16_e32 v65.h, v125.h
	v_mov_b16_e32 v65.l, v43.h
	v_and_b32_e32 v61, 1, v63
	v_and_b32_e32 v62, 1, v62
	v_mov_b16_e32 v125.l, v51.h
	v_cndmask_b16 v247.h, 0x7fff, v47.h, s6
	v_and_b32_e32 v59, 1, v65
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v65, v11, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v60, v62, 0x7fff
	v_mov_b16_e32 v62.h, v125.h
	v_mov_b16_e32 v62.l, v45.h
	v_add3_u32 v48, v48, v61, 0x7fff
	v_mov_b16_e32 v60.l, v52.h
	v_cndmask_b16 v41.l, 0x7fff, v60.h, s1
	v_mov_b16_e32 v60.h, v125.h
	v_and_b32_e32 v62, 1, v62
	v_cndmask_b16 v247.l, 0x7fff, v48.h, s5
	v_and_b32_e32 v58, 1, v125
	v_mov_b16_e32 v125.l, v54.h
	v_and_b32_e32 v48, 1, v60
	v_add3_u32 v45, v45, v62, 0x7fff
	v_mov_b16_e32 v62.h, v125.h
	v_mov_b16_e32 v62.l, v50.h
	v_mov_b16_e32 v61.h, v125.h
	v_add3_u32 v48, v52, v48, 0x7fff
	v_cndmask_b16 v246.l, 0x7fff, v45.h, s4
	v_cmp_o_f32_e64 s4, v52, v52
	v_and_b32_e32 v45, 1, v62
	v_cmp_o_f32_e64 s1, v49, v49
	v_add3_u32 v47, v49, v57, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v140, v143
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v55.h
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v57, v139, v185
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v53.h
	v_cndmask_b16 v140.l, 0x7fff, v48.h, s4
	v_and_b32_e32 v48, 1, v125
	v_cndmask_b16 v139.l, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v51, v51, v58, 0x7fff
	v_mov_b16_e32 v125.l, v56.h
	v_cndmask_b16 v139.h, 0x7fff, v47.h, s1
	v_and_b32_e32 v47, 1, v63
	v_cmp_o_f32_e64 s6, v54, v54
	v_cndmask_b16 v140.h, 0x7fff, v51.h, vcc_lo
	v_and_b32_e32 v51, 1, v61
	v_add3_u32 v48, v54, v48, 0x7fff
	v_and_b32_e32 v54, 1, v125
	v_mov_b16_e32 v125.l, v46.h
	v_cmp_o_f32_e64 s1, v55, v55
	v_add3_u32 v47, v55, v47, 0x7fff
	v_add3_u32 v51, v53, v51, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, s3, v154, v96, v154
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v125
	v_mov_b16_e32 v125.l, v49.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, s5, v160, v32, v160
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v175.l, 0x7fff, v47.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v50, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v58, v52, v130 :: v_dual_and_b32 v47, 1, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_cmp_o_f32_e64 s4, v43, v43
	v_cmp_o_f32_e64 s9, v49, v49
	v_cndmask_b16 v175.h, 0x7fff, v48.h, s6
	v_add3_u32 v48, v56, v54, 0x7fff
	v_add3_u32 v43, v43, v59, 0x7fff
	v_add3_u32 v46, v46, v53, 0x7fff
	v_add3_u32 v47, v49, v47, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v168, v45, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.h, 0x7fff, v48.h, s7
	v_cndmask_b16 v144.l, 0x7fff, v43.h, s4
	v_cndmask_b16 v144.h, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v155.h, 0x7fff, v47.h, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v132, v58, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v75, v172, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v47, v33, v102 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v153
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v55, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v43, v130
	s_mov_b32 vcc_lo, s3
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v43, v46, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v168, v45, v50
	v_fma_f32 v47, -v132, v58, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v49, v22, v102 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v50, v98, v45
	s_mov_b32 vcc_lo, s5
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v50, v23, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v47, v47, v130, v58
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v153
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v49, v97, v49 :: v_dual_mul_f32 v50, v126, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v47, v32, v160
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v45, v96, v154
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v125.h
	v_mov_b16_e32 v44.l, v57.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v32, v49, v32 :: v_dual_mul_f32 v45, v50, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v47, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v125.l, v45.h
	v_cmp_o_f32_e64 s1, v57, v57
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v58, v35, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v57, v44, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v237, v210, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v184, v120, v211
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v46, v46, v153
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v125
	v_cndmask_b16 v155.l, 0x7fff, v44.h, s1
	v_cmp_o_f32_e64 s1, v45, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v50
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v49, v45, v49, 0x7fff
	v_cndmask_b16 v143.l, 0x7fff, v51.h, s8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v238, v169, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v52, v36, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v47, v47, v43
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v57, v57, v58
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v24, v220, v226
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v50, v44, 1.0
	v_rcp_f32_e32 v54, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v51, v51, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, s4, v43, v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, vcc_lo, v153, v46, v153
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v51
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v174, v124, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v61, v9, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v45, v54, 1.0
	v_mul_f32_e32 v60, v53, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v56
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v52, v8, v102 :: v_dual_mul_f32 v55, v55, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v54, v59, v54 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v57
	v_fma_f32 v62, -v50, v60, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_dual_add_f32 v86, v116, v242 :: v_dual_mul_f32 v31, v31, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v59
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v58, v54
	v_fmac_f32_e32 v60, v62, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v59, 0, 0x42800000, s5
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v26, v215, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v45, v63, v58
	v_fma_f32 v50, -v50, v60, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v56, v56
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v32.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v61, v54
	v_div_fmas_f32 v44, v50, v44, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s5
	v_exp_f32_e32 v53, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v45, -v45, v63, v58
	v_div_fixup_f32 v44, v44, v46, v153
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v56, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v125.h
	v_mov_b32_e32 v238, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v45, v54, v63
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v54, v17, v102
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v53, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v45, v47, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v206, v157, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v52, v52, v51
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v43
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v231, v83, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v32, v48, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v45, v45, v57
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v55, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v53, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v226, v203, v245 :: v_dual_mul_f32 v59, v16, v102
	v_mov_b32_e32 v237, v117
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v117.l, 0x7fff, v48.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v50, v46, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v230, v200, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v117.h, 0x7fff, v49.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, s1, v57, v45, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, vcc_lo, v51, v52, v51
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v58, v58, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v55, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v55, 0xbfb8aa3b, v53 :: v_dual_mul_f32 v56, v48, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v180, v123, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v63, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v62, v60, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v55
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v50, v56, v48
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v181, v95, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v63
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v54, v54, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v248, v239, v248
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v61, v46
	v_fma_f32 v61, -v43, v62, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s4
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v53
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v44.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v50, v56, v48
	v_fmac_f32_e32 v62, v61, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s3
	v_exp_f32_e32 v55, v55
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v48, v46, v56
	v_fma_f32 v43, -v43, v62, v60
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v31.h
	v_mov_b16_e32 v32.h, v125.h
	v_and_b32_e32 v49, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v43, v43, v47, v62
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v59, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v48, v55, v50
	v_exp_f32_e32 v50, v63
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v43, v45, v57
	v_div_fixup_f32 v45, v46, v52, v51
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v51.h, v125.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v54, v43
	v_mul_f32_e32 v45, v47, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v244, s15, v223
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v50, v55
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v48, v48, v53
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v245, v202, v241 :: v_dual_add_f32 v46, 1.0, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v31, v32, 0x7fff
	v_add3_u32 v49, v44, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v46, v46, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v31, v31
	v_and_b32_e32 v44, 1, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v67, v199, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v52
	v_fma_f32 v51, -v50, v47, 1.0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v55, v19, v102
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[241:242], null, s15, 48, v[244:245]
	v_mov_b32_e32 v154, v114
	v_dual_mov_b32 v153, v113 :: v_dual_add_nc_u32 v242, 0x80, v161
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v113.h, 0x7fff, v49.h, vcc_lo
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v49, vcc_lo, v53, v48, v53
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v54, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v52, v31, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v113.l, 0x7fff, v32.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v49, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v66, v218, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v54
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v51, v31
	v_div_scale_f32 v51, s1, v58, v46, v58
	v_fma_f32 v59, -v50, v56, v49
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v63, v18, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v51, v31
	v_mov_b32_e32 v124, v91
	v_fmac_f32_e32 v56, v59, v47
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v62, v62, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v52, v60, v51
	v_mov_b32_e32 v123, v90
	v_fma_f32 v49, -v50, v56, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v54 :: v_dual_fmac_f32 v60, v59, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v45.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v47, v49, v47, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v50
	v_exp_f32_e32 v49, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v52, v60, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v177, v149, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v51, v31, v60
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v51, v5, v102 :: v_dual_and_b32 v32, 1, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v62
	v_ldexp_f32 v49, v49, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v31, v46, v58
	v_div_fixup_f32 v47, v47, v48, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	v_exp_f32_e32 v46, v50
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_mul_f32 v50, v57, v51
	v_mov_b32_e32 v169, v120
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v45, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v49, v49, v54
	v_mov_b32_e32 v66, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v51
	v_mov_b32_e32 v67, v110
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v109.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v46 :: v_dual_mul_f32 v45, v50, v47
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v53, v13, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v176, v152, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v109.l, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v32, v32, v62
	v_fma_f32 v44, -v51, v48, 1.0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v63, v4, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v72, v212, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v50, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v195, v131, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v44, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v73, v214, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v60, v12, v102
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v55, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, vcc_lo, v54, v49, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v44, v44, v53 :: v_dual_mul_f32 v59, v59, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v46, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v58, v55, v48 :: v_dual_mul_f32 v31, v52, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v61, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v53, v50
	v_div_scale_f32 v53, s1, v62, v32, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v51, v58, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v53, v50
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v225, v138, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v61, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v46, v63, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v65, v7, v102 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v51, v58, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v59 :: v_dual_fmac_f32 v63, v61, v50
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v48, v51, v48, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v46, v63, v53
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, v31.h
	v_mov_b16_e32 v47.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v48, v48, v49, v54
	v_div_fmas_f32 v46, v46, v50, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s4
	v_ldexp_f32 v53, v60, v55
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v55, v56, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v45.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v46, v32, v62
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v51, v50
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v48, v55, v48 :: v_dual_and_b32 v43, 1, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_and_b32 v47, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v53, v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v31, v43, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v224, v146, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v6, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v50
	v_div_scale_f32 v51, null, v46, v46, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v31, v31
	v_mov_b16_e32 v125.l, v48.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v52, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v45, v47, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v96.l, 0x7fff, v43.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v32, v52, v32 :: v_dual_and_b32 v43, 1, v125
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v50, v49, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v48, v48
	v_cndmask_b16 v96.h, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v43, v48, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v44, v53, v44
	v_fmac_f32_e32 v49, v52, v49
	v_fma_f32 v52, -v51, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v128.h, 0x7fff, v43.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v71, v209, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v54, v15, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v47, v49
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s3, v59, v46, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v43, v43, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v50, v48, v47
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v60, v14, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v56, v52, v45 :: v_dual_mov_b32 v57, v141
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v61, 0xbfb8aa3b, v43 :: v_dual_fmac_f32 v48, v55, v49
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v70, v205, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v51, v56, v52
	v_mov_b32_e32 v58, v142
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v50, v48, v47
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v50, v55, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v54, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v32.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v47, v47, v49, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v51, v56, v52
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v125.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v135, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v48, v45, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_exp_f32_e32 v48, v54
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v51, v1, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v45, v46, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s1
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v51, v58, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v47, v53, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v32, v31, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v50
	v_ldexp_f32 v46, v48, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v136, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v62, v0, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v49
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v51, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v57, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v128.l, 0x7fff, v31.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v46, v46, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v52, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v49
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v69, v88, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v65, v9, v187 :: v_dual_and_b32 v48, 1, v125
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v52, v38, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v48, v32, v48, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v68, v201, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v47, v47, v50
	v_fma_f32 v54, -v49, v31, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v98, v51, v52
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v58, v37, v187
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v198, v133, s2
	v_mov_b32_e32 v133, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v55, v32
	v_dual_fmac_f32 v31, v54, v31 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v98
	v_dual_mov_b32 v132, v99 :: v_dual_mul_f32 v99, v57, v58
	v_div_scale_f32 v52, vcc_lo, v43, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, s4, v50, v47, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v99
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v32, v55, 1.0
	v_mul_f32_e32 v60, v52, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v197, v134, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v58
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v55, v59, v55
	v_fma_f32 v61, -v49, v60, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v98
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v51, v2, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v59, v3, v102 :: v_dual_mul_f32 v62, v57, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v54
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v61, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v56, v56, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v32, v62, v57
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s3
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v51, v53, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v49, v60, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v59, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v54, v61
	v_mov_b32_e32 v68, v103
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v49, v31, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v62, v57
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v102, 1.0, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v31, v46, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v53, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v45.h
	v_mov_b16_e32 v44.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v55, v62
	v_div_scale_f32 v108, null, v102, v102, v98
	v_mov_b32_e32 v69, v104
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v103, 1.0, v43 :: v_dual_mov_b32 v70, v111
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v47, v50
	v_rcp_f32_e32 v110, v108
	v_mov_b32_e32 v71, v112
	v_div_scale_f32 v111, null, v103, v103, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v45, v44, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v101, v51, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v112, v111
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v100, v56, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v125.h
	v_mov_b16_e32 v31.l, v101.h
	v_cndmask_b16 v97.l, 0x7fff, v44.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v108, v110, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v220, v24, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v44, v40, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v114, vcc_lo, v98, v102, v98
	v_fmac_f32_e32 v110, v32, v110
	v_fma_f32 v32, -v111, v112, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v94, v43, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v104, v101, v31, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v43, v39, v187
	v_mov_b32_e32 v135, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v112, v32, v112 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v219, v29, s2
	v_mov_b32_e32 v134, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v97.h, 0x7fff, v48.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v116, s1, v99, v103, v99
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v31
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v93, v32, v43 :: v_dual_mov_b32 v168, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v115, v114, v110 :: v_dual_mul_f32 v118, v116, v112
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v119, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v24, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v45, v21, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v120, -v108, v115, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v111, v118, v116
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v249, v89, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v115, v120, v110
	v_fmac_f32_e32 v118, v32, v112
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v119
	v_cndmask_b32_e64 v44, 0, 0x42800000, s4
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v108, v115, v114
	v_fma_f32 v47, -v111, v118, v116
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v92, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v100.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v46, v110, v115
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v43, v32
	v_exp_f32_e32 v43, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v47, v112, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v46, v46, v102, v98
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_mul_f32 v31, v20, v187
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v107, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v44, v103, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v45, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v47
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v32, v32, v94
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v31, v91, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v78, v189, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v54, v34, v187 :: v_dual_mul_f32 v31, v31, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v100, v107, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v43, v43, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v53, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v101, v101
	v_cndmask_b16 v91.h, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v47, v46, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v53
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.l, 0x7fff, v104.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v77, v188, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v61, v33, v187 :: v_dual_fmac_f32 v46, v51, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, vcc_lo, v94, v32, v94
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v60, v60, v61 :: v_dual_mul_f32 v55, v51, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v45.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s1, v93, v43, v93
	v_fma_f32 v57, -v47, v55, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v53
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v170, v25, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v58, v52, v50 :: v_dual_mul_f32 v61, v22, v187
	v_dual_fmac_f32 v55, v57, v46 :: v_dual_and_b32 v44, 1, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v31.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v49, v58, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v47, v55, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v45, v44, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v57, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v47, v46, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v59
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v49, v58, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v46, v32, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v49, v49, v50, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v52
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v60
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v49, v43, v93
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v52, v54, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v171, v145, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v51
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v50, v23, v187
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v52, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v87.h, 0x7fff, v44.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v47, v47, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v31, v48, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v50, v56, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v54, v36, v187
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v49, v46
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v51
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v43.h
	v_mov_b16_e32 v46.h, v125.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v50, v32
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v215, v26, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v61, v35, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v46
	v_cndmask_b16 v87.l, 0x7fff, v48.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v44, v44, v60
	v_fma_f32 v46, -v51, v49, 1.0
	v_div_scale_f32 v55, vcc_lo, v53, v47, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v59, v59, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v46, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v216, v186, s2
	v_cndmask_b32_e64 v56, v229, v28, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v32.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v59
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v55, v49
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v46, v46, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v43, v31, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v45, v50, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v64
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v228, v208, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s1, v60, v44, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v51, v58, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v54, v50
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v8, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v62, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v45, v63, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v52, v52, v57 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v51, v58, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v62, v50
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v169, v184, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v61, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v49, v51, v49, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v45, v63, v54
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v43, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v47, v49, v47, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v236, v182, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v45, v50, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s4
	v_ldexp_f32 v54, v61, v55
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v55, v56, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v83.l, 0x7fff, v31.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v45, v44, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_mul_f32 v47, v55, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v44, v52, v44 :: v_dual_add_f32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v54, v54, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v45, v45, v59
	v_rcp_f32_e32 v49, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v125
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v61, v7, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v32, v48, 0x7fff
	v_mov_b16_e32 v32.l, v44.h
	v_add3_u32 v31, v47, v31, 0x7fff
	v_mov_b16_e32 v32.h, v125.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v250, v27, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v83.h, 0x7fff, v48.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v50, v49, 1.0
	v_div_scale_f32 v48, vcc_lo, v46, v54, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.h, 0x7fff, v31.h, s1
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v31, v17, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v52, v49
	v_fma_f32 v52, -v51, v43, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v235, v42, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v26, v26, v31 :: v_dual_mul_f32 v47, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, s3, v59, v45, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v50, v47, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v44, v32, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v55, v52, v43
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v60, v10, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v58
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v53, v49
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v53, v16, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v51, v55, v52
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v37, v37, v207
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v58, v5, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v50, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v50, v56, v60 :: v_dual_fmac_f32 v55, v31, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v164, v148, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v47, v48, v49, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v51, v55, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v26
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v21, v21, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v46, v47, v54, v46
	v_mov_b32_e32 v93, v81
	v_div_fmas_f32 v43, v48, v43, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v55, v18, v187
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v9, v9, v207
	v_mul_f32_e32 v20, v20, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v43, v45, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v44, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v29, v29, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v165, v156, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v50, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.l, 0x7fff, v32.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v237, v179, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v34, v34, v207
	v_mul_f32_e32 v16, v16, v207
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v168, v183, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v223, s15, 4, v244
	v_lshl_add_u32 v211, s15, 5, v244
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s15, s11
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v33, v33, v207
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v25, v53
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v238, v178, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v23, v207
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v207
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v5, v5, v207
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v25
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v53, v53, v58 :: v_dual_mul_f32 v8, v8, v207
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v7, v7, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v49, v11, v187
	v_mul_f32_e32 v11, v11, v207
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v57, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v25
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v44, v49, v46 :: v_dual_mul_f32 v49, v19, v187
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v43.h
	v_mov_b16_e32 v46.h, v125.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v44.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v31, v31, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v44, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v30, v30, v49 :: v_dual_mul_f32 v49, v4, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v48
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v19, v19, v207 :: v_dual_and_b32 v46, 1, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, 0xbfb8aa3b, v30 :: v_dual_and_b32 v47, 1, v125
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v50, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v43, v46, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v44, v47, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v48, v32, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v4, v4, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v45, v45, v25
	v_fmac_f32_e32 v32, v51, v32
	v_div_scale_f32 v51, vcc_lo, v26, v31, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v52, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, s4, v25, v45, v25
	v_mul_f32_e32 v57, v51, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.h, 0x7fff, v47.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v48, v57, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v44, v52, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v59, v32
	v_fmac_f32_e32 v52, v56, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v48, v57, v51
	v_mul_f32_e32 v60, v55, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v50, v54, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v70, v74, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v48, v32, v57
	v_fma_f32 v58, -v44, v60, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s5
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v32, v31, v26
	v_fmac_f32_e32 v60, v58, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v32, null, v50, v50, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v44, v60, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v56
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v53, v26 :: v_dual_mul_f32 v55, v12, v187
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v12, v207
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v44, v52, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v60, v6, v187
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v54, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v26.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v44, v45, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v51, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.l, 0x7fff, v46.h, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v51, v13, v187
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v49, v25
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v71, v204, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v154, v79, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v25.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v31, v31, v29
	v_fma_f32 v46, -v32, v44, 1.0
	v_div_scale_f32 v56, s1, v29, v31, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v49, v49, v51 :: v_dual_fmac_f32 v44, v46, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, vcc_lo, v30, v50, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v153, v76, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.h, v125.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v46, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v135, v86, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v45, v47, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v51, v51, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v254, v192, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v32, v53, v46
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v47, v52, v47 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v21, v60, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v57, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v58, v56, v47
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v53, v46
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v6, v6, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v45, v58, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s3
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v44, v53
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v58, v57, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v25, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v32, v50, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v252, v82, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v45, v58, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v67, v147, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v13, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v44, v44, v47, v58
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v55, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v253, v159, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cndmask_b16 v71.l, 0x7fff, v43.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v44, v31, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v52, v46
	v_exp_f32_e32 v46, v59
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v20, v61, v20 :: v_dual_mul_f32 v29, v51, v29
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v51, v15, v187
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_mul_f32 v30, v47, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v125.h
	v_mov_b16_e32 v47.l, v29.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v50, v50, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v46, v52
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v45, v45, v49
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v251, v234, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v50
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v32
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v14, v187
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v66, v137, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v57
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v14, v207
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v10, v10, v207
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v58, v58, v59
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v59, v0, v187
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s3
	v_mov_b32_e32 v92, v80
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v80, v40, v207
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v125
	v_mov_b16_e32 v125.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v132, v151, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v0, v0, v207
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v26, v48, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v31, v31, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v32, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.h, 0x7fff, v44.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v48
	v_div_scale_f32 v44, vcc_lo, v49, v45, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v46, v47, v46 :: v_dual_and_b32 v43, 1, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v29, v26, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v44, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v30, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v32, v52, v44
	v_fmac_f32_e32 v25, v47, v25
	v_div_scale_f32 v47, s1, v54, v31, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v52, v55, v46
	v_mul_f32_e32 v56, v47, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v32, v52, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v48, v56, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v46, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	v_exp_f32_e32 v46, v57
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v55, v25
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v32, v45, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s4
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v56, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v68, v232, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v49, v2, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v47, v25, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v48
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v47, v1, v187
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v51, v59
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v25, v31, v54
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v44
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v53, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.h, 0x7fff, v43.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v48, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v46, v46, v50
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v44, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v25.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v125.h
	v_cndmask_b16 v67.l, 0x7fff, v26.h, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v63, v52, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v31
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v31, v38, v207
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, vcc_lo, v50, v46, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v32, null, v43, v43, v58
	v_fma_f32 v26, -v47, v44, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v63
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v55, v3, v187
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v30.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v26, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v69, v233, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v54
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v24, v24, v55 :: v_dual_mul_f32 v27, v27, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v38, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v31, v26, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v32, v48, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v47, v51, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v31
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v26, v48
	v_div_scale_f32 v26, s1, v58, v43, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v52, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v26, v48
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v2, v207
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v47, v51, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v32, v53, v26
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v1, v1, v207
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v44, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v52, v48
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v25, v25
	v_mov_b16_e32 v25.h, v125.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v32, v53, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v202, v245, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v18, v18, v207
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v3, v3, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v26, v48, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v37, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v123, v255, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v26, v43, v58
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v44, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v65, 1.0, v37 :: v_dual_mul_f32 v8, v53, v8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v27, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v65, v65, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v68, v68, v63
	v_rcp_f32_e32 v72, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v64, v25, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v79, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v26, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v74, v76, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v26, v76
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v44, v133, v44, s2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v23, v44, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v38, v46, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v30, v45, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v39, v207
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v167, v222, s2
	v_cndmask_b32_e64 v45, v166, v221, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v24, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v38.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, vcc_lo, v31, v65, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v29.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v125.l, v69.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v134, v227, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v78, v77, v72
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v34, v39, v34 :: v_dual_mul_f32 v39, v22, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v125
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v29, v29, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v70, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0x42800000, s3
	v_mul_f32_e32 v22, 0xbfb8aa3b, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v73, v69, v27, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, s1, v63, v68, v63
	v_fmac_f32_e32 v78, v26, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v39, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v28, v27, v76
	v_fma_f32 v32, -v70, v78, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v74, v28, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v72, v78
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v28, v26, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v29
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v45, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v74, v28, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v26
	v_mul_f32_e32 v45, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v76, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v32, v65, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v27, v68, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v21, v21, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v28, v30, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v125.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v27, v20, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v73.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v30, v30, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v26, v26, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v66.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v27, v28, 0x7fff
	v_mov_b16_e32 v125.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v26, v26, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v32, v37, 1.0
	v_div_scale_f32 v33, s3, v29, v26, v29
	v_rcp_f32_e32 v43, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v25, v30, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v21, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v47, v42, v37
	v_fma_f32 v46, -v28, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v46, v43
	v_fma_f32 v46, -v32, v47, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v33, v43
	v_fmac_f32_e32 v47, v46, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v27, v27
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v27, v36, v207
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v28, v49, v33
	v_fma_f32 v32, -v32, v47, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v48, v46
	v_exp_f32_e32 v42, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v36, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v44, v43
	v_div_fmas_f32 v32, v32, v37, v47
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v28, v49, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v32, v30, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v42, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v157, v206, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v33, v43, v49
	v_div_scale_f32 v60, null, v28, v28, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v33, v26, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v59, v60
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, null, v32, v32, v22
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v39, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v125.h
	v_cndmask_b16 v21.h, 0x7fff, v31.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v57, v58
	v_div_scale_f32 v61, vcc_lo, v34, v28, v34
	v_fma_f32 v26, -v60, v59, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v37.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v33, v35, v207
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v38.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v22, v32, v22
	v_fmac_f32_e32 v59, v26, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v26, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v58, v57, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v30, v51, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v61, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v23.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v16, v40, v16 :: v_dual_fmac_f32 v57, v25, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v60, v52, v61
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v55, 1, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v25, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v60, v52, v61
	v_div_fmas_f32 v33, v35, v59, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v37, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v54, v124, v26, s2
	v_cndmask_b32_e64 v26, v203, v226, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v27, v26, v27 :: v_dual_mul_f32 v26, v31, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v58, v26, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v25, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s4
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v58, v26, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v31, v57, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v37, v56, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v26, v32, v22
	v_div_fixup_f32 v26, v33, v28, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v22, v8, v22 :: v_dual_mul_f32 v9, v54, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v25, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v29, v29, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v9, v9, v26 :: v_dual_add_f32 v28, 1.0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v22.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v125.h
	v_add3_u32 v26, v23, v55, 0x7fff
	v_mov_b16_e32 v125.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v28, v28, v30
	v_div_scale_f32 v25, null, v29, v29, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v8
	v_cndmask_b16 v8.l, 0x7fff, v31.h, s1
	v_and_b32_e32 v23, 1, v125
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v25
	v_rcp_f32_e32 v35, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v22, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v158, v217, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.h, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v23, v9, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v9, vcc_lo, v27, v29, v27
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v22, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v25, v32, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v22, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v32, v26, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v33, v35, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v34, v9, v32 :: v_dual_fmac_f32 v35, v26, v35
	v_div_scale_f32 v26, s4, v30, v28, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v25, v34, v9
	v_dual_mul_f32 v38, v26, v35 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v37, v32
	v_fma_f32 v37, -v33, v38, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v25, v34, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v25, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v38, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v9, v32, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v33, v38, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v29, v27
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v26, v26, v35, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_ldexp_f32 v32, v32, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v33, off, off offset:176 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v36, v85, v36, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v16
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v36, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v36, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v31.h, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v31, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v23.h, s1
	v_mov_b16_e32 v125.l, v11.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v22, v84, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v22, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v26, v28, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, v125.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v26, v26, v17
	v_div_scale_f32 v34, vcc_lo, v17, v26, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v10.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_and_b32 v23, 1, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v22, v22, v16
	v_fma_f32 v30, -v27, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v11, v28, 0x7fff
	v_add3_u32 v23, v10, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v106, v213, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v34, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v30, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v33, v93, v33, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v29, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v19
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v5, v33, v5 :: v_dual_fmac_f32 v32, v30, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v36, v105, v36, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s1, v16, v22, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v27, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v36, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v30, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v37, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v29, v38, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v27, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v33, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	v_exp_f32_e32 v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v27, v25, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v29, v38, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v25, v26, v17
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_ldexp_f32 v30, v36, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v33, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v31, v92, v31, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v37
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v5, v17 :: v_dual_add_f32 v30, 1.0, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v31, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v125.h
	v_mov_b16_e32 v125.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v30, v30, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v122, v33, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v33, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v27, v22, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.h, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v27.l, 0x7fff, v23.h, s1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v22 :: v_dual_and_b32 v22, 1, v125
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:228
	scratch_load_b32 v33, off, off offset:112
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v22, v5, v22, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, s1, v19, v30, v19
	v_fma_f32 v28, -v25, v16, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v17, null, v11, v11, v18
	v_fmac_f32_e32 v16, v28, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v4, v10, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v28, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v17
	v_mul_f32_e32 v4, v5, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s3
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v10, v15, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v25, v4, v5
	v_fma_f32 v23, -v17, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v4, v31, v16
	v_fmac_f32_e32 v26, v23, v26
	v_div_scale_f32 v23, s4, v18, v11, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v25, v4, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v162, v243, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v32, v23, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v5, v16, v4
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v25, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v4, v30, v19
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v7, v4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:212
	scratch_load_b32 v37, off, off offset:128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v4.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v29, v163, v29, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v29, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v17, v32, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v32, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v17, v32, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v28, v121, v28, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v26, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v28, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v11, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v125.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v4, v28, 0x7fff
	v_mov_b16_e32 v18.l, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v16
	v_ldexp_f32 v6, v17, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v239, v248, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v11, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v5, v18, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v7, v240, v7, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v6, v6, v13
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v37, v191, v37, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v1, v37, v1 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v15, v10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v10, v10, v12
	v_fma_f32 v23, -v14, v15, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v23, v15
	v_div_scale_f32 v23, vcc_lo, v13, v6, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v12, v10, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v23, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v14, v29, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v19, v25, 1.0
	v_div_scale_f32 v30, null, v17, v17, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v34, v15
	v_dual_fmac_f32 v25, v26, v25 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v30
	v_fma_f32 v14, -v14, v29, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v31, v25
	v_div_scale_f32 v26, null, v16, v16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v15, v29
	v_fma_f32 v34, -v19, v36, v31
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v32, v26
	v_fma_f32 v23, -v30, v35, 1.0
	v_div_fixup_f32 v6, v14, v6, v13
	v_fmac_f32_e32 v36, v34, v25
	v_div_scale_f32 v34, s3, v7, v16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v23, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v19, v36, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v6, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v26, v32, 1.0
	v_div_scale_f32 v23, s4, v11, v17, v11
	v_div_fmas_f32 v15, v15, v25, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v190, v33, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v32, v38, v32 :: v_dual_mul_f32 v29, v23, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v15, v10, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v12, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v19, v34, v32
	v_fma_f32 v13, -v30, v29, v23
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v0, v33, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v26, v19, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v29, v13, v35 :: v_dual_mul_f32 v0, v0, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v125.h
	v_cndmask_b32_e64 v31, v20, v67, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v19, v25, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v14, -v30, v29, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	v_cndmask_b32_e64 v23, v128, v91, s0
	v_cndmask_b32_e64 v30, v24, v71, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v26, v19, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v26, v87, v62, s0
	v_cndmask_b32_e64 v24, v71, v24, s0
	v_cndmask_b32_e64 v20, v67, v20, s0
	v_cndmask_b32_e64 v33, v27, v8, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v32, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v32, v9, v21, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v14, v35, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v13, v16, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 1, v125
	v_cndmask_b32_e64 v9, v21, v9, s0
	v_mov_b32_e32 v21, 0x5410
	v_cndmask_b32_e64 v16, v117, v109, s0
	v_cndmask_b32_e64 v29, v83, v75, s0
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b32_e64 v8, v8, v27, s0
	v_cndmask_b32_e64 v13, v113, v155, s0
	v_cndmask_b32_e64 v15, v109, v117, s0
	v_cndmask_b32_e64 v25, v62, v87, s0
	v_cndmask_b32_e64 v19, v91, v128, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v6, v193, v6, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v6, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v14, v17, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v14, v155, v113, s0
	v_cndmask_b32_e64 v11, v144, v175, s0
	v_cndmask_b32_e64 v17, v97, v96, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, v194, v12, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v10
	v_cndmask_b16 v10.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v12, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v0, v0
	v_add3_u32 v5, v0, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.l, 0x7fff, v18.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v2.h
	v_mov_b16_e32 v7.h, v125.h
	v_cndmask_b32_e64 v12, v175, v144, s0
	v_cndmask_b32_e64 v18, v96, v97, s0
	v_mov_b16_e32 v125.l, v3.h
	v_cmp_o_f32_e64 s3, v3, v3
	v_and_b32_e32 v6, 1, v7
	v_cndmask_b32_e64 v28, v75, v83, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v125
	v_add3_u32 v0, v2, v6, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v3, v7, 0x7fff
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s4
	v_cndmask_b32_e64 v0, v41, v247, s0
	v_cndmask_b32_e64 v34, v2, v22, s0
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	v_cndmask_b32_e64 v2, v22, v2, s0
	v_mov_b32_e32 v22, 0x7632
	v_cndmask_b32_e64 v5, v246, v139, s0
	v_cndmask_b32_e64 v7, v140, v143, s0
	v_cndmask_b32_e64 v35, v1, v10, s0
	v_cndmask_b32_e64 v1, v10, v1, s0
	v_permlanex16_b32 v10, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v21, s0
	v_cndmask_b32_e64 v21, 0x3276, v22, s0
	v_cndmask_b32_e64 v3, v247, v41, s0
	v_cndmask_b32_e64 v4, v139, v246, s0
	v_cndmask_b32_e64 v6, v143, v140, s0
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v21, v21, 8, v21
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v21, 0x760076, v21
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v21, v21, 4, v21
	v_permlanex16_b32 v22, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v0
	v_and_b32_e32 v37, 0x7060706, v21
	v_permlanex16_b32 v27, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v10, v3, v36
	v_perm_b32 v1, v10, v3, v37
	v_perm_b32 v2, v5, v4, v36
	v_perm_b32 v3, v5, v4, v37
	v_perm_b32 v4, v7, v6, v36
	v_perm_b32 v5, v7, v6, v37
	v_perm_b32 v6, v12, v11, v36
	v_perm_b32 v7, v12, v11, v37
	v_perm_b32 v8, v14, v13, v36
	v_perm_b32 v9, v14, v13, v37
	v_perm_b32 v10, v16, v15, v36
	v_perm_b32 v11, v16, v15, v37
	v_perm_b32 v12, v18, v17, v36
	v_perm_b32 v13, v18, v17, v37
	v_perm_b32 v16, v23, v25, v36
	v_perm_b32 v17, v23, v25, v37
	v_perm_b32 v20, v24, v30, v36
	v_perm_b32 v21, v24, v30, v37
	v_perm_b32 v24, v29, v32, v36
	v_perm_b32 v25, v29, v32, v37
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v161, v244, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v22, v19, v36
	v_perm_b32 v15, v22, v19, v37
	v_perm_b32 v18, v26, v28, v36
	v_perm_b32 v19, v26, v28, v37
	v_perm_b32 v22, v27, v31, v36
	v_perm_b32 v23, v27, v31, v37
	v_perm_b32 v26, v38, v33, v36
	v_perm_b32 v27, v38, v33, v37
	v_add_lshl_u32 v33, v161, v223, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v242, v223, 1
	v_add_lshl_u32 v1, v161, v211, 1
	v_add_lshl_u32 v2, v242, v211, 1
	v_add_lshl_u32 v3, v161, v241, 1
	v_perm_b32 v28, v39, v34, v36
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v30, v40, v35, v36
	v_perm_b32 v31, v40, v35, v37
	v_add_lshl_u32 v4, v242, v241, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 340
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 340
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27856
; TotalNumSgprs: 43
; NumVgprs: 256
; ScratchSize: 340
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 340
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 160
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
