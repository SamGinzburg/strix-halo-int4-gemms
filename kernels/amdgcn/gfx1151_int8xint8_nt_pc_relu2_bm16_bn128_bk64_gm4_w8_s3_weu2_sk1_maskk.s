	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[6:7], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s9, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v17, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v20, 2, v0
	s_load_b32 s21, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v9, 48, v17
	v_lshlrev_b32_e32 v26, 2, v12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s6, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s6, s6, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s6, s6, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s21, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s8
	s_mul_hi_u32 s10, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s8, s5
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s9, s5
	s_load_b128 s[12:15], s[0:1], 0x0
	s_cselect_b32 s5, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s8, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s6, s8
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_rcp_iflag_f32_e32 v1, s10
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s19, s15
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s10, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[10:11], null, s21, v1, v[9:10]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v30, s21, 6, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s6
	s_mul_i32 s11, s4, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s20, s5, s9
	s_cmp_ge_u32 s5, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s9
	s_cselect_b32 s4, s11, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s26, v26
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s26, v9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s3, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s6, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s24, s21, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s8
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s23, s6, s21
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s20, s3, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s24, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s20, s21
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s21, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s22, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v31, v2, v26, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s3, s23, s26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s3, v10
	v_add_nc_u32_e32 v2, s3, v30
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s22
	s_and_b32 s2, s2, s22
	s_cmpk_gt_i32 s24, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s26, v31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s2
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s26, s26, 64
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, 64, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s26, v26
	v_or_b32_e32 v6, s26, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v14, 0x80000000, v3, vcc_lo
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v15, s26, v31
	.loc	1 350 30 is_stmt 1              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v13, 64, v2
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s21, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v4, s[16:19], 0 offen
	buffer_load_b128 v[5:8], v5, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v18, v14, s[12:15], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_mov_b32 s3, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_cndmask_b32_e32 v19, 0x80000000, v13, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v25, v14, s[12:15], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v11, s[16:19], 0 offen
	buffer_load_b128 v[21:24], v19, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v11, 1, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v19, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s24, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v11, 48, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v19, 48, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v32, v20, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v33, v17, v19
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v20, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, 0, v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v17, 0, v33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v11, v18 offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v17, v[1:4]
	ds_store_b128 v17, v[5:8] offset:4096
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v11, v25 offset:17408
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v17, v[13:16] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[21:24] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 6, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v23, v20, 5, v21
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v25, 16, v21
	v_xor_b32_e32 v22, 32, v21
	v_xor_b32_e32 v24, 48, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v29, 16, v23
	v_xor_b32_e32 v27, 32, v23
	v_xor_b32_e32 v28, 48, v23
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[4:5], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v11, 0
	s_add_i32 s25, 0, 0x4000
	s_add_i32 s1, 0, 0x4400
	s_add_i32 s24, 0, 0x2000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[4:5], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v1, 48, v1
	v_mov_b32_e32 v13, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s27, s24, 6
	s_add_i32 s26, s26, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v21, v12, 6, v1
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v11, 0
	s_add_i32 s25, 0, 0x4000
	v_lshl_or_b32 v23, v20, 5, v21
	v_xor_b32_e32 v25, 16, v21
	v_xor_b32_e32 v22, 32, v21
	v_xor_b32_e32 v24, 48, v21
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v29, 16, v23
	v_xor_b32_e32 v27, 32, v23
	v_xor_b32_e32 v28, 48, v23
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	s_add_i32 s1, 0, 0x4400
	s_add_i32 s24, 0, 0x2000
	s_add_i32 s27, s27, -3
	s_mov_b32 s28, 1
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s29, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s29, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s26, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v34, s0, v26
	v_or_b32_e32 v35, s0, v9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s30, s0, s23
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v36, s0, v31
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v37, s30, v10
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s0, s21, v34
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v35
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v38, s30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v34, 0x80000000, v36, s0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v35, 0x80000000, v37 :: v_dual_cndmask_b32 v36, 0x80000000, v38
	s_mov_b32 s0, s25
	s_mov_b32 s25, s1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v82, v34, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[42:45], v35, s[16:19], 0 offen
	buffer_load_b128 v[46:49], v36, s[16:19], 0 offen
	s_mov_b32 s1, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v34, s0, v21
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v38, s1, v23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v35, s0, v25
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v39, s1, v29
	v_add_nc_u32_e32 v40, s1, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v36, s0, v22
	v_add_nc_u32_e32 v37, s0, v24
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v41, s1, v28
	ds_load_b128 v[50:53], v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[54:57], v34
	ds_load_b128 v[58:61], v35
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[62:65], v39
	ds_load_b128 v[66:69], v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[70:73], v36
	ds_load_b128 v[74:77], v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[78:81], v41
	s_mov_b32 s3, s24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s24, s28, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s24, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s28, s24, 0
	s_add_i32 s0, s29, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s28, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s24, s28, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s30, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s24, s24, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v83, s30, v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v84, s24, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[34:41], v[50:53], v[54:57], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s29, s27
	s_mov_b32 s29, s0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[34:41], v[62:65], v[58:61], v[34:41] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v83, v82 offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v84, v[42:45]
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[46:49] offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[34:41], v[66:69], v[70:73], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[78:81], v[74:77], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v11, v11, v34
	v_dual_add_f32 v19, v19, v35 :: v_dual_add_f32 v18, v18, v36
	v_dual_add_f32 v17, v17, v37 :: v_dual_add_f32 v16, v16, v38
	v_dual_add_f32 v15, v15, v39 :: v_dual_add_f32 v14, v14, v40
	v_add_f32_e32 v13, v13, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow16
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s3, v29
	v_add_nc_u32_e32 v3, s3, v23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s25, v25
	v_add_nc_u32_e32 v5, s25, v21
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[30:33], v2
	ds_load_b128 v[34:37], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[38:41], v4
	ds_load_b128 v[42:45], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v2, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, s3, v28
	v_add_nc_u32_e32 v3, s3, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s25, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v8, v2 :: v_dual_add_nc_u32 v5, s25, v22
	v_mov_b32_e32 v7, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[50:53], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[58:61], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v5, v2
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v9, v2
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[34:37], v[42:45], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[30:33], v[38:41], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[50:53], v[58:61], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[46:49], v[54:57], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v19, v19, v3 :: v_dual_add_f32 v18, v18, v4
	v_dual_add_f32 v17, v17, v5 :: v_dual_add_f32 v16, v16, v6
	v_dual_add_f32 v15, v15, v7 :: v_dual_add_f32 v14, v14, v8
	v_add_f32_e32 v13, v13, v9
	v_add_f32_e32 v11, v11, v2
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s24, v29
	v_add_nc_u32_e32 v3, s24, v23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s1, v25
	v_add_nc_u32_e32 v5, s1, v21
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, s24, v28
	ds_load_b128 v[28:31], v2
	ds_load_b128 v[32:35], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[40:43], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v3, s24, v27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s1, v24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v8, v2 :: v_dual_add_nc_u32 v5, s1, v22
	v_mov_b32_e32 v7, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[21:24], v6
	ds_load_b128 v[44:47], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[48:51], v4
	ds_load_b128 v[52:55], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v5, v2
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v9, v2
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[32:35], v[40:43], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[28:31], v[36:39], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[44:47], v[52:55], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[21:24], v[48:51], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
.LBB0_10:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v10, v0, 4, 1
	v_lshrrev_b32_e32 v20, 1, v20
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v12, s20, v12
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v10, v10, v20, s6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v19, v3 :: v_dual_lshlrev_b32 v20, 1, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s12, s8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v17, v5 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v16, v6 :: v_dual_mov_b32 v29, 0x5410
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v21, 4, v10
	v_or_b32_e32 v22, 8, v10
	v_or_b32_e32 v23, 12, v10
	v_or_b32_e32 v24, 16, v10
	v_or_b32_e32 v25, 20, v10
	v_or_b32_e32 v26, 24, v10
	v_or_b32_e32 v27, 28, v10
	s_clause 0x7
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v8, v14, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v19, v3, s2
	v_cndmask_b32_e64 v5, v17, v5, s2
	v_cndmask_b32_e64 v6, v16, v6, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v30, 0x7632
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v11, v2 :: v_dual_add_f32 v9, v13, v9
	v_dual_add_f32 v4, v18, v4 :: v_dual_add_f32 v7, v15, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v11, v2, s2
	v_cndmask_b32_e64 v9, v13, v9, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v4, v18, v4, s2
	v_cndmask_b32_e64 v7, v15, v7, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v28.h
	v_mov_b16_e32 v13.h, v28.h
	v_mov_b16_e32 v15.h, v28.h
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v1
	s_mov_b32 s0, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s5, s5, 0xffff
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v14, v8, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v28.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v17, v16, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v3, v3, v17 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v19, v16, v19
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v25
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_lshlrev_b32 v20, 16, v24
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v10, v16, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v21, v16, v21 :: v_dual_lshlrev_b32 v18, 16, v22
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v5, v19 :: v_dual_lshlrev_b32 v22, 16, v26
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v16, v20 :: v_dual_lshlrev_b32 v23, 16, v27
	v_dual_mul_f32 v18, v16, v18 :: v_dual_mul_f32 v7, v7, v21
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v6, v6, v20 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v22, v16, v22 :: v_dual_max_f32 v7, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v2, 0, v2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v16, v16, v23 :: v_dual_max_f32 v5, 0, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v9, v9, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v8, v8, v22 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v4, v18 :: v_dual_max_f32 v9, 0, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v28
	v_mov_b16_e32 v28.l, v5.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v6.h
	v_add3_u32 v2, v2, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_b32_e32 v16, 1, v28
	v_mov_b16_e32 v28.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v3, v3, v11, 0x7fff
	v_dual_cndmask_b32 v11, 0x3276, v30 :: v_dual_and_b32 v10, 1, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v4.h
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v28.l, v9.h
	v_add3_u32 v2, v7, v10, 0x7fff
	v_and_b32_e32 v0, 1, v13
	v_mov_b16_e32 v2.l, v6.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v8, 0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v10, 0x1054, v29, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	v_add3_u32 v0, v4, v0, 0x7fff
	v_cndmask_b32_e32 v7, v2, v3, vcc_lo
	v_add3_u32 v4, v5, v16, 0x7fff
	v_and_b32_e32 v5, 1, v28
	v_lshl_or_b32 v10, v10, 8, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v0.h
	v_cndmask_b32_e32 v2, v3, v2, vcc_lo
	v_add3_u32 v0, v9, v5, 0x7fff
	v_and_b32_e32 v5, 0x540054, v10
	v_mov_b16_e32 v15.l, v8.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v9, s6, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s6, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v5, 4, v5
	v_and_b32_e32 v6, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x5040504, v3
	v_add3_u32 v6, v8, v6, 0x7fff
	v_and_b32_e32 v8, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v6.h
	v_lshl_or_b32 v5, v8, 4, v8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, v12, s7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s7, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v8, v4, v0, vcc_lo
	v_dual_cndmask_b32 v4, v0, v4 :: v_dual_and_b32 v5, 0x7060706, v5
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v7, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v2, v7, v5
	v_perm_b32 v2, v8, v4, v3
	v_perm_b32 v3, v8, v4, v5
	v_add_lshl_u32 v4, v9, v6, 1
	buffer_store_b128 v[0:3], v4, s[4:7], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 31
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
		.amdhsa_inst_pref_size 25
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 85
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3124
; TotalNumSgprs: 33
; NumVgprs: 85
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 33
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     85
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
