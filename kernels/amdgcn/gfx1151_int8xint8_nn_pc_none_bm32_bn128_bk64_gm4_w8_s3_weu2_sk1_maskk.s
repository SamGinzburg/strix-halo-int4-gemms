	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v32, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v22, 48, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v38, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v26, 1, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v34, 32, v32
	v_lshlrev_b32_e32 v33, 3, v2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v25, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 31
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
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s19, v32
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v35, v2, 4, v3
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v36, s19, 5, v35
	.loc	1 293 16 is_stmt 1              ; generate_amdgcn.py:293:16
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
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s29, v32
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s33, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s33, v33
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s33, v32
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s18, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s33, v34
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s3, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s29, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s6, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s19, s33
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s6, s28, s29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s29, v3
	v_cmp_gt_i32_e64 s3, s29, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v37, v1, v33, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s30, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s18, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s4, v35
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s33, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_and_b32 s2, s2, s30
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s33, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s4, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v10, 0x80000000, v3, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s33, v33
	v_or_b32_e32 v12, s33, v32
	v_or_b32_e32 v13, s33, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_lshl_b32 s3, s19, 6
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v11
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v14, s33, v37
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s29, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v1, s[24:27], 0 offen
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s4, v35
	v_add_nc_u32_e32 v11, s4, v36
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s29, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[18:19], v10, s[20:23], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v14, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_mov_b32 s6, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v14, 0x80000000, v11, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[20:21], v10, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v1, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v14, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v39, v1, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, 0, v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v23, 0, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v22, v[6:9] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v23, v[18:19] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v22, v[2:5]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v23, v[20:21] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v22, v[10:13] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[14:17] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v25, 6, v2
	v_xor_b32_e32 v29, 16, v28
	v_xor_b32_e32 v30, 32, v28
	v_xor_b32_e32 v31, 48, v28
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
.LBB0_3:                                ; %Flow43
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_and_b32_e32 v27, 0x70, v26
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s34, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 48, v1
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v28, v25, 6, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_xor_b32_e32 v29, 16, v28
	v_xor_b32_e32 v30, 32, v28
	v_xor_b32_e32 v31, 48, v28
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	s_add_i32 s33, s33, 64
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s3, 0, 0x4800
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s5, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s33, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v40, s0, v33
	v_or_b32_e32 v41, s0, v32
	v_or_b32_e32 v42, s0, v34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s6, s0, s19
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v43, s0, v37
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v40
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s18
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s29, v41
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v44, s6, v35
	v_add_nc_u32_e32 v45, s6, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v40, 0x80000000, v43, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v41, 0x80000000, v44, s0
	s_mov_b32 s0, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[108:109], v40, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v42, 0x80000000, v45, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[56:59], v41, s[24:27], 0 offen
	buffer_load_b128 v[60:63], v42, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v40, s0, v28
	s_mov_b32 s31, s3
	s_mov_b32 s3, s4
	v_add_nc_u32_e32 v41, s0, v29
	v_add_nc_u32_e32 v42, s0, v30
	v_add_nc_u32_e32 v43, s0, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v44, s3, v27, v25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[48:51], v40
	ds_load_b128 v[64:67], v40 offset:1024
	ds_load_b128 v[68:71], v41
	ds_load_b128 v[72:75], v41 offset:1024
	ds_load_b128 v[76:79], v42
	ds_load_b128 v[80:83], v42 offset:1024
	ds_load_b128 v[84:87], v43
	ds_load_b128 v[88:91], v43 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v44 offset:1664
	ds_load_u8 v41, v44 offset:1920
	ds_load_u8 v42, v44 offset:1792
	ds_load_u8 v43, v44 offset:1536
	ds_load_u8 v45, v44 offset:1152
	ds_load_u8 v46, v44 offset:1408
	ds_load_u8 v47, v44 offset:1280
	ds_load_u8 v52, v44 offset:1024
	ds_load_u8 v53, v44 offset:640
	ds_load_u8 v54, v44 offset:896
	ds_load_u8 v55, v44 offset:768
	ds_load_u8 v92, v44 offset:512
	ds_load_u8 v93, v44 offset:128
	ds_load_u8 v94, v44 offset:384
	ds_load_u8 v95, v44 offset:256
	ds_load_u8 v96, v44
	ds_load_u8 v97, v44 offset:3712
	ds_load_u8 v98, v44 offset:3968
	ds_load_u8 v99, v44 offset:3840
	ds_load_u8 v100, v44 offset:3584
	ds_load_u8 v101, v44 offset:3200
	ds_load_u8 v102, v44 offset:3456
	ds_load_u8 v103, v44 offset:3328
	ds_load_u8 v104, v44 offset:3072
	ds_load_u8 v105, v44 offset:2688
	ds_load_u8 v106, v44 offset:2944
	ds_load_u8 v107, v44 offset:2816
	ds_load_u8 v110, v44 offset:2560
	ds_load_u8 v111, v44 offset:2176
	ds_load_u8 v112, v44 offset:2432
	ds_load_u8 v113, v44 offset:2304
	ds_load_u8 v114, v44 offset:2048
	ds_load_u8 v115, v44 offset:5760
	ds_load_u8 v116, v44 offset:6016
	ds_load_u8 v117, v44 offset:5888
	ds_load_u8 v118, v44 offset:5632
	ds_load_u8 v119, v44 offset:5248
	ds_load_u8 v120, v44 offset:5504
	ds_load_u8 v121, v44 offset:5376
	ds_load_u8 v122, v44 offset:5120
	ds_load_u8 v123, v44 offset:4736
	ds_load_u8 v124, v44 offset:4992
	ds_load_u8 v125, v44 offset:4864
	ds_load_u8 v126, v44 offset:4608
	ds_load_u8 v127, v44 offset:4224
	ds_load_u8 v128, v44 offset:4480
	ds_load_u8 v129, v44 offset:4352
	ds_load_u8 v130, v44 offset:4096
	ds_load_u8 v131, v44 offset:7808
	ds_load_u8 v132, v44 offset:8064
	ds_load_u8 v133, v44 offset:7936
	ds_load_u8 v134, v44 offset:7680
	ds_load_u8 v135, v44 offset:7296
	ds_load_u8 v136, v44 offset:7552
	ds_load_u8 v137, v44 offset:7424
	ds_load_u8 v138, v44 offset:7168
	ds_load_u8 v139, v44 offset:6784
	ds_load_u8 v140, v44 offset:7040
	ds_load_u8 v141, v44 offset:6912
	ds_load_u8 v142, v44 offset:6656
	ds_load_u8 v143, v44 offset:6272
	ds_load_u8 v144, v44 offset:6528
	ds_load_u8 v145, v44 offset:6400
	ds_load_u8 v44, v44 offset:6144
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v40, v43, v40, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v42, v52, v45, 0xc0c0004
	v_perm_b32 v43, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v45, v92, v53, 0xc0c0004
	v_perm_b32 v46, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v47, v96, v93, 0xc0c0004
	v_perm_b32 v52, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v53, v100, v97, 0xc0c0004
	v_perm_b32 v54, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v55, v104, v101, 0xc0c0004
	v_perm_b32 v96, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v97, v110, v105, 0xc0c0004
	v_perm_b32 v100, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v101, v114, v111, 0xc0c0004
	v_perm_b32 v102, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v103, v118, v115, 0xc0c0004
	v_perm_b32 v104, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v105, v122, v119, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v143, 0xc0c0004
	v_perm_b32 v119, v145, v144, 0xc0c0004
	v_lshl_or_b32 v95, v41, 16, v40
	v_lshl_or_b32 v94, v43, 16, v42
	v_lshl_or_b32 v93, v46, 16, v45
	v_lshl_or_b32 v92, v52, 16, v47
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_perm_b32 v107, v126, v123, 0xc0c0004
	v_perm_b32 v110, v125, v124, 0xc0c0004
	v_perm_b32 v111, v130, v127, 0xc0c0004
	v_perm_b32 v112, v129, v128, 0xc0c0004
	v_lshl_or_b32 v99, v54, 16, v53
	v_lshl_or_b32 v98, v96, 16, v55
	v_lshl_or_b32 v97, v100, 16, v97
	v_lshl_or_b32 v96, v102, 16, v101
	v_lshl_or_b32 v103, v104, 16, v103
	v_lshl_or_b32 v104, v119, 16, v44
	v_wmma_i32_16x16x16_iu8 v[40:47], v[92:95], v[48:51], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[92:95], v[64:67], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v113, v134, v131, 0xc0c0004
	v_perm_b32 v114, v133, v132, 0xc0c0004
	v_perm_b32 v115, v138, v135, 0xc0c0004
	v_perm_b32 v116, v137, v136, 0xc0c0004
	v_perm_b32 v117, v142, v139, 0xc0c0004
	v_perm_b32 v118, v141, v140, 0xc0c0004
	v_lshl_or_b32 v102, v106, 16, v105
	v_lshl_or_b32 v101, v110, 16, v107
	v_lshl_or_b32 v100, v112, 16, v111
	v_wmma_i32_16x16x16_iu8 v[40:47], v[96:99], v[68:71], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[96:99], v[72:75], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v114, 16, v113
	v_lshl_or_b32 v106, v116, 16, v115
	v_lshl_or_b32 v105, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[40:47], v[100:103], v[76:79], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[100:103], v[80:83], v[48:55] neg_lo:[1,1,0]
	s_mov_b32 s4, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s35, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[40:47], v[104:107], v[84:87], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[104:107], v[88:91], v[48:55] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s35, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s35, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s3, s35, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s3, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v15, v50 :: v_dual_add_nc_u32 v146, s6, v39
	v_dual_add_f32 v10, v10, v49 :: v_dual_add_nc_u32 v147, s1, v38
	v_dual_add_f32 v17, v17, v40 :: v_dual_add_f32 v24, v24, v41
	v_dual_add_f32 v23, v23, v42 :: v_dual_add_f32 v22, v22, v43
	v_dual_add_f32 v21, v21, v44 :: v_dual_add_f32 v20, v20, v45
	v_dual_add_f32 v19, v19, v46 :: v_dual_add_f32 v18, v18, v47
	v_dual_add_f32 v9, v9, v48 :: v_dual_add_f32 v16, v16, v51
	v_dual_add_f32 v11, v11, v52 :: v_dual_add_f32 v12, v12, v53
	v_dual_add_f32 v13, v13, v54 :: v_dual_add_f32 v14, v14, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s3, s6, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v146, v[108:109] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v147, v[56:59]
	s_waitcnt vmcnt(0)
	ds_store_b128 v147, v[60:63] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s3, 0, 0x4800
	s_add_i32 s1, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v17, v9
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v27, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v46, s31, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s6, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v6 offset:1664
	ds_load_u8 v8, v6 offset:1920
	ds_load_u8 v32, v6 offset:1792
	ds_load_u8 v33, v6 offset:1536
	ds_load_u8 v34, v6 offset:1152
	ds_load_u8 v35, v6 offset:1408
	ds_load_u8 v36, v6 offset:1280
	ds_load_u8 v37, v6 offset:1024
	ds_load_u8 v38, v6 offset:640
	ds_load_u8 v39, v6 offset:768
	ds_load_u8 v40, v6 offset:512
	ds_load_u8 v41, v6 offset:896
	ds_load_u8 v42, v6 offset:128
	ds_load_u8 v43, v6 offset:256
	ds_load_u8 v44, v6
	ds_load_u8 v45, v6 offset:384
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[52:55], v46 offset:1024
	ds_load_b128 v[56:59], v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v76, s31, v30
	v_add_nc_u32_e32 v64, s31, v29
	v_add_nc_u32_e32 v72, s31, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v32, v8, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v33, v7, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v32, v37, v34, 0xc0c0004
	v_lshl_or_b32 v63, v8, 16, v7
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v34, v40, v38, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v39, v41, 0xc0c0004
	v_lshl_or_b32 v62, v33, 16, v32
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v43, v45, 0xc0c0004
	v_lshl_or_b32 v61, v35, 16, v34
	v_mov_b32_e32 v39, s11
	ds_load_u8 v40, v6 offset:3712
	ds_load_u8 v41, v6 offset:3968
	ds_load_u8 v42, v6 offset:3840
	ds_load_u8 v43, v6 offset:3584
	ds_load_u8 v44, v6 offset:3200
	ds_load_u8 v45, v6 offset:3456
	ds_load_u8 v46, v6 offset:3328
	ds_load_u8 v47, v6 offset:3072
	ds_load_u8 v65, v6 offset:2688
	ds_load_u8 v66, v6 offset:2944
	ds_load_u8 v67, v6 offset:2816
	ds_load_u8 v68, v6 offset:2560
	ds_load_u8 v69, v6 offset:2176
	ds_load_u8 v70, v6 offset:2432
	ds_load_u8 v71, v6 offset:2304
	ds_load_u8 v73, v6 offset:2048
	ds_load_u8 v85, v6 offset:4736
	ds_load_u8 v86, v6 offset:4864
	ds_load_u8 v87, v6 offset:4608
	v_lshl_or_b32 v60, v8, 16, v7
	ds_load_u8 v7, v6 offset:5760
	ds_load_u8 v8, v6 offset:6016
	ds_load_u8 v74, v6 offset:5888
	ds_load_u8 v75, v6 offset:5632
	ds_load_u8 v77, v6 offset:5248
	ds_load_u8 v78, v6 offset:5504
	ds_load_u8 v79, v6 offset:5376
	ds_load_u8 v80, v6 offset:5120
	v_dual_mov_b32 v38, s10 :: v_dual_mov_b32 v37, s9
	v_dual_mov_b32 v36, s8 :: v_dual_mov_b32 v35, s7
	v_dual_mov_b32 v34, s6 :: v_dual_mov_b32 v33, s5
	v_mov_b32_e32 v32, s4
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v81, v43, v40, 0xc0c0004
	v_perm_b32 v82, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v83, v47, v44, 0xc0c0004
	v_perm_b32 v84, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v65, v68, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[60:63], v[56:59], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v68, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v67, v73, v69, 0xc0c0004
	v_lshl_or_b32 v57, v66, 16, v65
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[2:5], v76
	ds_load_b128 v[48:51], v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v82, 16, v81
	v_lshl_or_b32 v58, v84, 16, v83
	v_lshl_or_b32 v56, v68, 16, v67
	ds_load_u8 v66, v6 offset:4992
	ds_load_u8 v67, v6 offset:4224
	ds_load_u8 v68, v6 offset:4480
	ds_load_u8 v69, v6 offset:4352
	ds_load_u8 v70, v6 offset:4096
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v65, v80, v77, 0xc0c0004
	v_perm_b32 v73, v87, v85, 0xc0c0004
	ds_load_u8 v80, v6 offset:7808
	ds_load_u8 v81, v6 offset:8064
	ds_load_u8 v82, v6 offset:7936
	ds_load_u8 v83, v6 offset:7680
	ds_load_u8 v84, v6 offset:7296
	ds_load_u8 v85, v6 offset:7552
	ds_load_u8 v87, v6 offset:7424
	ds_load_u8 v88, v6 offset:7168
	ds_load_u8 v89, v6 offset:6784
	ds_load_u8 v90, v6 offset:7040
	ds_load_u8 v91, v6 offset:6912
	ds_load_u8 v92, v6 offset:6656
	ds_load_u8 v93, v6 offset:6272
	ds_load_u8 v94, v6 offset:6528
	ds_load_u8 v95, v6 offset:6400
	ds_load_u8 v6, v6 offset:6144
	v_perm_b32 v71, v79, v78, 0xc0c0004
	v_perm_b32 v7, v75, v7, 0xc0c0004
	v_perm_b32 v8, v74, v8, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v66, v86, v66, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[56:59], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v71, 16, v65
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v70, v67, 0xc0c0004
	v_lshl_or_b32 v49, v66, 16, v73
	v_lshl_or_b32 v51, v8, 16, v7
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v87, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v92, v89, 0xc0c0004
	v_lshl_or_b32 v48, v68, 16, v67
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[64:67], v64 offset:1024
	ds_load_b128 v[68:71], v72 offset:1024
	ds_load_b128 v[72:75], v72
	ds_load_b128 v[76:79], v76 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v6, v93, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[48:51], v[2:5], v[40:47] neg_lo:[1,1,0]
	v_perm_b32 v2, v83, v80, 0xc0c0004
	v_perm_b32 v3, v82, v81, 0xc0c0004
	v_perm_b32 v4, v88, v84, 0xc0c0004
	v_perm_b32 v80, v91, v90, 0xc0c0004
	v_perm_b32 v81, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v3, 16, v2
	v_lshl_or_b32 v4, v7, 16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v80, 16, v8
	v_lshl_or_b32 v2, v81, 16, v6
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[2:5], v[72:75], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v24, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v19, v19, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[32:39], v[60:63], v[52:55], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[56:59], v[64:67], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[48:51], v[76:79], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[2:5], v[68:71], v[32:39] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v45
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v3, v43
	v_cvt_f32_i32_e32 v4, v44
	v_cvt_f32_i32_e32 v6, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v21, v21, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v15, v15, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v20, v20, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v35
	v_cvt_f32_i32_e32 v4, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v18, v18, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v17, v6 :: v_dual_add_f32 v16, v16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v22, v22, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v9, v9, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v12, v2 :: v_dual_add_f32 v13, v13, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v10, v10, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v14, v14, v4 :: v_dual_add_f32 v11, v11, v3
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v40, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
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
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v32, s1, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v32 offset:1664
	ds_load_u8 v34, v32 offset:1920
	ds_load_u8 v35, v32 offset:1792
	ds_load_u8 v36, v32 offset:1536
	ds_load_u8 v37, v32 offset:1152
	ds_load_u8 v38, v32 offset:1408
	ds_load_u8 v39, v32 offset:1280
	ds_load_u8 v40, v32 offset:1024
	ds_load_u8 v41, v32 offset:640
	ds_load_u8 v42, v32 offset:768
	ds_load_u8 v43, v32 offset:512
	ds_load_u8 v44, v32 offset:896
	ds_load_u8 v45, v32 offset:128
	ds_load_u8 v46, v32 offset:384
	ds_load_u8 v47, v32 offset:256
	ds_load_u8 v48, v32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, s3, v28
	v_add_nc_u32_e32 v63, s3, v30
	v_add_nc_u32_e32 v29, s3, v29
	v_add_nc_u32_e32 v71, s3, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v36, v33, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v36, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v40, v37, 0xc0c0004
	v_lshl_or_b32 v62, v34, 16, v33
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v43, v41, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v42, v44, 0xc0c0004
	v_lshl_or_b32 v61, v36, 16, v35
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v48, v45, 0xc0c0004
	v_lshl_or_b32 v60, v38, 16, v37
	v_dual_mov_b32 v42, s11 :: v_dual_mov_b32 v41, s10
	v_mov_b32_e32 v36, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[51:54], v49 offset:1024
	ds_load_b128 v[55:58], v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v32 offset:3712
	ds_load_u8 v44, v32 offset:3968
	ds_load_u8 v45, v32 offset:3840
	ds_load_u8 v46, v32 offset:3584
	ds_load_u8 v47, v32 offset:3200
	ds_load_u8 v48, v32 offset:3456
	ds_load_u8 v49, v32 offset:3328
	ds_load_u8 v50, v32 offset:3072
	ds_load_u8 v64, v32 offset:2688
	ds_load_u8 v65, v32 offset:2944
	ds_load_u8 v66, v32 offset:2816
	ds_load_u8 v67, v32 offset:2560
	ds_load_u8 v68, v32 offset:2176
	ds_load_u8 v69, v32 offset:2432
	ds_load_u8 v70, v32 offset:2304
	ds_load_u8 v72, v32 offset:2048
	v_lshl_or_b32 v59, v34, 16, v33
	v_dual_mov_b32 v40, s9 :: v_dual_mov_b32 v39, s8
	v_dual_mov_b32 v38, s7 :: v_dual_mov_b32 v37, s6
	v_mov_b32_e32 v35, s4
	ds_load_u8 v33, v32 offset:5760
	ds_load_u8 v34, v32 offset:6016
	ds_load_u8 v73, v32 offset:5888
	ds_load_u8 v74, v32 offset:5632
	ds_load_u8 v75, v32 offset:5248
	ds_load_u8 v76, v32 offset:5504
	ds_load_u8 v77, v32 offset:5376
	ds_load_u8 v78, v32 offset:5120
	ds_load_u8 v83, v32 offset:4736
	ds_load_u8 v84, v32 offset:4864
	ds_load_u8 v85, v32 offset:4608
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v79, v46, v43, 0xc0c0004
	v_perm_b32 v80, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v82, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v81, v50, v47, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[1:4], v63
	ds_load_b128 v[5:8], v29 offset:1024
	ds_load_b128 v[28:31], v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v64, v67, v64, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v67, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v66, v72, v68, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[55:58], v[35:42] neg_lo:[1,1,0]
	v_lshl_or_b32 v56, v65, 16, v64
	v_lshl_or_b32 v58, v80, 16, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v55, v67, 16, v66
	ds_load_u8 v65, v32 offset:4992
	ds_load_u8 v66, v32 offset:4224
	ds_load_u8 v67, v32 offset:4480
	ds_load_u8 v68, v32 offset:4352
	ds_load_u8 v69, v32 offset:4096
	v_lshl_or_b32 v57, v82, 16, v81
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v64, v78, v75, 0xc0c0004
	v_perm_b32 v70, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v85, v83, 0xc0c0004
	ds_load_u8 v75, v32 offset:7808
	ds_load_u8 v76, v32 offset:8064
	ds_load_u8 v77, v32 offset:7936
	ds_load_u8 v78, v32 offset:7680
	ds_load_u8 v79, v32 offset:7296
	ds_load_u8 v80, v32 offset:7552
	ds_load_u8 v81, v32 offset:7424
	ds_load_u8 v82, v32 offset:7168
	ds_load_u8 v83, v32 offset:6784
	ds_load_u8 v85, v32 offset:7040
	ds_load_u8 v86, v32 offset:6912
	ds_load_u8 v87, v32 offset:6656
	ds_load_u8 v88, v32 offset:6272
	ds_load_u8 v89, v32 offset:6528
	ds_load_u8 v90, v32 offset:6400
	ds_load_u8 v32, v32 offset:6144
	v_perm_b32 v33, v74, v33, 0xc0c0004
	v_perm_b32 v34, v73, v34, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[28:31], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v70, 16, v64
	v_wmma_i32_16x16x16_iu8 v[35:42], v[59:62], v[51:54], v[35:42] neg_lo:[1,1,0]
	v_lshl_or_b32 v31, v34, 16, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[55:58], v[5:8], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v81, v80, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_perm_b32 v66, v69, v66, 0xc0c0004
	v_lshl_or_b32 v29, v65, 16, v72
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v87, v83, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v90, v89, 0xc0c0004
	v_lshl_or_b32 v28, v67, 16, v66
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[63:66], v63 offset:1024
	ds_load_b128 v[67:70], v71 offset:1024
	ds_load_b128 v[71:74], v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v32, v32, v88, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[28:31], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v1, v78, v75, 0xc0c0004
	v_perm_b32 v2, v77, v76, 0xc0c0004
	v_perm_b32 v3, v82, v79, 0xc0c0004
	v_perm_b32 v75, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v2, 16, v1
	v_lshl_or_b32 v3, v33, 16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v75, 16, v34
	v_lshl_or_b32 v1, v51, 16, v32
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[28:31], v[63:66], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[1:4], v[71:74], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[1:4], v[67:70], v[35:42] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v44
	v_cvt_f32_i32_e32 v4, v45
	v_cvt_f32_i32_e32 v5, v46
	v_cvt_f32_i32_e32 v6, v47
	v_cvt_f32_i32_e32 v7, v48
	v_cvt_f32_i32_e32 v8, v49
	v_cvt_f32_i32_e32 v32, v50
	v_cvt_f32_i32_e32 v33, v35
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v35, v39
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v39, v41
	v_cvt_f32_i32_e32 v40, v42
.LBB0_12:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s28, v25
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v28, v0, 4, 1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v17, v2 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or3_b32 v27, v28, v27, s18
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v25, s19, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v28, 32, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v23, v4 :: v_dual_lshlrev_b32 v27, 1, v27
	v_dual_add_f32 v3, v24, v3 :: v_dual_and_b32 v26, 0x78, v26
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s15, 0xffff
	v_or_b32_e32 v29, 4, v27
	v_or_b32_e32 v31, 12, v27
	s_mov_b32 s20, s14
	v_or_b32_e32 v30, 8, v27
	v_or_b32_e32 v41, 16, v27
	v_or_b32_e32 v42, 20, v27
	v_or_b32_e32 v43, 24, v27
	v_or_b32_e32 v44, 28, v27
	s_clause 0x7
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v20, v7 :: v_dual_add_f32 v8, v19, v8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s28, s19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v34, v10, v34 :: v_dual_add_f32 v37, v15, v37
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v24, v3, s2
	v_cndmask_b32_e64 v7, v20, v7, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v20, s0, v26, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v18, v32 :: v_dual_add_f32 v33, v9, v33
	v_dual_add_f32 v38, v16, v38 :: v_dual_add_f32 v35, v11, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v34, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v36, v12, v36 :: v_dual_add_f32 v39, v13, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v33, s2
	v_cndmask_b32_e64 v11, v11, v35, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v22, v5 :: v_dual_add_f32 v6, v21, v6
	v_dual_add_f32 v40, v14, v40 :: v_dual_mov_b32 v47, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v17, v2, s2
	v_cndmask_b32_e64 v17, v18, v32, s2
	v_cndmask_b32_e64 v16, v16, v38, s2
	v_cndmask_b32_e64 v12, v12, v36, s2
	v_cndmask_b32_e64 v4, v23, v4, s2
	v_cndmask_b32_e64 v5, v22, v5, s2
	v_cndmask_b32_e64 v8, v19, v8, s2
	v_cndmask_b32_e64 v15, v15, v37, s2
	v_cndmask_b32_e64 v14, v14, v40, s2
	v_cndmask_b32_e64 v13, v13, v39, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v21, v6, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v46, 0x5410 :: v_dual_lshlrev_b32 v23, 1, v20
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s15, s19, 4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v45.h
	v_mov_b16_e32 v22.h, v45.h
	v_mov_b16_e32 v21.h, v45.h
	v_mov_b16_e32 v19.h, v45.h
	s_mov_b32 s19, 0x76543210
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v24, 16, v28
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v26, 16, v29
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v34, v26, v1 :: v_dual_lshlrev_b32 v25, 16, v27
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v28, 16, v30
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v26, v24, v26
	v_dual_mul_f32 v33, v25, v1 :: v_dual_and_b32 v0, 16, v0
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v3, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v35, v28, v1
	v_mul_f32_e32 v25, v24, v25
	v_dual_mul_f32 v28, v24, v28 :: v_dual_lshlrev_b32 v27, 16, v31
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v2, v2, v33 :: v_dual_lshlrev_b32 v29, 16, v42
	v_mul_f32_e32 v10, v10, v26
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v36, v27, v1 :: v_dual_lshlrev_b32 v31, 16, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v29, v1
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v30, 16, v41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v43
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v24, v27
	v_mul_f32_e32 v29, v24, v29
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v4, v35 :: v_dual_mul_f32 v5, v5, v36
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v37, v30, v1
	v_mul_f32_e32 v39, v32, v1
	v_mul_f32_e32 v1, v31, v1
	v_mul_f32_e32 v31, v24, v31
	v_dual_mul_f32 v30, v24, v30 :: v_dual_mul_f32 v9, v9, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v24, v24, v32 :: v_dual_mul_f32 v1, v17, v1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v14, v14, v31
	v_mul_f32_e32 v8, v8, v39
	v_dual_mul_f32 v6, v6, v37 :: v_dual_mul_f32 v7, v7, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v17, v2, 16, 1
	v_mov_b16_e32 v18.l, v10.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v13, v13, v24
	v_dual_mul_f32 v11, v11, v30 :: v_dual_mul_f32 v12, v12, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v25, v4, 16, 1
	v_bfe_u32 v26, v5, 16, 1
	v_bfe_u32 v29, v8, 16, 1
	v_bfe_u32 v30, v1, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v15, v28 :: v_dual_mul_f32 v16, v16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_bfe_u32 v24, v3, 16, 1
	v_bfe_u32 v27, v6, 16, 1
	v_bfe_u32 v28, v7, 16, 1
	v_add3_u32 v2, v2, v17, 0x7fff
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v22.l, v13.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v5, v5
	v_mov_b16_e32 v21.l, v11.h
	v_cmp_o_f32_e64 s11, v8, v8
	v_cmp_o_f32_e64 s12, v1, v1
	v_add3_u32 v4, v4, v25, 0x7fff
	v_add3_u32 v5, v5, v26, 0x7fff
	v_add3_u32 v8, v8, v29, 0x7fff
	v_add3_u32 v1, v1, v30, 0x7fff
	v_mov_b16_e32 v45.l, v9.h
	v_cmp_o_f32_e64 s1, v3, v3
	v_cmp_o_f32_e64 s7, v6, v6
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v3, v3, v24, 0x7fff
	v_add3_u32 v6, v6, v27, 0x7fff
	v_add3_u32 v7, v7, v28, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s4
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s11
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s12
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e64 s14, v13, v13
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s8
	v_and_b32_e32 v17, 1, v45
	v_mov_b16_e32 v45.l, v16.h
	v_add3_u32 v8, v13, v22, 0x7fff
	v_add3_u32 v7, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_mov_b16_e32 v19.l, v15.h
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s14
	v_cndmask_b32_e32 v8, v6, v2, vcc_lo
	v_add3_u32 v9, v9, v17, 0x7fff
	v_and_b32_e32 v17, 1, v45
	v_mov_b16_e32 v45.l, v12.h
	v_dual_cndmask_b32 v2, v2, v6 :: v_dual_and_b32 v19, 1, v19
	v_add3_u32 v3, v10, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v10, 1, v45
	v_cmp_o_f32_e64 s6, v15, v15
	v_cmp_o_f32_e64 s9, v12, v12
	v_cmp_o_f32_e64 s10, v11, v11
	v_add3_u32 v5, v15, v19, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s0
	v_add3_u32 v9, v16, v17, 0x7fff
	v_mov_b16_e32 v45.l, v14.h
	v_cndmask_b32_e32 v11, 0x1054, v46, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v47, vcc_lo
	v_add3_u32 v10, v12, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s2
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v7.h, s10
	v_dual_cndmask_b32 v6, v1, v4 :: v_dual_cndmask_b32 v1, v4, v1
	v_cndmask_b16 v3.h, 0x7fff, v9.h, s5
	v_lshl_or_b32 v9, v11, 8, v11
	v_lshl_or_b32 v11, v13, 8, v13
	v_cndmask_b16 v5.h, 0x7fff, v10.h, s9
	v_and_b32_e32 v4, 1, v45
	v_cmp_o_f32_e64 s13, v14, v14
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v2, v2, s19, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v4, v14, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v7.h, 0x7fff, v4.h, s13
	v_lshl_or_b32 v4, v11, 4, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v12, 0x7060706, v4
	v_permlanex16_b32 v10, v1, s19, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v9, 4, v9
	v_dual_cndmask_b32 v9, v5, v0 :: v_dual_cndmask_b32 v0, v0, v5
	v_cndmask_b32_e32 v5, v3, v7, vcc_lo
	v_cndmask_b32_e32 v7, v7, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v11, 0x5040504, v1
	v_perm_b32 v1, v2, v8, v12
	v_permlanex16_b32 v13, v0, s19, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v5, s19, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v10, v6, v12
	v_perm_b32 v0, v2, v8, v11
	v_perm_b32 v2, v10, v6, v11
	v_perm_b32 v4, v13, v9, v11
	v_perm_b32 v5, v13, v9, v12
	v_perm_b32 v6, v14, v7, v11
	v_perm_b32 v7, v14, v7, v12
	v_add_lshl_u32 v8, v20, s15, 1
	s_mov_b32 s19, s23
	s_clause 0x1
	buffer_store_b128 v[0:3], v23, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v8, s[16:19], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 148
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7496
; TotalNumSgprs: 38
; NumVgprs: 148
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     148
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
