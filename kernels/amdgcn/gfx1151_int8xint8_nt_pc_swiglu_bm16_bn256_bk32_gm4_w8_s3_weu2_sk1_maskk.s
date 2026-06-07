	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v45, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v44, 15, v0
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v51, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v41, 4, v45
	v_lshlrev_b32_e32 v46, 1, v44
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s33, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
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
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[42:43], null, s33, v1, v[41:42]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v43, 1, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v39, 0x17e, v43
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v47, s33, 7, v42
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s37, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s37, v46
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s37, v41
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s2, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s18, s2, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s4, s3
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s33, 31
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s29, s18, s19
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s3, 4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s35, s18, s33
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s36, s29, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s33, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s28, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s30, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s35, s37
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s6, s36, s37
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v50, v2, v46, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s4, v42
	v_add_nc_u32_e32 v2, s4, v47
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v3, s6, v42
	v_add_nc_u32_e32 v4, s6, v47
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s30
	s_and_b32 s2, s2, s30
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s37, v50
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v6, 0x80000000, v1, s2
	v_cndmask_b32_e64 v8, 0x80000000, v2, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v12, 0x80000000, v3, s2
	v_cndmask_b32_e64 v16, 0x80000000, v4, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s37, s37, 32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v21, 0x80000000, v5, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s37, v46
	v_or_b32_e32 v14, s37, v41
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v22, s37, v50
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, 32, v1
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v3, 32, v3
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v13
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s33, v14
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v36, v21, s[20:23], 0 offen
	s_mov_b32 s6, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v21, 0x80000000, v22, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v2, 32, v2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v20, 32, v4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v6, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v32, 0x80000000, v20, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v37, v21, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v1, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v2, s[24:27], 0 offen
	buffer_load_b128 v[28:31], v3, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v32, s[24:27], 0 offen
	v_lshlrev_b32_e32 v2, 4, v0
	v_bfe_i32 v1, v0, 3, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v3, v0, 6, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v38, 0xf70, v2
	v_and_b32_e32 v1, 0x90, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 0x90, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v52, v1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v53, v3, v39
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, 0, v52
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v38, 0, v53
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[8:11] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v1, v[12:15] offset:16384
	ds_store_b128 v1, v[16:19] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b16 v38, v36 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v1, v[4:7]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v38, v37 offset:33280
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[24:27] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v49, 0x160, v3
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v48, 0xe00, v2, v49
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr48
.LBB0_3:                                ; %Flow152
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s38, s5, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v49, 0x160, v3
	v_and_b32_e32 v1, 0x90, v1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v48, 0xe00, v2, v49
	v_or_b32_e32 v54, v1, v49
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v28, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v55, v48, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_xor_b32_e32 v56, 16, v54
	v_mov_b32_e32 v2, s5
	v_xor_b32_e32 v57, 16, v55
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v33, 0
	s_add_i32 s37, s37, 32
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s31, 0, 0x8200
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s37, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v58, s6, v46
	v_or_b32_e32 v59, s6, v41
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v60, s6, v50
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s35
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s6, s6, s36
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v58
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v61, s7, v42
	v_add_nc_u32_e32 v62, s7, v47
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v63, s6, v42
	v_add_nc_u32_e32 v64, s6, v47
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v58, 0x80000000, v60, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v59
	s_mov_b32 s6, s0
	s_mov_b32 s7, s4
	s_mov_b32 s4, s3
	s_mov_b32 s3, s34
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v59, 0x80000000, v61, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v134, v58, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v58, 0x80000000, v62 :: v_dual_cndmask_b32 v61, 0x80000000, v64
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v60, 0x80000000, v63, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[90:93], v59, s[24:27], 0 offen
	buffer_load_b128 v[94:97], v58, s[24:27], 0 offen
	buffer_load_b128 v[98:101], v60, s[24:27], 0 offen
	buffer_load_b128 v[102:105], v61, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v58, s6, v54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v60, s7, v55
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v62, s3, v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v59, s6, v56
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v61, s7, v57
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v63, s3, v57
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[106:109], v58
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[66:69], v60
	ds_load_b128 v[74:77], v60 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[82:85], v62
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v59
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[114:117], v62 offset:4096
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[118:121], v61
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[122:125], v63
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[126:129], v61 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[130:133], v63 offset:4096
	s_mov_b32 s34, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s39, 1
	s_mov_b32 s0, s31
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s39, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s39, 9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s3, s39, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s3, s3, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[66:69], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[106:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[114:117], v[106:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[118:121], v[110:113], v[58:65] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[74:81], v[122:125], v[110:113], v[74:81] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[126:129], v[110:113], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[82:89], v[130:133], v[110:113], v[82:89] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s1, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v10, v10, v75 :: v_dual_add_nc_u32 v135, s1, v53
	v_dual_add_f32 v9, v9, v74 :: v_dual_add_nc_u32 v136, s3, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v59 :: v_dual_add_f32 v25, v25, v58
	v_dual_add_f32 v38, v38, v61 :: v_dual_add_f32 v37, v37, v60
	v_dual_add_f32 v16, v16, v63 :: v_dual_add_f32 v15, v15, v62
	v_dual_add_f32 v30, v30, v65 :: v_dual_add_f32 v33, v33, v72
	v_dual_add_f32 v29, v29, v64 :: v_dual_add_f32 v32, v32, v67
	v_dual_add_f32 v31, v31, v66 :: v_dual_add_f32 v40, v40, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v27, v27, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v68 :: v_dual_add_f32 v24, v24, v71
	v_dual_add_f32 v23, v23, v70 :: v_dual_add_f32 v34, v34, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v11, v11, v78 :: v_dual_add_f32 v28, v28, v77
	v_dual_add_f32 v19, v19, v80 :: v_dual_add_f32 v12, v12, v79
	v_dual_add_f32 v21, v21, v82 :: v_dual_add_f32 v20, v20, v81
	v_dual_add_f32 v35, v35, v84 :: v_dual_add_f32 v22, v22, v83
	v_dual_add_f32 v13, v13, v86 :: v_dual_add_f32 v36, v36, v85
	v_dual_add_f32 v17, v17, v88 :: v_dual_add_f32 v14, v14, v87
	v_add_f32_e32 v18, v18, v89
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s1, s3, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v135, v134 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v136, v[90:93]
	s_waitcnt vmcnt(2)
	ds_store_b128 v136, v[94:97] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v136, v[98:101] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v136, v[102:105] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v51
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s31, 0, 0x8200
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	v_mov_b32_e32 v10, v9
	s_add_i32 s1, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, v10 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v11, v9
	v_dual_mov_b32 v16, v10 :: v_dual_mov_b32 v15, v9
	v_dual_mov_b32 v28, v10 :: v_dual_mov_b32 v27, v9
	v_dual_mov_b32 v38, v10 :: v_dual_mov_b32 v37, v9
	v_dual_mov_b32 v20, v10 :: v_dual_mov_b32 v19, v9
	v_dual_mov_b32 v30, v10 :: v_dual_mov_b32 v29, v9
	v_dual_mov_b32 v22, v10 :: v_dual_mov_b32 v21, v9
	v_dual_mov_b32 v32, v10 :: v_dual_mov_b32 v31, v9
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v13, v9
	v_dual_mov_b32 v24, v10 :: v_dual_mov_b32 v23, v9
	v_dual_mov_b32 v36, v10 :: v_dual_mov_b32 v35, v9
	v_dual_mov_b32 v40, v10 :: v_dual_mov_b32 v39, v9
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	v_dual_mov_b32 v34, v10 :: v_dual_mov_b32 v33, v9
.LBB0_8:                                ; %Flow153
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v42, 0, 1, s30
	v_and_b32_e32 v72, 0xf0, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v41, 0x90, 0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v46, v41, v49
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v41, v48, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v47, 16, v46
	v_add_nc_u32_e32 v1, s0, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s0, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v42
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v42, 16, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v48, s6, v41
	v_add_nc_u32_e32 v49, s6, v42
	ds_load_b128 v[64:67], v48
	ds_load_b128 v[68:71], v48 offset:4096
	ds_load_b128 v[73:76], v49
	ds_load_b128 v[77:80], v49 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	v_dual_mov_b32 v55, s11 :: v_dual_mov_b32 v52, s8
	v_dual_mov_b32 v54, s10 :: v_dual_mov_b32 v53, s9
	v_dual_mov_b32 v51, s7 :: v_dual_mov_b32 v50, s6
	v_dual_mov_b32 v49, s5 :: v_dual_mov_b32 v48, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[64:67], v[5:8], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[5:8], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[73:76], v[1:4], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[77:80], v[1:4], v[48:55] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v49 :: v_dual_add_f32 v31, v31, v48
	v_dual_add_f32 v40, v40, v51 :: v_dual_add_f32 v39, v39, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v55
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v51, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v38, v59 :: v_dual_add_f32 v37, v37, v58
	v_dual_add_f32 v16, v16, v61 :: v_dual_add_f32 v15, v15, v60
	v_dual_add_f32 v30, v30, v63 :: v_dual_add_f32 v29, v29, v62
	v_dual_add_f32 v24, v24, v53 :: v_dual_add_f32 v23, v23, v52
	v_dual_add_f32 v34, v34, v48 :: v_dual_add_f32 v33, v33, v49
	v_dual_add_f32 v26, v26, v50 :: v_dual_add_f32 v25, v25, v51
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
	v_add_nc_u32_e32 v48, s34, v41
	v_add_nc_u32_e32 v49, s34, v42
	ds_load_b128 v[64:67], v48
	ds_load_b128 v[68:71], v48 offset:4096
	ds_load_b128 v[73:76], v49
	ds_load_b128 v[77:80], v49 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v55, s11 :: v_dual_mov_b32 v52, s8
	v_dual_mov_b32 v54, s10 :: v_dual_mov_b32 v53, s9
	v_dual_mov_b32 v51, s7 :: v_dual_mov_b32 v50, s6
	v_dual_mov_b32 v49, s5 :: v_dual_mov_b32 v48, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[64:67], v[5:8], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[5:8], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[73:76], v[1:4], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[77:80], v[1:4], v[48:55] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v5, v62
	v_cvt_f32_i32_e32 v6, v63
	v_cvt_f32_i32_e32 v7, v48
	v_cvt_f32_i32_e32 v8, v49
	v_cvt_f32_i32_e32 v48, v50
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v50, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v28, v28, v2 :: v_dual_add_f32 v27, v27, v1
	v_dual_add_f32 v12, v12, v4 :: v_dual_add_f32 v11, v11, v3
	v_dual_add_f32 v20, v20, v6 :: v_dual_add_f32 v19, v19, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v52
	v_cvt_f32_i32_e32 v2, v55
	v_cvt_f32_i32_e32 v3, v54
	v_cvt_f32_i32_e32 v4, v57
	v_cvt_f32_i32_e32 v5, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v22, v22, v8 :: v_dual_add_f32 v21, v21, v7
	v_dual_add_f32 v36, v36, v49 :: v_dual_add_f32 v35, v35, v48
	v_dual_add_f32 v14, v14, v50 :: v_dual_add_f32 v13, v13, v1
	v_dual_add_f32 v18, v18, v2 :: v_dual_add_f32 v17, v17, v3
	v_dual_add_f32 v10, v10, v4 :: v_dual_add_f32 v9, v9, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v1, s31, v46
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s31, v47
	v_mov_b32_e32 v47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v46, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v2
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_cmp_ne_u32_e64 s0, 1, v46
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v66, 0
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
	v_dual_mov_b32 v69, s11 :: v_dual_add_nc_u32 v46, s3, v41
	v_dual_mov_b32 v67, s9 :: v_dual_add_nc_u32 v60, s3, v42
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[48:51], v46
	ds_load_b128 v[52:55], v46 offset:4096
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[81:84], v60 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v68, s10 :: v_dual_mov_b32 v65, s7
	v_dual_mov_b32 v66, s8 :: v_dual_mov_b32 v63, s5
	v_mov_b32_e32 v64, s6
	v_mov_b32_e32 v62, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[48:51], v[5:8], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[52:55], v[5:8], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[56:59], v[1:4], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[81:84], v[1:4], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v51, v76
	v_cvt_f32_i32_e32 v46, v77
	v_cvt_f32_i32_e32 v49, v78
	v_cvt_f32_i32_e32 v50, v79
	v_cvt_f32_i32_e32 v55, v80
	v_cvt_f32_i32_e32 v53, v62
	v_cvt_f32_i32_e32 v60, v63
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v58, v66
	v_cvt_f32_i32_e32 v63, v67
	v_cvt_f32_i32_e32 v64, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v52, v73
	v_cvt_f32_i32_e32 v54, v74
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v83, 0
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
	v_add_nc_u32_e32 v41, s1, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v87, s11 :: v_dual_add_nc_u32 v42, s1, v42
	v_mov_b32_e32 v86, s10
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[67:70], v41
	ds_load_b128 v[73:76], v41 offset:4096
	ds_load_b128 v[96:99], v42
	ds_load_b128 v[100:103], v42 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v85, s9 :: v_dual_mov_b32 v84, s8
	v_dual_mov_b32 v83, s7 :: v_dual_mov_b32 v82, s6
	v_dual_mov_b32 v81, s5 :: v_dual_mov_b32 v80, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[67:70], v[5:8], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[73:76], v[5:8], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[96:99], v[1:4], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[100:103], v[1:4], v[80:87] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v89
	v_cvt_f32_i32_e32 v69, v90
	v_cvt_f32_i32_e32 v75, v91
	v_cvt_f32_i32_e32 v67, v92
	v_cvt_f32_i32_e32 v73, v93
	v_cvt_f32_i32_e32 v74, v94
	v_cvt_f32_i32_e32 v77, v95
	v_cvt_f32_i32_e32 v76, v80
	v_cvt_f32_i32_e32 v79, v81
	v_cvt_f32_i32_e32 v80, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v78, v84
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v84, v87
.LBB0_16:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, s28, v44
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s18, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v38, v51 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_add_f32 v61, v25, v52 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s12
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v3, 5, v45
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v6, v1, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v72, 2, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v2, s[20:23], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v59, v26, v54 :: v_dual_and_b32 v2, 28, v43
	v_add_f32_e32 v54, v15, v46
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v2, v4, v3, v2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v3, s29, v0, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v57, v37, v48 :: v_dual_add_f32 v52, v16, v49
	v_dual_add_f32 v49, v30, v55 :: v_dual_add_f32 v48, v31, v53
	v_dual_add_f32 v51, v29, v50 :: v_dual_add_f32 v70, v10, v68
	v_dual_add_f32 v43, v40, v65 :: v_dual_add_f32 v42, v23, v58
	v_dual_add_f32 v45, v39, v62 :: v_dual_add_f32 v8, v33, v64
	v_add_f32_e32 v41, v24, v63
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v69, v27, v69 :: v_dual_add_f32 v62, v22, v79
	v_dual_add_f32 v67, v11, v67 :: v_dual_add_f32 v64, v20, v77
	v_dual_add_f32 v65, v19, v74 :: v_dual_add_f32 v58, v36, v83
	v_add_f32_e32 v63, v21, v76
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v72, 1, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v72, 0x5410
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v51, s2
	v_cndmask_b32_e64 v30, v30, v49, s2
	v_cndmask_b32_e64 v49, v19, v65, s2
	v_cndmask_b32_e64 v51, v20, v64, s2
	v_cndmask_b32_e64 v31, v31, v48, s2
	v_cndmask_b32_e64 v48, v22, v62, s2
	v_cndmask_b32_e64 v61, v25, v61, s2
	v_cndmask_b32_e64 v59, v26, v59, s2
	v_cndmask_b32_e64 v42, v23, v42, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v44, s19, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v34, v66 :: v_dual_add_f32 v68, v28, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v71, v9, v47 :: v_dual_add_f32 v66, v12, v73
	v_dual_add_f32 v53, v14, v81 :: v_dual_add_f32 v50, v17, v82
	v_dual_add_f32 v55, v13, v78 :: v_dual_and_b32 v0, 16, v0
	v_add_f32_e32 v47, v18, v84
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v10, v70, s2
	v_cndmask_b32_e64 v37, v37, v57, s2
	v_cndmask_b32_e64 v38, v38, v56, s2
	v_cndmask_b32_e64 v54, v15, v54, s2
	v_cndmask_b32_e64 v52, v16, v52, s2
	v_cndmask_b32_e64 v57, v11, v67, s2
	v_cndmask_b32_e64 v66, v12, v66, s2
	v_cndmask_b32_e64 v39, v39, v45, s2
	v_cndmask_b32_e64 v45, v13, v55, s2
	v_cndmask_b32_e64 v53, v14, v53, s2
	v_cndmask_b32_e64 v8, v33, v8, s2
	v_cndmask_b32_e64 v7, v34, v7, s2
	v_cndmask_b32_e64 v33, v17, v50, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v34, s28, s18, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v69, s2
	v_cndmask_b32_e64 v40, v40, v43, s2
	v_cndmask_b32_e64 v28, v28, v68, s2
	v_cndmask_b32_e64 v36, v36, v58, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v5, v34, v5, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v9, v71, s2
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v32, v60
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v60, v35, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v24, v41, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v32, v32, v46, s2
	v_cndmask_b32_e64 v46, v21, v63, s2
	v_cndmask_b32_e64 v35, v35, v60, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v18, v47, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[23:26], v4 offset:16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v73, 0x7632
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[10:13], v4 offset:512
	ds_load_b128 v[14:17], v4 offset:528
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v74.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v47.h, v1.h
	v_mov_b16_e32 v43.h, v1.h
	v_mov_b16_e32 v9.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v18, v19, v6
	v_mul_f32_e32 v19, v20, v6
	v_mul_f32_e32 v20, v21, v6
	v_mul_f32_e32 v21, v22, v6
	v_mul_f32_e32 v65, v17, v6
	v_mul_f32_e32 v34, v11, v6
	v_mul_f32_e32 v50, v12, v6
	v_mul_f32_e32 v58, v14, v6
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v38, v38, v21
	v_mul_f32_e32 v7, v7, v65
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v23, v6 :: v_dual_lshlrev_b32 v3, 16, v3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v37, v37, v20
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v24, v6
	v_mul_f32_e32 v24, v25, v6
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v59, v19 :: v_dual_mul_f32 v3, v61, v18
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[18:21], v4 offset:512
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v25, v26, v6
	v_dual_mul_f32 v26, v10, v6 :: v_dual_mul_f32 v29, v29, v24
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v54, v54, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v30, v25
	v_mul_f32_e32 v52, v52, v23
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[22:25], v4 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v19, v19, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v60, v15, v6 :: v_dual_mul_f32 v19, v48, v19
	v_mul_f32_e32 v63, v16, v6
	v_mul_f32_e32 v55, v13, v6
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[14:17], v4 offset:16
	v_mul_f32_e32 v21, v21, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v31, v26 :: v_dual_mul_f32 v21, v36, v21
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v13, v13, v6
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v15, v15, v6
	v_mul_f32_e32 v16, v16, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v28, v13
	v_mul_f32_e32 v15, v66, v15
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v6
	v_mul_f32_e32 v12, v12, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v31, v39, v50 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v15
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v17, v51, v17 :: v_dual_mul_f32 v24, v24, v6
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v11, v11, v6
	v_mul_f32_e32 v14, v14, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v24, v33, v24 :: v_dual_mul_f32 v11, v70, v11
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v10, v10, v6 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v13
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v27, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v23, v23, v6 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v24
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v33
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v32, v32, v34 :: v_dual_mul_f32 v23, v53, v23
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v18, v18, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v33, 0, 0x42800000, s1
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v22, v22, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v12
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v34, v41, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v20, v20, v6 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v13
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v45, v22
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v11
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v39, v42, v58 :: v_dual_mul_f32 v20, v35, v20
	v_mul_f32_e32 v8, v8, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v26, v40, v55 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v16, v49, v16 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v12
	v_exp_f32_e32 v27, v27
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v45
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v49
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v41
	v_cndmask_b32_e64 v45, 0, 0x42800000, s10
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v6, v25, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s11
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v10, v71, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v27, v53
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v46, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v46, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v23
	v_mul_f32_e32 v25, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v46
	v_mul_f32_e32 v40, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v46, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v15
	v_exp_f32_e32 v41, v41
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	v_exp_f32_e32 v36, v36
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s3
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v41, v41, v61
	v_mul_f32_e32 v42, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v50
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v21
	v_ldexp_f32 v36, v36, v59
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v42
	v_ldexp_f32 v25, v25, v55
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v57, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v42, 0, 0x42800000, s8
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v14
	v_ldexp_f32 v33, v33, v57
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s11
	v_exp_f32_e32 v28, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v27, v27, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s14
	v_ldexp_f32 v45, v45, v69
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v35, 0, 0x42800000, s4
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v33, v33, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v22 :: v_dual_add_f32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v95, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v49, v70
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	v_exp_f32_e32 v35, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v93, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v48
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v24 :: v_dual_add_f32 v49, 1.0, v49
	v_exp_f32_e32 v42, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v41, v41, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v111, -v59, v95, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v60
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v6, v44, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v19
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_fmac_f32 v95, v111, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v44
	v_cndmask_b32_e64 v48, 0, 0x42800000, s12
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v99, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v51
	v_cndmask_b32_e64 v44, 0, 0x42800000, s7
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v109, -v53, v93, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s13
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s13
	v_ldexp_f32 v42, v42, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, null, v25, v25, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v6
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v40, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v93, v109, v93
	v_div_scale_f32 v61, null, v28, v28, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v49, v49, v23
	v_rcp_f32_e32 v94, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v44, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v36, v36, v15
	v_fma_f32 v115, -v70, v99, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v51, v51, v75
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v97, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v96, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v105, v85
	v_fmac_f32_e32 v99, v115, v99
	v_div_scale_f32 v79, null, v42, v42, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v113, -v65, v97, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v48, v48, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v35, v35, v14
	v_div_scale_f32 v55, vcc_lo, v11, v27, v11
	v_rcp_f32_e32 v102, v79
	v_fma_f32 v110, -v57, v94, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_fmac_f32 v97, v113, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, s3, v15, v36, v15
	v_fma_f32 v112, -v61, v96, 1.0
	v_rcp_f32_e32 v98, v68
	v_fma_f32 v121, -v85, v105, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v94, v110, v94 :: v_dual_mul_f32 v109, v55, v93
	v_div_scale_f32 v58, s0, v10, v25, v10
	v_dual_fmac_f32 v96, v112, v96 :: v_dual_mul_f32 v113, v66, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, null, v51, v51, v6
	v_div_scale_f32 v75, null, v40, v40, v16
	v_fmac_f32_e32 v105, v121, v105
	v_div_scale_f32 v87, null, v48, v48, v22
	v_fma_f32 v118, -v79, v102, 1.0
	v_fma_f32 v125, -v53, v109, v55
	v_fma_f32 v129, -v65, v113, v66
	v_mul_f32_e32 v110, v58, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v107, v89
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, s1, v13, v33, v13
	v_rcp_f32_e32 v100, v75
	v_rcp_f32_e32 v106, v87
	v_fma_f32 v114, -v68, v98, 1.0
	v_dual_fmac_f32 v102, v118, v102 :: v_dual_fmac_f32 v109, v125, v93
	v_fmac_f32_e32 v113, v129, v97
	v_fma_f32 v126, -v57, v110, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v50, v50, v76
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, null, v44, v44, v19
	v_dual_fmac_f32 v98, v114, v98 :: v_dual_mul_f32 v111, v60, v95
	v_fma_f32 v53, -v53, v109, v55
	v_div_scale_f32 v63, s2, v12, v28, v12
	v_fmac_f32_e32 v110, v126, v94
	v_div_scale_f32 v81, null, v46, v46, v21
	v_fma_f32 v123, -v89, v107, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, s5, v17, v41, v17
	v_div_scale_f32 v83, null, v45, v45, v20
	v_rcp_f32_e32 v101, v77
	v_fma_f32 v116, -v75, v100, 1.0
	v_fma_f32 v122, -v87, v106, 1.0
	v_fma_f32 v127, -v59, v111, v60
	v_div_scale_f32 v69, s4, v14, v35, v14
	v_div_fmas_f32 v53, v53, v93, v109
	v_div_scale_f32 v86, s11, v23, v49, v23
	v_mul_f32_e32 v112, v63, v96
	v_fma_f32 v55, -v57, v110, v58
	v_rcp_f32_e32 v103, v81
	v_fmac_f32_e32 v107, v123, v107
	v_div_scale_f32 v91, null, v50, v50, v24
	v_div_scale_f32 v76, s6, v16, v40, v16
	v_rcp_f32_e32 v104, v83
	v_dual_fmac_f32 v100, v116, v100 :: v_dual_mul_f32 v115, v71, v99
	v_dual_fmac_f32 v106, v122, v106 :: v_dual_fmac_f32 v111, v127, v95
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, s13, v6, v51, v6
	v_mul_f32_e32 v114, v69, v98
	v_div_fixup_f32 v11, v53, v27, v11
	v_mul_f32_e32 v121, v86, v105
	v_fma_f32 v128, -v61, v112, v63
	v_div_fmas_f32 v55, v55, v94, v110
	v_rcp_f32_e32 v108, v91
	v_fma_f32 v117, -v77, v101, 1.0
	v_fma_f32 v131, -v70, v115, v71
	v_mul_f32_e32 v116, v76, v100
	v_fma_f32 v57, -v59, v111, v60
	v_mul_f32_e32 v123, v90, v107
	v_fma_f32 v130, -v68, v114, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v55, v25, v10
	v_fmac_f32_e32 v112, v128, v96
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v119, -v81, v103, 1.0
	v_fma_f32 v120, -v83, v104, 1.0
	v_fmac_f32_e32 v101, v117, v101
	v_div_scale_f32 v78, s7, v19, v44, v19
	v_fmac_f32_e32 v115, v131, v99
	v_fma_f32 v132, -v75, v116, v76
	v_div_fmas_f32 v57, v57, v95, v111
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v114, v130, v98
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v61, v112, v63
	v_fma_f32 v124, -v91, v108, 1.0
	v_fmac_f32_e32 v103, v119, v103
	v_div_scale_f32 v82, s9, v21, v46, v21
	v_fma_f32 v59, -v65, v113, v66
	v_div_scale_f32 v80, s8, v18, v42, v18
	v_dual_fmac_f32 v104, v120, v104 :: v_dual_mul_f32 v117, v78, v101
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v57, v33, v13
	v_fmac_f32_e32 v116, v132, v100
	v_fma_f32 v60, -v68, v114, v69
	v_div_fmas_f32 v27, v58, v96, v112
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v61, -v70, v115, v71
	v_div_scale_f32 v84, s10, v20, v45, v20
	v_dual_fmac_f32 v108, v124, v108 :: v_dual_mul_f32 v119, v82, v103
	v_div_fmas_f32 v25, v59, v97, v113
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v133, -v77, v117, v78
	v_dual_mul_f32 v118, v80, v102 :: v_dual_mul_f32 v13, v38, v13
	v_fma_f32 v63, -v75, v116, v76
	v_div_fmas_f32 v11, v60, v98, v114
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v135, -v81, v119, v82
	v_div_fmas_f32 v10, v61, v99, v115
	s_mov_b32 vcc_lo, s6
	v_dual_mul_f32 v120, v84, v104 :: v_dual_fmac_f32 v117, v133, v101
	v_fma_f32 v134, -v79, v118, v80
	v_div_fixup_f32 v15, v25, v36, v15
	v_div_fmas_f32 v25, v63, v100, v116
	v_fmac_f32_e32 v119, v135, v103
	v_fma_f32 v136, -v83, v120, v84
	v_div_scale_f32 v88, s12, v22, v48, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v16, v25, v40, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v118, v134, v102
	v_fma_f32 v137, -v85, v121, v86
	v_fma_f32 v65, -v77, v117, v78
	v_div_fixup_f32 v11, v11, v35, v14
	v_fmac_f32_e32 v120, v136, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v2, v2
	v_add3_u32 v2, v2, v25, 0x7fff
	v_and_b32_e32 v25, 1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v79, v118, v80
	v_dual_mul_f32 v122, v88, v106 :: v_dual_fmac_f32 v121, v137, v105
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v68, -v81, v119, v82
	v_div_scale_f32 v92, s14, v24, v50, v24
	v_div_fmas_f32 v14, v65, v101, v117
	s_mov_b32 vcc_lo, s8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v54, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v83, v120, v84
	v_div_fixup_f32 v10, v10, v41, v17
	v_div_fmas_f32 v17, v66, v102, v118
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v70, -v85, v121, v86
	v_div_fixup_f32 v12, v27, v28, v12
	v_div_fmas_f32 v27, v68, v103, v119
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v139, -v89, v123, v90
	v_mul_f32_e32 v124, v92, v108
	v_div_fmas_f32 v28, v69, v104, v120
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v138, -v87, v122, v88
	v_div_fixup_f32 v17, v17, v42, v18
	v_div_fmas_f32 v18, v70, v105, v121
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v11.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v37, v12 :: v_dual_fmac_f32 v123, v139, v107
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v140, -v91, v124, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v3.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v18, v49, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v67
	v_mov_b16_e32 v56.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v122, v138, v106
	v_fmac_f32_e32 v124, v140, v108
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v52, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v14, v44, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v27, v46, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v87, v122, v88
	v_fma_f32 v75, -v89, v123, v90
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v16, v29, v16 :: v_dual_mul_f32 v21, v26, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v15.h
	v_add3_u32 v3, v3, v19, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v28, v45, v20
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v30, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v71, v106, v122
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v16.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v75, v107, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v1
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v31, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v10.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v32, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v91, v124, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v12, v12, v27, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v29, v48, v22
	v_div_fixup_f32 v6, v17, v51, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v64
	v_add3_u32 v11, v11, v23, 0x7fff
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v14.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v13, v13
	v_cmp_o_f32_e64 s4, v15, v15
	v_add3_u32 v13, v13, v25, 0x7fff
	v_add3_u32 v15, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v76, v108, v124
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v34, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s3
	v_mov_b16_e32 v43.l, v3.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v16, v17, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v11.h, s5
	v_add3_u32 v10, v10, v19, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v21.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v39, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_mov_b16_e32 v62.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v25, v50, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_eq_u32_e64 s4, 0, v0
	v_and_b32_e32 v0, 1, v43
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s7
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s6
	v_add3_u32 v10, v14, v11, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v9.l, v12.h
	v_mov_b16_e32 v1.l, v18.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s0
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v22, 1, v62
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v0, v3, v0, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v8, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v4, v4
	v_add3_u32 v4, v4, v22, 0x7fff
	v_cndmask_b32_e64 v14, v15, v2, s4
	v_cndmask_b32_e64 v2, v2, v15, s4
	v_cndmask_b32_e64 v15, 0x1054, v72, s4
	v_and_b32_e32 v1, 1, v1
	v_mov_b16_e32 v47.l, v8.h
	v_cndmask_b32_e64 v16, 0x3276, v73, s4
	v_cmp_o_f32_e64 s1, v21, v21
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s0
	v_add3_u32 v4, v21, v11, 0x7fff
	v_and_b32_e32 v11, 1, v47
	v_cndmask_b32_e64 v17, v7, v13, s4
	v_cndmask_b32_e64 v7, v13, v7, s4
	v_lshl_or_b32 v13, v15, 8, v15
	v_lshl_or_b32 v15, v16, 8, v16
	v_cmp_o_f32_e64 s3, v18, v18
	v_cmp_o_f32_e64 s5, v12, v12
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s6, v8, v8
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s1
	v_add3_u32 v4, v18, v10, 0x7fff
	v_add3_u32 v8, v8, v11, 0x7fff
	v_and_b32_e32 v10, 0x540054, v13
	v_add3_u32 v1, v6, v1, 0x7fff
	v_and_b32_e32 v11, 0x760076, v15
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s6
	v_lshl_or_b32 v6, v10, 4, v10
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s8
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v9, v4, v3, s4
	v_cndmask_b32_e64 v3, v3, v4, s4
	v_and_b32_e32 v4, 0x5040504, v6
	v_cndmask_b32_e64 v6, v0, v1, s4
	v_permlanex16_b32 v2, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x7060706, v8
	v_cndmask_b32_e64 v11, v1, v0, s4
	v_permlanex16_b32 v8, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v14, v4
	v_perm_b32 v1, v2, v14, v10
	v_perm_b32 v2, v7, v17, v4
	v_perm_b32 v3, v7, v17, v10
	v_perm_b32 v6, v8, v9, v4
	v_perm_b32 v7, v8, v9, v10
	v_perm_b32 v8, v12, v11, v4
	v_perm_b32 v9, v12, v11, v10
	s_clause 0x1
	buffer_store_b128 v[0:3], v5, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v5, s[16:19], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 141
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8100
; TotalNumSgprs: 42
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
