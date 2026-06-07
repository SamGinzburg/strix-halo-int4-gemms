	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v25, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v11, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v31, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v27, 32, v25
	s_mov_b32 s23, 0
	v_lshlrev_b32_e32 v26, 2, v11
	s_load_b32 s21, s[0:1], 0x38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v24, 0, v31
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s16, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s16, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s12, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s14, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s21, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s17, v25
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[10:11]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_u32_f32 s15, s14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v28, v9, 4, v2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_mov_b32 s14, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 13 is_stmt 1              ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v29, s17, 5, v28
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s15, s18
	s_xor_b32 s18, s2, s7
	s_add_i32 s4, s15, s4
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s4, s5, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s15, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s19, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s25, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s18
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s25, v26
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s25, v25
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s16, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s25, v27
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s5, s3, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s24, s21, 0x1ff
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s20, s5, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s17, s25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s24, 0x1ff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s21, v3
	v_cmp_gt_i32_e64 s3, s21, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s20, s21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s22, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s16, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v30, v1, v26, s5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s4, v28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s22
	s_and_b32 vcc_lo, vcc_lo, s22
	s_and_b32 s2, s2, s22
	s_cmpk_gt_i32 s24, 0x3ff
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s25, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s25, 0x200
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s4, v29
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s25, v26
	v_or_b32_e32 v10, s25, v25
	v_or_b32_e32 v16, s25, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v7, 0x80000000, v3, vcc_lo
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_lshl_b32 s3, s17, 9
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v17, s25, v30
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s21, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v1, s[12:15], 0 offen
	buffer_load_b128 v[12:15], v2, s[12:15], 0 offen
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s4, v28
	v_add_nc_u32_e32 v2, s4, v29
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s21, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v10, 2, v0
	v_cndmask_b32_e32 v8, 0x80000000, v17, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v7, v7, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_cmpk_gt_i32 s24, 0x5ff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v8, v8, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_load_b128 v[20:23], v2, s[12:15], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	v_xor_b32_e32 v32, v10, v2
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v33, 0, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v24, v[12:15] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v33, v7 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v24, v[3:6]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v33, v8 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v24, v[16:19] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[20:23] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v11, 6, v3
	v_xor_b32_e32 v22, 16, v21
	v_xor_b32_e32 v23, 32, v21
	v_xor_b32_e32 v24, 48, v21
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr24
.LBB0_3:                                ; %Flow55
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[18:19], s[0:1], 0x20
	v_and_b32_e32 v20, 0x70, v1
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v1, 48, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s26, s24, 9
	s_addk_i32 s25, 0x200
	s_add_i32 s24, 0, 0x4000
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v21, v11, 6, v1
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v13, 0
	s_add_i32 s3, 0, 0x4400
	v_xor_b32_e32 v22, 16, v21
	v_xor_b32_e32 v23, 32, v21
	v_xor_b32_e32 v24, 48, v21
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s26, s26, -3
	s_mov_b32 s27, 1
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_mov_b32 s28, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s28, 9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s25, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v33, s0, v26
	v_or_b32_e32 v34, s0, v25
	v_or_b32_e32 v35, s0, v27
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s29, s0, s17
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v36, s0, v30
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v33
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s29, s29, s16
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s21, v34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v37, s29, v28
	v_add_nc_u32_e32 v38, s29, v29
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v33, 0x80000000, v36, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v34, 0x80000000, v37, s0
	s_mov_b32 s0, s24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v81, v33, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[41:44], v34, s[12:15], 0 offen
	buffer_load_b128 v[45:48], v35, s[12:15], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v33, s0, v21
	v_add_nc_u32_e32 v34, s0, v22
	s_mov_b32 s24, s3
	s_mov_b32 s3, s23
	v_add_nc_u32_e32 v35, s0, v23
	v_add_nc_u32_e32 v36, s0, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v37, s3, v20, v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[49:52], v33
	ds_load_b128 v[53:56], v34
	ds_load_b128 v[57:60], v35
	ds_load_b128 v[61:64], v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v37 offset:1664
	ds_load_u8 v34, v37 offset:1920
	ds_load_u8 v35, v37 offset:1792
	ds_load_u8 v36, v37 offset:1536
	ds_load_u8 v38, v37 offset:1152
	ds_load_u8 v39, v37 offset:1408
	ds_load_u8 v40, v37 offset:1280
	ds_load_u8 v65, v37 offset:1024
	ds_load_u8 v66, v37 offset:640
	ds_load_u8 v67, v37 offset:896
	ds_load_u8 v68, v37 offset:768
	ds_load_u8 v69, v37 offset:512
	ds_load_u8 v70, v37 offset:128
	ds_load_u8 v71, v37 offset:384
	ds_load_u8 v72, v37 offset:256
	ds_load_u8 v73, v37
	ds_load_u8 v74, v37 offset:3712
	ds_load_u8 v75, v37 offset:3968
	ds_load_u8 v76, v37 offset:3840
	ds_load_u8 v77, v37 offset:3584
	ds_load_u8 v78, v37 offset:3200
	ds_load_u8 v79, v37 offset:3456
	ds_load_u8 v80, v37 offset:3328
	ds_load_u8 v82, v37 offset:3072
	ds_load_u8 v83, v37 offset:2688
	ds_load_u8 v84, v37 offset:2944
	ds_load_u8 v85, v37 offset:2816
	ds_load_u8 v86, v37 offset:2560
	ds_load_u8 v87, v37 offset:2176
	ds_load_u8 v88, v37 offset:2432
	ds_load_u8 v89, v37 offset:2304
	ds_load_u8 v90, v37 offset:2048
	ds_load_u8 v91, v37 offset:5760
	ds_load_u8 v92, v37 offset:6016
	ds_load_u8 v93, v37 offset:5888
	ds_load_u8 v94, v37 offset:5632
	ds_load_u8 v95, v37 offset:5248
	ds_load_u8 v96, v37 offset:5504
	ds_load_u8 v97, v37 offset:5376
	ds_load_u8 v98, v37 offset:5120
	ds_load_u8 v99, v37 offset:4736
	ds_load_u8 v100, v37 offset:4992
	ds_load_u8 v101, v37 offset:4864
	ds_load_u8 v102, v37 offset:4608
	ds_load_u8 v103, v37 offset:4224
	ds_load_u8 v104, v37 offset:4480
	ds_load_u8 v105, v37 offset:4352
	ds_load_u8 v106, v37 offset:4096
	ds_load_u8 v107, v37 offset:7808
	ds_load_u8 v108, v37 offset:8064
	ds_load_u8 v109, v37 offset:7936
	ds_load_u8 v110, v37 offset:7680
	ds_load_u8 v111, v37 offset:7296
	ds_load_u8 v112, v37 offset:7552
	ds_load_u8 v113, v37 offset:7424
	ds_load_u8 v114, v37 offset:7168
	ds_load_u8 v115, v37 offset:6784
	ds_load_u8 v116, v37 offset:7040
	ds_load_u8 v117, v37 offset:6912
	ds_load_u8 v118, v37 offset:6656
	ds_load_u8 v119, v37 offset:6272
	ds_load_u8 v120, v37 offset:6528
	ds_load_u8 v121, v37 offset:6400
	ds_load_u8 v37, v37 offset:6144
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v33, v36, v33, 0xc0c0004
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v35, v65, v38, 0xc0c0004
	v_perm_b32 v36, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v38, v69, v66, 0xc0c0004
	v_perm_b32 v39, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v40, v73, v70, 0xc0c0004
	v_perm_b32 v65, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v69, v77, v74, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v71, v82, v78, 0xc0c0004
	v_perm_b32 v73, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v74, v86, v83, 0xc0c0004
	v_perm_b32 v75, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v76, v90, v87, 0xc0c0004
	v_perm_b32 v77, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v79, v93, v92, 0xc0c0004
	v_lshl_or_b32 v68, v34, 16, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v119, 0xc0c0004
	v_lshl_or_b32 v67, v36, 16, v35
	v_lshl_or_b32 v66, v39, 16, v38
	v_lshl_or_b32 v65, v65, 16, v40
	v_perm_b32 v78, v94, v91, 0xc0c0004
	v_perm_b32 v80, v98, v95, 0xc0c0004
	v_perm_b32 v82, v97, v96, 0xc0c0004
	v_perm_b32 v83, v102, v99, 0xc0c0004
	v_perm_b32 v84, v101, v100, 0xc0c0004
	v_perm_b32 v85, v106, v103, 0xc0c0004
	v_perm_b32 v86, v105, v104, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	v_lshl_or_b32 v71, v73, 16, v71
	v_lshl_or_b32 v70, v75, 16, v74
	v_lshl_or_b32 v69, v77, 16, v76
	v_lshl_or_b32 v77, v93, 16, v37
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v87, v110, v107, 0xc0c0004
	v_perm_b32 v88, v109, v108, 0xc0c0004
	v_perm_b32 v89, v114, v111, 0xc0c0004
	v_perm_b32 v90, v113, v112, 0xc0c0004
	v_perm_b32 v91, v118, v115, 0xc0c0004
	v_perm_b32 v92, v117, v116, 0xc0c0004
	v_lshl_or_b32 v76, v79, 16, v78
	v_lshl_or_b32 v75, v82, 16, v80
	v_lshl_or_b32 v74, v84, 16, v83
	v_lshl_or_b32 v73, v86, 16, v85
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[53:56], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v88, 16, v87
	v_lshl_or_b32 v79, v90, 16, v89
	v_lshl_or_b32 v78, v92, 16, v91
	s_mov_b32 s23, s1
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[57:60], v[33:40] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s27, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[61:64], v[33:40] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, s1, 0
	s_add_i32 s0, s28, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s27, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s3, s27, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s29, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s3, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v13, v13, v33 :: v_dual_add_nc_u32 v122, s29, v32
	v_dual_add_f32 v19, v19, v34 :: v_dual_add_f32 v18, v18, v35
	v_dual_add_f32 v17, v17, v36 :: v_dual_add_f32 v16, v16, v37
	v_dual_add_f32 v15, v15, v38 :: v_dual_add_f32 v14, v14, v39
	v_dual_add_f32 v12, v12, v40 :: v_dual_add_nc_u32 v123, s1, v31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s3, s29, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s28, s26
	s_mov_b32 s28, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v122, v81 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v123, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v123, v[45:48] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s3, 0, 0x4400
	s_add_i32 s1, 0, 0x2000
.LBB0_7:                                ; %Flow56
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, v20, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s23, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v41, s24, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v7 offset:1664
	ds_load_u8 v25, v7 offset:1920
	ds_load_u8 v26, v7 offset:1792
	ds_load_u8 v27, v7 offset:1536
	ds_load_u8 v28, v7 offset:1152
	ds_load_u8 v29, v7 offset:1408
	ds_load_u8 v30, v7 offset:1280
	ds_load_u8 v31, v7 offset:1024
	ds_load_u8 v32, v7 offset:640
	ds_load_u8 v45, v7 offset:896
	ds_load_u8 v46, v7 offset:768
	ds_load_u8 v47, v7 offset:512
	ds_load_u8 v48, v7 offset:128
	ds_load_u8 v49, v7 offset:256
	ds_load_u8 v50, v7
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v26, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v27, v8, 0xc0c0004
	v_mov_b32_e32 v25, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s24, v24
	v_add_nc_u32_e32 v33, s24, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v27, v31, v28, 0xc0c0004
	v_perm_b32 v28, v30, v29, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v37, s24, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v29, v47, v32, 0xc0c0004
	v_lshl_or_b32 v47, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v50, v48, 0xc0c0004
	v_lshl_or_b32 v48, v26, 16, v8
	v_lshl_or_b32 v46, v30, 16, v29
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v30, v25
	ds_load_u8 v51, v7 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v37
	ds_load_b128 v[41:44], v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v7 offset:3712
	ds_load_u8 v52, v7 offset:3968
	ds_load_u8 v53, v7 offset:3840
	ds_load_u8 v54, v7 offset:3584
	ds_load_u8 v55, v7 offset:3200
	ds_load_u8 v56, v7 offset:3456
	ds_load_u8 v57, v7 offset:3328
	ds_load_u8 v58, v7 offset:3072
	ds_load_u8 v59, v7 offset:2688
	ds_load_u8 v60, v7 offset:2944
	ds_load_u8 v61, v7 offset:2816
	ds_load_u8 v62, v7 offset:2560
	ds_load_u8 v63, v7 offset:2176
	ds_load_u8 v64, v7 offset:2432
	ds_load_u8 v65, v7 offset:2304
	ds_load_u8 v66, v7 offset:2048
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v29, v25
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v54, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v58, v55, 0xc0c0004
	v_perm_b32 v32, v49, v51, 0xc0c0004
	v_perm_b32 v49, v53, v52, 0xc0c0004
	v_perm_b32 v51, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v62, v59, 0xc0c0004
	v_perm_b32 v53, v61, v60, 0xc0c0004
	v_lshl_or_b32 v45, v32, 16, v31
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v66, v63, 0xc0c0004
	v_perm_b32 v55, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[41:44], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v49, 16, v8
	v_lshl_or_b32 v43, v51, 16, v50
	v_lshl_or_b32 v42, v53, 16, v52
	v_lshl_or_b32 v41, v55, 16, v54
	ds_load_u8 v8, v7 offset:5760
	ds_load_u8 v45, v7 offset:6016
	ds_load_u8 v46, v7 offset:5888
	ds_load_u8 v47, v7 offset:5632
	ds_load_u8 v48, v7 offset:5248
	ds_load_u8 v49, v7 offset:5504
	ds_load_u8 v50, v7 offset:5376
	ds_load_u8 v51, v7 offset:5120
	ds_load_u8 v52, v7 offset:4736
	ds_load_u8 v53, v7 offset:4992
	ds_load_u8 v54, v7 offset:4864
	ds_load_u8 v55, v7 offset:4608
	ds_load_u8 v56, v7 offset:4224
	ds_load_u8 v57, v7 offset:4480
	ds_load_u8 v58, v7 offset:4352
	ds_load_u8 v59, v7 offset:4096
	ds_load_u8 v60, v7 offset:7808
	ds_load_u8 v61, v7 offset:8064
	ds_load_u8 v62, v7 offset:7936
	ds_load_u8 v63, v7 offset:7680
	ds_load_u8 v64, v7 offset:7296
	ds_load_u8 v65, v7 offset:7552
	ds_load_u8 v66, v7 offset:7424
	ds_load_u8 v67, v7 offset:7168
	ds_load_u8 v68, v7 offset:6784
	ds_load_u8 v69, v7 offset:7040
	ds_load_u8 v70, v7 offset:6912
	ds_load_u8 v71, v7 offset:6656
	ds_load_u8 v72, v7 offset:6272
	ds_load_u8 v73, v7 offset:6528
	ds_load_u8 v74, v7 offset:6400
	ds_load_u8 v7, v7 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v8, v47, v8, 0xc0c0004
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v46, v51, v48, 0xc0c0004
	v_perm_b32 v47, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v48, v55, v52, 0xc0c0004
	v_perm_b32 v49, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v59, v56, 0xc0c0004
	v_perm_b32 v51, v58, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[37:40], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v45, 16, v8
	v_lshl_or_b32 v39, v47, 16, v46
	v_lshl_or_b32 v38, v49, 16, v48
	v_lshl_or_b32 v37, v51, 16, v50
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v63, v60, 0xc0c0004
	v_perm_b32 v41, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v67, v64, 0xc0c0004
	v_perm_b32 v43, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v44, v71, v68, 0xc0c0004
	v_perm_b32 v45, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v72, 0xc0c0004
	v_perm_b32 v46, v74, v73, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v41, 16, v8
	v_lshl_or_b32 v35, v43, 16, v42
	v_lshl_or_b32 v34, v45, 16, v44
	v_lshl_or_b32 v33, v46, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[3:6], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v27
	v_cvt_f32_i32_e32 v5, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v32
	v_cvt_f32_i32_e32 v7, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v19, v19, v3 :: v_dual_add_f32 v18, v18, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_f32_e32 v17, v17, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v29
	v_cvt_f32_i32_e32 v4, v30
	v_cvt_f32_i32_e32 v5, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v12, v6 :: v_dual_add_f32 v13, v13, v7
	v_dual_add_f32 v16, v16, v3 :: v_dual_add_f32 v15, v15, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v14, v14, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v3, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s1, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s3, v24
	v_add_nc_u32_e32 v23, s3, v23
	v_add_nc_u32_e32 v22, s3, v22
	v_add_nc_u32_e32 v21, s3, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v24, v6 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[29:32], v23
	ds_load_b128 v[33:36], v22
	ds_load_b128 v[37:40], v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v21, 0
	ds_load_u8 v7, v6 offset:1664
	ds_load_u8 v8, v6 offset:1920
	ds_load_u8 v25, v6 offset:1792
	ds_load_u8 v26, v6 offset:1536
	ds_load_u8 v27, v6 offset:1152
	ds_load_u8 v28, v6 offset:1408
	ds_load_u8 v41, v6 offset:1280
	ds_load_u8 v42, v6 offset:1024
	ds_load_u8 v43, v6 offset:640
	ds_load_u8 v44, v6 offset:896
	ds_load_u8 v45, v6 offset:768
	ds_load_u8 v46, v6 offset:512
	ds_load_u8 v47, v6 offset:128
	ds_load_u8 v48, v6 offset:256
	ds_load_u8 v49, v6
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v25, v8, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v26, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v23, v41, v28, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v22, v42, v27, 0xc0c0004
	v_mov_b32_e32 v28, v21
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v25, v46, v43, 0xc0c0004
	v_lshl_or_b32 v44, v8, 16, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v24, v48, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v49, v47, 0xc0c0004
	ds_load_u8 v45, v6 offset:3712
	ds_load_u8 v46, v6 offset:3968
	ds_load_u8 v47, v6 offset:3840
	ds_load_u8 v49, v6 offset:3584
	ds_load_u8 v50, v6 offset:3200
	ds_load_u8 v51, v6 offset:3456
	ds_load_u8 v52, v6 offset:3328
	ds_load_u8 v53, v6 offset:3072
	ds_load_u8 v54, v6 offset:2688
	ds_load_u8 v55, v6 offset:2944
	ds_load_u8 v56, v6 offset:2816
	ds_load_u8 v57, v6 offset:2560
	ds_load_u8 v58, v6 offset:2176
	ds_load_u8 v59, v6 offset:2432
	ds_load_u8 v60, v6 offset:2304
	ds_load_u8 v61, v6 offset:2048
	v_lshl_or_b32 v43, v23, 16, v22
	v_lshl_or_b32 v42, v26, 16, v25
	v_mov_b32_e32 v22, v21
	v_lshl_or_b32 v41, v24, 16, v27
	v_mov_b32_e32 v23, v21
	v_mov_b32_e32 v24, v21
	v_mov_b32_e32 v25, v21
	v_mov_b32_e32 v26, v21
	v_mov_b32_e32 v27, v21
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v49, v45, 0xc0c0004
	v_perm_b32 v8, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v45, v53, v50, 0xc0c0004
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[41:44], v[37:40], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v48, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v57, v54, 0xc0c0004
	v_lshl_or_b32 v40, v8, 16, v7
	v_lshl_or_b32 v39, v46, 16, v45
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v61, v58, 0xc0c0004
	v_lshl_or_b32 v38, v48, 16, v47
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v37, v50, 16, v49
	ds_load_u8 v7, v6 offset:5760
	ds_load_u8 v8, v6 offset:6016
	ds_load_u8 v41, v6 offset:5888
	ds_load_u8 v42, v6 offset:5632
	ds_load_u8 v43, v6 offset:5248
	ds_load_u8 v44, v6 offset:5504
	ds_load_u8 v45, v6 offset:5376
	ds_load_u8 v46, v6 offset:5120
	ds_load_u8 v47, v6 offset:4736
	ds_load_u8 v48, v6 offset:4992
	ds_load_u8 v49, v6 offset:4864
	ds_load_u8 v50, v6 offset:4608
	ds_load_u8 v51, v6 offset:4224
	ds_load_u8 v52, v6 offset:4480
	ds_load_u8 v53, v6 offset:4352
	ds_load_u8 v54, v6 offset:4096
	ds_load_u8 v55, v6 offset:7808
	ds_load_u8 v56, v6 offset:8064
	ds_load_u8 v57, v6 offset:7936
	ds_load_u8 v58, v6 offset:7680
	ds_load_u8 v59, v6 offset:7296
	ds_load_u8 v60, v6 offset:7552
	ds_load_u8 v61, v6 offset:7424
	ds_load_u8 v62, v6 offset:7168
	ds_load_u8 v63, v6 offset:6784
	ds_load_u8 v64, v6 offset:7040
	ds_load_u8 v65, v6 offset:6912
	ds_load_u8 v66, v6 offset:6656
	ds_load_u8 v67, v6 offset:6272
	ds_load_u8 v68, v6 offset:6528
	ds_load_u8 v69, v6 offset:6400
	ds_load_u8 v6, v6 offset:6144
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v7, v42, v7, 0xc0c0004
	v_perm_b32 v8, v41, v8, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v41, v46, v43, 0xc0c0004
	v_perm_b32 v42, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v43, v50, v47, 0xc0c0004
	v_perm_b32 v44, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v54, v51, 0xc0c0004
	v_perm_b32 v46, v53, v52, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[37:40], v[33:36], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v8, 16, v7
	v_lshl_or_b32 v35, v42, 16, v41
	v_lshl_or_b32 v34, v44, 16, v43
	v_lshl_or_b32 v33, v46, 16, v45
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v58, v55, 0xc0c0004
	v_perm_b32 v8, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v62, v59, 0xc0c0004
	v_perm_b32 v38, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v66, v63, 0xc0c0004
	v_perm_b32 v40, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v6, v67, 0xc0c0004
	v_perm_b32 v41, v69, v68, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v8, 16, v7
	v_lshl_or_b32 v31, v38, 16, v37
	v_lshl_or_b32 v30, v40, 16, v39
	v_lshl_or_b32 v29, v41, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[2:5], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v6, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v3, v28
.LBB0_11:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v11, s20, v11
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v2, v2, v20, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v13, v4 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v18, v6 :: v_dual_add_f32 v25, v15, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v5, v19, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	v_or_b32_e32 v20, 4, v2
	v_or_b32_e32 v21, 8, v2
	v_or_b32_e32 v22, 12, v2
	v_or_b32_e32 v23, 16, v2
	v_or_b32_e32 v24, 20, v2
	v_or_b32_e32 v27, 24, v2
	v_or_b32_e32 v28, 28, v2
	s_clause 0x7
	buffer_load_u16 v29, v2, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v13, v4, s2
	v_cndmask_b32_e64 v6, v18, v6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v30, 7, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v16, v8 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v31, v0, 3, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v17, v7 :: v_dual_and_b32 v2, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v30, s17, v30
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v1, v9, 2, v1
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s20, s17
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v14, v26 :: v_dual_add_f32 v3, v12, v3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v16, v8, s2
	v_cndmask_b32_e64 v5, v19, v5, s2
	v_cndmask_b32_e64 v7, v17, v7, s2
	v_cndmask_b32_e64 v12, v12, v3, s2
	v_cndmask_b32_e64 v15, v15, v25, s2
	v_cndmask_b32_e64 v14, v14, v26, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v29, 16, v29
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v29, v11, v29
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v4, v29 :: v_dual_and_b32 v31, 0x1040, v31
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v11, v20
	v_mul_f32_e32 v23, v11, v23
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v11, v27 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v13, v1, v31
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s0, v2, v30
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v8, v23
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v21, v11, v21 :: v_dual_lshlrev_b32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v9, v9, 9, v13
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v24, v11, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v11, v22
	v_dual_mul_f32 v11, v11, v28 :: v_dual_mul_f32 v14, v14, v27
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_nc_u32_e32 v13, 0, v9
	v_xad_u32 v16, v9, 4, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v5, v20
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v17, v9, 8, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v6, v21
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	v_xad_u32 v18, v9, 12, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v7, v22
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v19, v9, 16, 0
	v_xad_u32 v25, v9, 20, 0
	v_xad_u32 v26, v9, 24, 0
	v_xad_u32 v9, v9, 28, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v15, v15, v24
	v_mul_f32_e32 v11, v12, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b32 v13, v4
	ds_store_b32 v16, v5
	ds_store_b32 v17, v6
	ds_store_b32 v18, v7
	ds_store_b32 v19, v8
	ds_store_b32 v25, v15
	ds_store_b32 v26, v14
	ds_store_b32 v9, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v6, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v0, 5, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 28, v4
	v_and_b32_e32 v6, 0x204, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v4, 0x1c0, v10, v4
	v_xor_b32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, v0, 32, v4
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_12:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_14:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_16:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_18:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s18, v2
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_20:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_22:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s18, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_24:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s17, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_26:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 124
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6948
; TotalNumSgprs: 32
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
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
