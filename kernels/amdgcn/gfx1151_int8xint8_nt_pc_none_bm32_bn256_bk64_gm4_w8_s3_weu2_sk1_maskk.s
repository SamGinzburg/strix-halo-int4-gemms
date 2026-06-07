	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s28, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v42, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v45, 1, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v9, 48, v43
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v54, 56, v42
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v44, 15, v0
	v_lshlrev_b32_e32 v58, 5, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
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
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[10:11], null, s28, v2, v[9:10]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[11:12], null, s28, v4, v[9:10]
	v_lshl_add_u32 v55, s28, 6, v10
	v_lshl_add_u32 v56, s28, 7, v10
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16 is_stmt 1              ; generate_amdgcn.py:293:16
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
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s28, v3
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
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s30, v54
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s30, v9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s24, s3, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s28, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s29, s24, s28
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s3, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s28, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s26, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s29, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v57, v1, v54, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s4, v10
	v_add_nc_u32_e32 v2, s4, v55
	v_add_nc_u32_e32 v3, s4, v56
	v_add_nc_u32_e32 v4, s4, v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s27
	s_and_b32 s2, s2, s27
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s30, v57
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v6, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	v_cndmask_b32_e64 v8, 0x80000000, v4, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s30, s30, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v25, 0x80000000, v5, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v16, s30, v54
	v_or_b32_e32 v17, s30, v9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v26, s30, v57
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v27, s4, v55
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v16
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s28, v17
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v24, 64, v4
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v6, s[20:23], 0 offen
	buffer_load_b128 v[12:15], v2, s[20:23], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v28, s4, v56
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v7, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v8, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[7:8], v25, s[16:19], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v26, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_mov_b32 s4, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v29, 0x80000000, v27, vcc_lo
	v_dual_cndmask_b32 v36, 0x80000000, v24 :: v_dual_add_nc_u32 v1, 64, v1
	v_cndmask_b32_e32 v32, 0x80000000, v28, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[40:41], v2, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[24:27], v1, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v29, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v32, s[20:23], 0 offen
	buffer_load_b128 v[36:39], v36, s[20:23], 0 offen
	v_and_b32_e32 v1, 48, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v59, v43, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v60, v42, v2
	v_and_b32_e32 v2, 48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, 0, v59
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v42, 0, v60
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[12:15] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[16:19] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[20:23] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v42, v[7:8] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v1, v[3:6]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v42, v[40:41] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[24:27] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[28:31] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[32:35] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[36:39] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v46, v44, 6, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v47, 16, v46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v50, 0x1c00, v1, v46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v49, 32, v46
	v_xor_b32_e32 v48, 48, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v51, 16, v50
	v_xor_b32_e32 v53, 32, v50
	v_xor_b32_e32 v52, 48, v50
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v22, 0
	s_add_i32 s3, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr52
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v46, v44, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s31, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_and_or_b32 v50, 0x1c00, v58, v46
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v1, s4
	v_xor_b32_e32 v47, 16, v46
	v_xor_b32_e32 v49, 32, v46
	v_xor_b32_e32 v48, 48, v46
	v_xor_b32_e32 v51, 16, v50
	v_xor_b32_e32 v53, 32, v50
	v_xor_b32_e32 v52, 48, v50
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s30, s30, 64
	s_add_i32 s3, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s31, s31, -3
	s_mov_b32 s33, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s30, s6
	v_or_b32_e32 v61, s6, v54
	v_or_b32_e32 v62, s6, v9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v63, s6, v57
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s29
	s_mov_b32 s6, s3
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v61
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v64, s7, v10
	v_add_nc_u32_e32 v65, s7, v55
	v_add_nc_u32_e32 v66, s7, v56
	v_add_nc_u32_e32 v67, s7, v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v61, 0x80000000, v63, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v62
	s_mov_b32 s3, s0
	s_mov_b32 s0, s4
	s_mov_b32 s4, s1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v68, s0, v52
	v_cndmask_b32_e32 v62, 0x80000000, v64, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[165:166], v61, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v61, 0x80000000, v65 :: v_dual_cndmask_b32 v64, 0x80000000, v67
	v_cndmask_b32_e32 v63, 0x80000000, v66, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[93:96], v62, s[20:23], 0 offen
	buffer_load_b128 v[97:100], v61, s[20:23], 0 offen
	buffer_load_b128 v[101:104], v63, s[20:23], 0 offen
	buffer_load_b128 v[105:108], v64, s[20:23], 0 offen
	v_add_nc_u32_e32 v65, s0, v50
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v61, s6, v46
	v_add_nc_u32_e32 v62, s6, v47
	v_add_nc_u32_e32 v63, s6, v49
	v_add_nc_u32_e32 v64, s6, v48
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v66, s0, v51
	v_add_nc_u32_e32 v67, s0, v53
	ds_load_b128 v[85:88], v65
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[77:80], v61
	ds_load_b128 v[109:112], v61 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[113:116], v65 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[117:120], v62
	ds_load_b128 v[121:124], v62 offset:1024
	ds_load_b128 v[125:128], v63
	ds_load_b128 v[129:132], v63 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[133:136], v66
	ds_load_b128 v[137:140], v66 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[141:144], v64
	ds_load_b128 v[145:148], v64 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[149:152], v67
	ds_load_b128 v[153:156], v67 offset:8192
	ds_load_b128 v[157:160], v68
	ds_load_b128 v[161:164], v68 offset:8192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s33, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s33, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[85:88], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[113:116], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[113:116], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[133:136], v[117:120], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[137:140], v[117:120], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[133:136], v[121:124], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[137:140], v[121:124], v[85:92] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s33, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[149:152], v[125:128], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[153:156], v[125:128], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[149:152], v[129:132], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[153:156], v[129:132], v[85:92] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s1, s33, 14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[157:160], v[141:144], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[161:164], v[141:144], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[157:160], v[145:148], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[161:164], v[145:148], v[85:92] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s1, s1, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v28, v28, v77 :: v_dual_add_nc_u32 v167, s7, v60
	v_dual_add_f32 v33, v33, v72 :: v_dual_add_nc_u32 v168, s1, v59
	v_dual_add_f32 v22, v22, v61 :: v_dual_add_f32 v43, v43, v62
	v_dual_add_f32 v42, v42, v63 :: v_dual_add_f32 v41, v41, v64
	v_dual_add_f32 v40, v40, v65 :: v_dual_add_f32 v39, v39, v66
	v_dual_add_f32 v38, v38, v67 :: v_dual_add_f32 v37, v37, v68
	v_dual_add_f32 v36, v36, v69 :: v_dual_add_f32 v35, v35, v70
	v_add_f32_e32 v34, v34, v71
	v_dual_add_f32 v32, v32, v73 :: v_dual_add_f32 v31, v31, v74
	v_dual_add_f32 v30, v30, v75 :: v_dual_add_f32 v29, v29, v76
	v_dual_add_f32 v26, v26, v79 :: v_dual_add_f32 v27, v27, v78
	v_dual_add_f32 v24, v24, v81 :: v_dual_add_f32 v25, v25, v80
	v_add_f32_e32 v18, v18, v86
	v_dual_add_f32 v23, v23, v82 :: v_dual_add_f32 v20, v20, v84
	v_dual_add_f32 v21, v21, v83 :: v_dual_add_f32 v16, v16, v88
	v_dual_add_f32 v19, v19, v85 :: v_dual_add_f32 v14, v14, v90
	v_dual_add_f32 v17, v17, v87 :: v_dual_add_f32 v12, v12, v92
	v_add_f32_e32 v15, v15, v89
	v_add_f32_e32 v13, v13, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s0, s7, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s31
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v167, v[165:166] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v168, v[93:96]
	s_waitcnt vmcnt(2)
	ds_store_b128 v168, v[97:100] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v168, v[101:104] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v168, v[105:108] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v58
.LBB0_7:                                ; %._crit_edge
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v10, s4, v53
	v_add_nc_u32_e32 v2, s4, v51
	v_add_nc_u32_e32 v11, s4, v52
	v_add_nc_u32_e32 v3, s4, v50
	s_mov_b32 s4, 0
	ds_load_b128 v[78:81], v10
	ds_load_b128 v[82:85], v2 offset:8192
	ds_load_b128 v[86:89], v2
	ds_load_b128 v[90:93], v3 offset:8192
	ds_load_b128 v[94:97], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s3, v46
	v_add_nc_u32_e32 v2, s3, v47
	ds_load_b128 v[98:101], v4 offset:1024
	ds_load_b128 v[70:73], v4
	v_add_nc_u32_e32 v54, s3, v49
	ds_load_b128 v[102:105], v2 offset:1024
	ds_load_b128 v[106:109], v2
	v_add_nc_u32_e32 v62, s3, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v2, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[114:117], v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s5 :: v_dual_mov_b32 v4, s6
	v_dual_mov_b32 v5, s7 :: v_dual_mov_b32 v6, s8
	v_dual_mov_b32 v7, s9 :: v_dual_mov_b32 v8, s10
	v_mov_b32_e32 v9, s11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[118:121], v62
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[122:125], v10 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v54 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[94:97], v[70:73], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[86:89], v[106:109], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[110:113], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[114:117], v[118:121], v[54:61] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v55, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v57
	v_cvt_f32_i32_e32 v57, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v41, v41, v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[130:133], v11 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[134:137], v62 offset:1024
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[62:69], v[90:93], v[70:73], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[98:101], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[90:93], v[98:101], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[82:85], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v56
	v_wmma_i32_16x16x16_iu8 v[70:77], v[86:89], v[102:105], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v60
	v_wmma_i32_16x16x16_iu8 v[2:9], v[82:85], v[102:105], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[122:125], v[110:113], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[126:129], v[70:77] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[2:9], v[122:125], v[126:129], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[130:133], v[118:121], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[114:117], v[134:137], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[130:133], v[134:137], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v62
	v_cvt_f32_i32_e32 v55, v64
	v_cvt_f32_i32_e32 v56, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v57, v66
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v70
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v68
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v10 :: v_dual_add_f32 v17, v17, v4
	v_dual_add_f32 v24, v24, v55 :: v_dual_add_f32 v19, v19, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v16, v16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v18, v18, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v25, v25, v11
	v_add_f32_e32 v23, v23, v56
	v_dual_add_f32 v21, v21, v57 :: v_dual_add_f32 v20, v20, v10
	v_add_f32_e32 v13, v13, v4
	v_dual_add_f32 v15, v15, v2 :: v_dual_add_f32 v14, v14, v3
	v_add_f32_e32 v12, v12, v5
	v_add_f32_e32 v22, v22, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
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
	v_add_nc_u32_e32 v2, s1, v53
	v_add_nc_u32_e32 v3, s1, v51
	v_add_nc_u32_e32 v5, s1, v50
	ds_load_b128 v[70:73], v2 offset:8192
	ds_load_b128 v[74:77], v2
	ds_load_b128 v[78:81], v3 offset:8192
	ds_load_b128 v[82:85], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s0, v46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[86:89], v5 offset:8192
	ds_load_b128 v[90:93], v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s0, v47
	ds_load_b128 v[94:97], v2 offset:1024
	ds_load_b128 v[62:65], v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v4, s1, v52
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s0, v49
	v_add_nc_u32_e32 v2, s0, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v53, s11 :: v_dual_mov_b32 v46, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[106:109], v5 offset:1024
	ds_load_b128 v[110:113], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v48, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[98:101], v3 offset:1024
	ds_load_b128 v[102:105], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s10 :: v_dual_mov_b32 v51, s9
	v_dual_mov_b32 v50, s8 :: v_dual_mov_b32 v49, s7
	v_mov_b32_e32 v47, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[114:117], v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[118:121], v4
	ds_load_b128 v[122:125], v4 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v2 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[90:93], v[62:65], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[86:89], v[62:65], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[90:93], v[94:97], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[86:89], v[94:97], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[82:85], v[110:113], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[110:113], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[82:85], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[78:81], v[106:109], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[74:77], v[102:105], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[70:73], v[102:105], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[74:77], v[98:101], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[98:101], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[118:121], v[114:117], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[122:125], v[114:117], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[118:121], v[126:129], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[122:125], v[126:129], v[46:53] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v56, v58
	v_cvt_f32_i32_e32 v57, v59
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v63, v65
	v_cvt_f32_i32_e32 v64, v66
	v_cvt_f32_i32_e32 v65, v67
	v_cvt_f32_i32_e32 v66, v68
	v_cvt_f32_i32_e32 v67, v69
	v_cvt_f32_i32_e32 v68, v46
	v_cvt_f32_i32_e32 v69, v47
	v_cvt_f32_i32_e32 v70, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v72, v50
	v_cvt_f32_i32_e32 v73, v51
	v_cvt_f32_i32_e32 v74, v52
	v_cvt_f32_i32_e32 v75, v53
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v46, s26, v44
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v47, s24, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v43, v3 :: v_dual_lshlrev_b32 v46, 1, v46
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s28, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v22, v2 :: v_dual_lshlrev_b32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v48, 32, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v40, v6 :: v_dual_and_b32 v49, 0xf0, v0
	v_dual_add_f32 v51, v33, v55 :: v_dual_add_f32 v52, v32, v56
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v31, v57
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v55, v29, v59 :: v_dual_add_f32 v56, v28, v60
	v_add_f32_e32 v57, v27, v61
	v_dual_add_f32 v59, v25, v63 :: v_dual_add_f32 v60, v24, v64
	v_add_f32_e32 v61, v23, v65
	v_dual_add_f32 v63, v20, v67 :: v_dual_add_f32 v64, v19, v68
	v_add_f32_e32 v65, v18, v69
	v_dual_add_f32 v67, v16, v71 :: v_dual_add_f32 v68, v15, v72
	v_add_f32_e32 v69, v14, v73
	v_dual_add_f32 v71, v12, v75 :: v_dual_and_b32 v72, 16, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v45, 28, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v73, 0x5410
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v0, v49, 2, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v42, v4 :: v_dual_add_f32 v5, v41, v5
	v_dual_add_f32 v7, v39, v7 :: v_dual_add_f32 v8, v38, v8
	v_dual_add_f32 v11, v35, v11 :: v_dual_add_f32 v50, v34, v54
	v_add_f32_e32 v54, v30, v58
	v_add_f32_e32 v58, v26, v62
	v_add_f32_e32 v62, v21, v66
	v_add_f32_e32 v66, v17, v70
	v_add_f32_e32 v70, v13, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v74, 0x7632 :: v_dual_add_f32 v9, v37, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v10, v36, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v2, s2
	v_cndmask_b32_e64 v43, v43, v3, s2
	v_cndmask_b32_e64 v42, v42, v4, s2
	v_cndmask_b32_e64 v41, v41, v5, s2
	v_cndmask_b32_e64 v40, v40, v6, s2
	v_cndmask_b32_e64 v39, v39, v7, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v75, 1, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v8, s2
	v_cndmask_b32_e64 v37, v37, v9, s2
	v_cndmask_b32_e64 v36, v36, v10, s2
	v_cndmask_b32_e64 v35, v35, v11, s2
	v_cndmask_b32_e64 v34, v34, v50, s2
	v_cndmask_b32_e64 v33, v33, v51, s2
	v_cndmask_b32_e64 v50, v15, v68, s2
	v_cndmask_b32_e64 v51, v14, v69, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v44, s25, v44
	s_mul_i32 s26, s26, s25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v52, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v52, s26, s24, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v53, s2
	v_cndmask_b32_e64 v26, v26, v58, s2
	v_cndmask_b32_e64 v29, v29, v55, s2
	v_cndmask_b32_e64 v30, v30, v54, s2
	v_cndmask_b32_e64 v27, v27, v57, s2
	v_cndmask_b32_e64 v24, v24, v60, s2
	v_cndmask_b32_e64 v23, v23, v61, s2
	v_cndmask_b32_e64 v21, v21, v62, s2
	v_cndmask_b32_e64 v18, v18, v65, s2
	v_cndmask_b32_e64 v13, v13, v70, s2
	v_cndmask_b32_e64 v20, v20, v63, s2
	v_cndmask_b32_e64 v19, v19, v64, s2
	v_cndmask_b32_e64 v28, v28, v56, s2
	v_cndmask_b32_e64 v25, v25, v59, s2
	v_cndmask_b32_e64 v12, v12, v71, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s38, s30
	s_mov_b32 s33, 0x76543210
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, s31
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v1, 32, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v0, v1, v45
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v47
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v45, v49, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v17, v66, s2
	v_cndmask_b32_e64 v49, v16, v67, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v45
	ds_load_b128 v[4:7], v45 offset:16
	ds_load_b128 v[8:11], v45 offset:512
	ds_load_b128 v[14:17], v45 offset:528
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v45, s25, 4, v44
	v_add_lshl_u32 v44, v52, v44, 1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v45, v52, v45, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v52, v0, v46
	v_mul_f32_e32 v53, v1, v46
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v58, v6, v46
	v_dual_mul_f32 v55, v3, v46 :: v_dual_mul_f32 v0, v0, v48
	v_mul_f32_e32 v54, v2, v46
	v_dual_mul_f32 v57, v5, v46 :: v_dual_mul_f32 v2, v2, v48
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v60, v8, v46 :: v_dual_mul_f32 v5, v5, v48
	v_dual_mul_f32 v61, v9, v46 :: v_dual_mul_f32 v6, v6, v48
	v_mul_f32_e32 v62, v10, v46
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v65, v15, v46 :: v_dual_mul_f32 v10, v10, v48
	v_dual_mul_f32 v66, v16, v46 :: v_dual_mul_f32 v3, v3, v48
	v_dual_mul_f32 v16, v16, v48 :: v_dual_mul_f32 v41, v41, v55
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v22, v22, v52 :: v_dual_mul_f32 v39, v39, v57
	v_dual_mul_f32 v38, v38, v58 :: v_dual_mul_f32 v35, v35, v61
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v63, v11, v46 :: v_dual_mul_f32 v8, v8, v48
	v_dual_mul_f32 v56, v4, v46 :: v_dual_mul_f32 v1, v1, v48
	v_dual_mul_f32 v59, v7, v46 :: v_dual_mul_f32 v4, v4, v48
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v26, v2 :: v_dual_mul_f32 v5, v23, v5
	v_dual_mul_f32 v10, v47, v10 :: v_dual_mul_f32 v13, v13, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v16, v22, 16, 1
	v_bfe_u32 v23, v38, 16, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v11, v11, v48
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v19, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v19, v41, 16, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v64, v14, v46 :: v_dual_mul_f32 v9, v9, v48
	v_dual_mul_f32 v46, v17, v46 :: v_dual_mul_f32 v15, v15, v48
	v_mul_f32_e32 v7, v7, v48
	v_dual_mul_f32 v14, v14, v48 :: v_dual_mul_f32 v43, v43, v53
	v_dual_mul_f32 v17, v17, v48 :: v_dual_mul_f32 v42, v42, v54
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v40, v56 :: v_dual_mul_f32 v37, v37, v59
	v_dual_mul_f32 v30, v30, v66 :: v_dual_mul_f32 v1, v27, v1
	v_dual_mul_f32 v0, v28, v0 :: v_dual_mul_f32 v3, v25, v3
	v_dual_mul_f32 v4, v24, v4 :: v_dual_mul_f32 v9, v18, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_cmp_o_f32_e64 s5, v38, v38
	v_add3_u32 v16, v22, v16, 0x7fff
	v_add3_u32 v22, v38, v23, 0x7fff
	v_add3_u32 v19, v41, v19, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v36, v60 :: v_dual_mul_f32 v33, v33, v63
	v_dual_mul_f32 v34, v34, v62 :: v_dual_mul_f32 v31, v31, v65
	v_dual_mul_f32 v32, v32, v64 :: v_dual_mul_f32 v29, v29, v46
	v_dual_mul_f32 v6, v21, v6 :: v_dual_mul_f32 v7, v20, v7
	v_dual_mul_f32 v11, v49, v11 :: v_dual_mul_f32 v14, v50, v14
	v_mul_f32_e32 v15, v51, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v18, v42, 16, 1
	v_bfe_u32 v20, v40, 16, 1
	v_bfe_u32 v21, v39, 16, 1
	v_bfe_u32 v24, v37, 16, 1
	v_bfe_u32 v50, v0, 16, 1
	v_bfe_u32 v51, v1, 16, 1
	v_bfe_u32 v52, v2, 16, 1
	v_bfe_u32 v54, v4, 16, 1
	v_bfe_u32 v55, v5, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s5
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v12, v12, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v17, v43, 16, 1
	v_cmp_o_f32_e64 s0, v43, v43
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s2, v41, v41
	v_cmp_o_f32_e64 s3, v40, v40
	v_cmp_o_f32_e64 s4, v39, v39
	v_cmp_o_f32_e64 s6, v37, v37
	v_bfe_u32 v25, v36, 16, 1
	v_bfe_u32 v26, v35, 16, 1
	v_bfe_u32 v27, v34, 16, 1
	v_bfe_u32 v28, v33, 16, 1
	v_bfe_u32 v46, v32, 16, 1
	v_bfe_u32 v47, v31, 16, 1
	v_bfe_u32 v48, v30, 16, 1
	v_bfe_u32 v49, v29, 16, 1
	v_cmp_o_f32_e64 s15, v0, v0
	v_cmp_o_f32_e64 s16, v1, v1
	v_cmp_o_f32_e64 s17, v2, v2
	v_bfe_u32 v53, v3, 16, 1
	v_cmp_o_f32_e64 s19, v4, v4
	v_cmp_o_f32_e64 s20, v5, v5
	v_bfe_u32 v56, v6, 16, 1
	v_bfe_u32 v57, v7, 16, 1
	v_bfe_u32 v58, v8, 16, 1
	v_bfe_u32 v59, v9, 16, 1
	v_bfe_u32 v60, v10, 16, 1
	v_bfe_u32 v61, v11, 16, 1
	v_add3_u32 v17, v43, v17, 0x7fff
	v_add3_u32 v18, v42, v18, 0x7fff
	v_add3_u32 v20, v40, v20, 0x7fff
	v_add3_u32 v21, v39, v21, 0x7fff
	v_add3_u32 v23, v37, v24, 0x7fff
	v_add3_u32 v0, v0, v50, 0x7fff
	v_add3_u32 v1, v1, v51, 0x7fff
	v_add3_u32 v2, v2, v52, 0x7fff
	v_add3_u32 v4, v4, v54, 0x7fff
	v_add3_u32 v5, v5, v55, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v34, v34
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v32, v32
	v_cmp_o_f32_e64 s12, v31, v31
	v_cmp_o_f32_e64 s13, v30, v30
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s18, v3, v3
	v_cmp_o_f32_e64 s21, v6, v6
	v_cmp_o_f32_e64 s22, v7, v7
	v_cmp_o_f32_e64 s23, v8, v8
	v_cmp_o_f32_e64 s24, v9, v9
	v_cmp_o_f32_e64 s25, v10, v10
	v_cmp_o_f32_e64 s26, v11, v11
	v_bfe_u32 v62, v14, 16, 1
	v_bfe_u32 v63, v15, 16, 1
	v_add3_u32 v24, v36, v25, 0x7fff
	v_add3_u32 v25, v35, v26, 0x7fff
	v_add3_u32 v26, v34, v27, 0x7fff
	v_add3_u32 v27, v33, v28, 0x7fff
	v_add3_u32 v28, v32, v46, 0x7fff
	v_add3_u32 v31, v31, v47, 0x7fff
	v_add3_u32 v30, v30, v48, 0x7fff
	v_add3_u32 v29, v29, v49, 0x7fff
	v_add3_u32 v3, v3, v53, 0x7fff
	v_add3_u32 v6, v6, v56, 0x7fff
	v_add3_u32 v7, v7, v57, 0x7fff
	v_add3_u32 v8, v8, v58, 0x7fff
	v_add3_u32 v9, v9, v59, 0x7fff
	v_add3_u32 v10, v10, v60, 0x7fff
	v_add3_u32 v11, v11, v61, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s2
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s4
	v_cndmask_b16 v19.h, 0x7fff, v23.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s15
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s16
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s17
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s19
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s20
	v_cmp_o_f32_e64 s27, v14, v14
	v_cmp_o_f32_e64 s28, v15, v15
	v_add3_u32 v14, v14, v62, 0x7fff
	v_add3_u32 v15, v15, v63, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v25.h, s8
	v_cndmask_b16 v21.l, 0x7fff, v26.h, s9
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s10
	v_cndmask_b16 v22.l, 0x7fff, v28.h, s11
	v_cndmask_b16 v22.h, 0x7fff, v31.h, s12
	v_cndmask_b16 v23.l, 0x7fff, v30.h, s13
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s14
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s18
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s21
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s22
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s23
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s24
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s25
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s26
	v_dual_cndmask_b32 v8, v18, v16 :: v_dual_cndmask_b32 v9, v16, v18
	v_dual_cndmask_b32 v10, v19, v17 :: v_dual_cndmask_b32 v11, v17, v19
	v_dual_cndmask_b32 v16, v2, v0 :: v_dual_cndmask_b32 v17, 0x1054, v73
	v_dual_cndmask_b32 v18, 0x3276, v74 :: v_dual_cndmask_b32 v19, v3, v1
	v_bfe_u32 v64, v13, 16, 1
	v_bfe_u32 v65, v12, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v14.h, s27
	v_cndmask_b16 v6.h, 0x7fff, v15.h, s28
	v_dual_cndmask_b32 v14, v23, v21 :: v_dual_cndmask_b32 v1, v1, v3
	v_cndmask_b32_e32 v0, v0, v2, vcc_lo
	v_lshl_or_b32 v2, v17, 8, v17
	v_lshl_or_b32 v3, v18, 8, v18
	v_cmp_o_f32_e64 s29, v13, v13
	v_cmp_o_f32_e64 s30, v12, v12
	v_add3_u32 v13, v13, v64, 0x7fff
	v_add3_u32 v12, v12, v65, 0x7fff
	v_dual_cndmask_b32 v17, v6, v4 :: v_dual_cndmask_b32 v4, v4, v6
	v_and_b32_e32 v3, 0x760076, v3
	v_and_b32_e32 v2, 0x540054, v2
	v_cndmask_b16 v7.l, 0x7fff, v13.h, s29
	v_cndmask_b16 v7.h, 0x7fff, v12.h, s30
	v_dual_cndmask_b32 v12, v22, v20 :: v_dual_cndmask_b32 v15, v21, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	v_dual_cndmask_b32 v13, v20, v22 :: v_dual_cndmask_b32 v18, v7, v5
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_permlanex16_b32 v6, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v2
	v_and_b32_e32 v20, 0x7060706, v3
	v_permlanex16_b32 v9, v13, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v1, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v4, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v5, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v15
	v_perm_b32 v1, v6, v8, v20
	v_perm_b32 v2, v7, v10, v15
	v_perm_b32 v3, v7, v10, v20
	v_perm_b32 v4, v9, v12, v15
	v_perm_b32 v5, v9, v12, v20
	v_perm_b32 v6, v11, v14, v15
	v_perm_b32 v7, v11, v14, v20
	v_perm_b32 v8, v13, v16, v15
	v_perm_b32 v9, v13, v16, v20
	v_perm_b32 v10, v21, v19, v15
	v_perm_b32 v11, v21, v19, v20
	v_perm_b32 v12, v22, v17, v15
	v_perm_b32 v13, v22, v17, v20
	v_perm_b32 v14, v23, v18, v15
	v_perm_b32 v15, v23, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v44, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v44, s[36:39], 0 offen offset:256
	buffer_store_b128 v[8:11], v45, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v45, s[36:39], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 169
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6380
; TotalNumSgprs: 42
; NumVgprs: 169
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     169
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
