	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v10, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v59, 1, v0
	v_lshlrev_b32_e32 v87, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 63
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v10
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_lshl_b32 s9, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s9
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s10, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s8, 0, s7
	v_rcp_iflag_f32_e32 v2, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_readfirstlane_b32 s6, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[5:6], null, s29, v3, v[1:2]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mul_lo_u32 v2, s29, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v8, s29, 6, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v9, s29, 7, v5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s4, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s10
	s_mul_i32 s8, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s5, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s8, s4, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s5, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s8, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s29, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s3, s10
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s3, s3, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s4
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s3, s29
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s24, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s7, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[6:7], null, s24, s29, v[5:6]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s28, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, s5
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s28
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v12, s5, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s9, s5, 64
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s4, v5
	v_add_nc_u32_e32 v7, s4, v8
	v_add_nc_u32_e32 v11, s4, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add3_u32 v2, v2, v1, s4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v14, s9, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v18, 0x80000000, v7 :: v_dual_add_nc_u32 v13, 64, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v30, 64, v2
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v14
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v31, s9, v6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v32, s4, v8
	v_add_nc_u32_e32 v33, s4, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[14:17], v5, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v18, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v11, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v2, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v2, 0x80000000, v31 :: v_dual_cndmask_b32 v11, 0x80000000, v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v5, 0x80000000, v13, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[6:9], v12, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v12, 0x80000000, v33 :: v_dual_cndmask_b32 v13, 0x80000000, v30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[30:33], v2, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[34:37], v5, s[20:23], 0 offen
	buffer_load_b128 v[38:41], v11, s[20:23], 0 offen
	buffer_load_b128 v[42:45], v12, s[20:23], 0 offen
	buffer_load_b128 v[46:49], v13, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v59
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v13, 15, v0
	v_lshlrev_b32_e32 v5, 3, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v88, v10, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v88
	s_waitcnt vmcnt(5)
	ds_store_b128 v2, v[6:9] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v2, v[14:17]
	ds_store_b128 v2, v[18:21] offset:4096
	ds_store_b128 v2, v[22:25] offset:8192
	ds_store_b128 v2, v[26:29] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v2, v[30:33] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v2, v[34:37] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v2, v[38:41] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v2, v[42:45] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[46:49] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v79, v13, 6, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v83, 0x1c00, v2, v79
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v84, 16, v83
	v_xor_b32_e32 v86, 32, v83
	v_xor_b32_e32 v85, 48, v83
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v70, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s26, 0, 0x9000
	s_add_i32 s27, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr85
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_and_b32_e32 v2, 48, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s4, s8, 8
	v_add3_u32 v90, s5, v1, 0x80
	v_or_b32_e32 v4, s4, v4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, s24, v3
	v_lshl_or_b32 v79, v13, 6, v2
	v_or_b32_e32 v2, s4, v3
	s_lshl_b32 s4, s6, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s6, s7, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v4, s4, v4
	v_and_or_b32 v83, 0x1c00, v87, v79
	v_subrev_nc_u32_e32 v2, s4, v2
	s_mov_b32 s4, 0
	v_mul_lo_u32 v94, s29, v1
	v_mul_lo_u32 v89, s29, v4
	s_add_i32 s30, s6, -2
	v_or_b32_e32 v5, 0x80, v2
	v_or_b32_e32 v6, 64, v2
	v_mul_lo_u32 v93, s29, v2
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_mul_lo_u32 v91, s29, v5
	v_mul_lo_u32 v92, s29, v6
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	v_xor_b32_e32 v84, 16, v83
	v_xor_b32_e32 v86, 32, v83
	v_xor_b32_e32 v85, 48, v83
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s26, 0, 0x9000
	s_add_i32 s27, 0, 0x4000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v90
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, v94, v90
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v103, s4, v83
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v167, s31, v79
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v104, s4, v84
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s31, v80
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s5, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s5, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[159:162], v103 offset:8192
	ds_load_b128 v[163:166], v104 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[111:114], v167
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[151:154], v103
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[115:118], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[155:158], v104
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[127:130], v167 offset:1024
	ds_load_b128 v[131:134], v171 offset:1024
	ds_load_b128 v[143:146], v167 offset:2048
	ds_load_b128 v[147:150], v171 offset:2048
	ds_load_b128 v[167:170], v167 offset:3072
	ds_load_b128 v[171:174], v171 offset:3072
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s5, 0
	s_add_i32 s30, s30, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s6, s5, 12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s7, s5, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s6, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[159:162], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[159:162], v[127:130], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[115:118], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[115:118], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[127:130], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[131:134], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[155:158], v[131:134], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[143:146], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[147:150], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[155:158], v[147:150], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[167:170], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[155:158], v[171:174], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[167:170], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v167, s4, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[151:158], v[163:166], v[171:174], v[151:158] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s31, v81
	ds_load_b128 v[159:162], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v167
	ds_load_b128 v[167:170], v167 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[163:166], v[159:162], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[159:162], v[103:110] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[163:166], v[159:162], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[159:162], v[119:126] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[163:166], v[159:162], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:3072
	v_add_nc_u32_e32 v171, s31, v82
	s_mov_b32 s31, s26
	s_add_i32 s26, s6, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[159:162], v[151:158] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v167, s4, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[143:150], v[163:166], v[159:162], v[143:150] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v167
	ds_load_b128 v[167:170], v167 offset:8192
	s_mov_b32 s4, s27
	s_add_i32 s27, s7, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[163:166], v[159:162], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[159:162], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v70, v70, v95
	v_add_f32_e32 v64, v64, v109
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v78, v78, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v77, v77, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v76, v76, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v66, v66, v107
	v_add_f32_e32 v74, v74, v100
	v_add_f32_e32 v72, v72, v102
	v_add_f32_e32 v68, v68, v105
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v96, v92, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[163:166], v[159:162], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[159:162], v[119:126] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v98, v89, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v75, v75, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v104
	v_add_f32_e32 v67, v67, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v107, 0x80000000, v98, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v65, v108
	v_add_f32_e32 v63, v63, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[163:166], v[159:162], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v131
	v_add_f32_e32 v35, v35, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[107:110], v107, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[159:162], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[163:166], v[159:162], v[143:150] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v95, v93, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v97, v91, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v158, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v20, v20, v152 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v99, 0x80000000, v96 :: v_dual_add_nc_u32 v90, 64, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v14, v14, v158
	v_dual_add_f32 v16, v16, v156 :: v_dual_cndmask_b32 v103, 0x80000000, v97
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[95:98], v95, s[20:23], 0 offen
	buffer_load_b128 v[99:102], v99, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[103:106], v103, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v62, v62, v111 :: v_dual_add_f32 v61, v61, v112
	v_add_f32_e32 v46, v46, v126
	v_add_f32_e32 v60, v60, v113
	v_dual_add_f32 v58, v58, v114 :: v_dual_add_f32 v57, v57, v115
	v_add_f32_e32 v44, v44, v128
	v_dual_add_f32 v56, v56, v116 :: v_dual_add_f32 v55, v55, v117
	v_add_f32_e32 v42, v42, v130
	v_dual_add_f32 v54, v54, v118 :: v_dual_add_f32 v53, v53, v119
	v_add_f32_e32 v40, v40, v132
	v_dual_add_f32 v52, v52, v120 :: v_dual_add_f32 v51, v51, v121
	v_add_f32_e32 v38, v38, v134
	v_dual_add_f32 v50, v50, v122 :: v_dual_add_f32 v49, v49, v123
	v_add_f32_e32 v36, v36, v136
	v_dual_add_f32 v48, v48, v124 :: v_dual_add_f32 v47, v47, v125
	v_dual_add_f32 v34, v34, v138 :: v_dual_add_f32 v45, v45, v127
	v_dual_add_f32 v32, v32, v140 :: v_dual_add_f32 v43, v43, v129
	v_dual_add_f32 v30, v30, v142 :: v_dual_add_f32 v39, v39, v133
	v_dual_add_f32 v28, v28, v144 :: v_dual_add_f32 v37, v37, v135
	v_dual_add_f32 v26, v26, v146 :: v_dual_add_f32 v33, v33, v139
	v_dual_add_f32 v24, v24, v148 :: v_dual_add_f32 v31, v31, v141
	v_dual_add_f32 v22, v22, v150 :: v_dual_add_f32 v29, v29, v143
	v_dual_add_f32 v18, v18, v154 :: v_dual_add_f32 v27, v27, v145
	v_dual_add_f32 v25, v25, v147 :: v_dual_add_nc_u32 v112, s27, v88
	v_add_f32_e32 v23, v23, v149
	v_add_f32_e32 v21, v21, v151
	v_add_f32_e32 v19, v19, v153
	v_add_f32_e32 v17, v17, v155
	v_add_f32_e32 v15, v15, v157
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v111, s6, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v111, v[9:12] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v112, v[95:98]
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[99:102] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[103:106] offset:8192
	ds_store_b128 v112, v[107:110] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v87
.LBB0_7:                                ; %._crit_edge
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s4, v86
	v_add_nc_u32_e32 v3, s4, v84
	v_add_nc_u32_e32 v11, s4, v85
	v_add_nc_u32_e32 v4, s4, v83
	s_mov_b32 s4, 0
	ds_load_b128 v[143:146], v1 offset:8192
	ds_load_b128 v[147:150], v1
	ds_load_b128 v[151:154], v3 offset:8192
	ds_load_b128 v[155:158], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s31, v79
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[159:162], v4 offset:8192
	ds_load_b128 v[163:166], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s4 :: v_dual_add_nc_u32 v12, s31, v82
	v_dual_mov_b32 v10, s11 :: v_dual_add_nc_u32 v123, s31, v80
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[119:122], v1 offset:1024
	ds_load_b128 v[103:106], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v7, s8 :: v_dual_add_nc_u32 v124, s31, v81
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[167:170], v123 offset:1024
	ds_load_b128 v[107:110], v123
	ds_load_b128 v[171:174], v124 offset:1024
	ds_load_b128 v[111:114], v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_mov_b32_e32 v6, s7
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[175:178], v11 offset:8192
	ds_load_b128 v[179:182], v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[183:186], v12 offset:1024
	ds_load_b128 v[115:118], v12
	ds_load_b128 v[207:210], v12 offset:3072
	ds_load_b128 v[211:214], v12 offset:2048
	ds_load_b128 v[187:190], v1 offset:3072
	ds_load_b128 v[135:138], v1 offset:2048
	ds_load_b128 v[191:194], v123 offset:3072
	ds_load_b128 v[195:198], v123 offset:2048
	ds_load_b128 v[199:202], v124 offset:3072
	ds_load_b128 v[203:206], v124 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[163:166], v[103:106], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[155:158], v[107:110], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[147:150], v[111:114], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[179:182], v[115:118], v[87:94] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v88
	v_cvt_f32_i32_e32 v11, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v91
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v76, v76, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[159:162], v[103:106], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v78, v78, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v77, v77, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[107:110], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[119:122], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v93
	v_cvt_f32_i32_e32 v12, v94
	v_wmma_i32_16x16x16_iu8 v[95:102], v[143:146], v[111:114], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[155:158], v[167:170], v[103:110] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v74, v74, v1 :: v_dual_add_f32 v73, v73, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v72, v72, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[175:178], v[115:118], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[147:150], v[171:174], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[159:162], v[119:122], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[135:138], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v96
	v_cvt_f32_i32_e32 v1, v97
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v75, v75, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v95
	v_wmma_i32_16x16x16_iu8 v[103:110], v[179:182], v[183:186], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[167:170], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v98
	v_cvt_f32_i32_e32 v12, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v100
	v_wmma_i32_16x16x16_iu8 v[111:118], v[143:146], v[171:174], v[111:118] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v68, v68, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v102
	v_wmma_i32_16x16x16_iu8 v[127:134], v[159:162], v[135:138], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v65, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v67, v67, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v103
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[155:158], v[195:198], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[175:178], v[183:186], v[111:118] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v66, v66, v12
	v_add_f32_e32 v64, v64, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v104
	v_cvt_f32_i32_e32 v89, v106
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v62, v62, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v63, v63, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v107
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[195:198], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[147:150], v[203:206], v[119:126] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v61, v12 :: v_dual_add_f32 v58, v58, v89
	v_add_f32_e32 v60, v60, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v109
	v_cvt_f32_i32_e32 v88, v110
	v_cvt_f32_i32_e32 v89, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v57, v57, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v112
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[187:190], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[143:146], v[203:206], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[179:182], v[211:214], v[119:126] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v56, v11 :: v_dual_add_f32 v55, v55, v12
	v_add_f32_e32 v52, v52, v1
	v_add_f32_e32 v54, v54, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v113
	v_cvt_f32_i32_e32 v12, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v53, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v115
	v_cvt_f32_i32_e32 v89, v116
	v_cvt_f32_i32_e32 v1, v117
	v_wmma_i32_16x16x16_iu8 v[135:142], v[155:158], v[191:194], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[159:162], v[187:190], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[175:178], v[211:214], v[127:134] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v51, v11 :: v_dual_add_f32 v48, v48, v89
	v_add_f32_e32 v50, v50, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v119
	v_cvt_f32_i32_e32 v88, v120
	v_cvt_f32_i32_e32 v89, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v122
	v_wmma_i32_16x16x16_iu8 v[135:142], v[147:150], v[199:202], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[151:154], v[191:194], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v46, v46, v11 :: v_dual_add_f32 v45, v45, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v42, v42, v1
	v_add_f32_e32 v44, v44, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v123
	v_cvt_f32_i32_e32 v12, v124
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v125
	v_cvt_f32_i32_e32 v89, v126
	v_cvt_f32_i32_e32 v1, v127
	v_wmma_i32_16x16x16_iu8 v[135:142], v[179:182], v[207:210], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[143:146], v[199:202], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v41, v11 :: v_dual_add_f32 v38, v38, v89
	v_add_f32_e32 v40, v40, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v129
	v_cvt_f32_i32_e32 v88, v130
	v_cvt_f32_i32_e32 v89, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v132
	v_wmma_i32_16x16x16_iu8 v[3:10], v[175:178], v[207:210], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v36, v36, v11 :: v_dual_add_f32 v35, v35, v12
	v_add_f32_e32 v34, v34, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v133
	v_cvt_f32_i32_e32 v12, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v135
	v_cvt_f32_i32_e32 v89, v136
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v31, v11 :: v_dual_add_f32 v30, v30, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v28, v28, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v138
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v139
	v_cvt_f32_i32_e32 v88, v140
	v_cvt_f32_i32_e32 v89, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v142
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v12 :: v_dual_add_f32 v22, v22, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v23, v23, v89 :: v_dual_add_f32 v20, v20, v4
	v_dual_add_f32 v21, v21, v3 :: v_dual_add_f32 v18, v18, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v3, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v19, v19, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v9
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v6, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v11
	v_dual_add_f32 v24, v24, v88 :: v_dual_add_f32 v17, v17, v1
	v_dual_add_f32 v16, v16, v3 :: v_dual_add_f32 v15, v15, v4
	v_add_f32_e32 v14, v14, v5
	v_add_f32_e32 v70, v70, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v139, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s26, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s27, v86
	v_add_nc_u32_e32 v3, s27, v84
	v_add_nc_u32_e32 v5, s27, v83
	ds_load_b128 v[135:138], v1 offset:8192
	ds_load_b128 v[139:142], v1
	ds_load_b128 v[143:146], v3 offset:8192
	ds_load_b128 v[147:150], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s26, v79
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v4, s27, v85
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v12, s26, v82
	v_add_nc_u32_e32 v119, s26, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v86, s11
	v_mov_b32_e32 v82, s7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[151:154], v5 offset:8192
	ds_load_b128 v[155:158], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v80, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[111:114], v1 offset:1024
	ds_load_b128 v[95:98], v1
	ds_load_b128 v[159:162], v11 offset:1024
	ds_load_b128 v[103:106], v11
	ds_load_b128 v[163:166], v119 offset:1024
	ds_load_b128 v[107:110], v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v85, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v4 offset:8192
	ds_load_b128 v[171:174], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v84, s9 :: v_dual_mov_b32 v83, s8
	v_mov_b32_e32 v81, s6
	v_mov_b32_e32 v79, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[175:178], v12 offset:1024
	ds_load_b128 v[115:118], v12
	ds_load_b128 v[179:182], v1 offset:3072
	ds_load_b128 v[127:130], v1 offset:2048
	ds_load_b128 v[183:186], v119 offset:3072
	ds_load_b128 v[187:190], v119 offset:2048
	ds_load_b128 v[191:194], v11 offset:3072
	ds_load_b128 v[195:198], v11 offset:2048
	ds_load_b128 v[199:202], v12 offset:3072
	ds_load_b128 v[203:206], v12 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[155:158], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[151:154], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[111:114], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[147:150], v[107:110], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[143:146], v[107:110], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[147:150], v[163:166], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[151:154], v[127:130], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[139:142], v[103:106], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[135:138], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[151:154], v[111:114], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[143:146], v[187:190], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[171:174], v[115:118], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[167:170], v[115:118], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[155:158], v[127:130], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[155:158], v[179:182], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[151:154], v[179:182], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[143:146], v[163:166], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[147:150], v[187:190], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[147:150], v[183:186], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[139:142], v[159:162], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[143:146], v[183:186], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[135:138], v[159:162], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[139:142], v[195:198], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[135:138], v[195:198], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[139:142], v[191:194], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[135:138], v[191:194], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[171:174], v[175:178], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[175:178], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[171:174], v[203:206], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[203:206], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[171:174], v[199:202], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[167:170], v[199:202], v[79:86] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v87
	v_cvt_f32_i32_e32 v11, v88
	v_cvt_f32_i32_e32 v12, v89
	v_cvt_f32_i32_e32 v87, v90
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v89, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v91, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v96, v99
	v_cvt_f32_i32_e32 v97, v100
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v101, v104
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v110, v113
	v_cvt_f32_i32_e32 v111, v114
	v_cvt_f32_i32_e32 v112, v115
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v114, v117
	v_cvt_f32_i32_e32 v115, v118
	v_cvt_f32_i32_e32 v116, v119
	v_cvt_f32_i32_e32 v117, v120
	v_cvt_f32_i32_e32 v118, v121
	v_cvt_f32_i32_e32 v119, v122
	v_cvt_f32_i32_e32 v120, v123
	v_cvt_f32_i32_e32 v121, v124
	v_cvt_f32_i32_e32 v122, v125
	v_cvt_f32_i32_e32 v123, v126
	v_cvt_f32_i32_e32 v124, v127
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v126, v129
	v_cvt_f32_i32_e32 v127, v130
	v_cvt_f32_i32_e32 v128, v131
	v_cvt_f32_i32_e32 v129, v132
	v_cvt_f32_i32_e32 v130, v133
	v_cvt_f32_i32_e32 v131, v134
	v_cvt_f32_i32_e32 v132, v79
	v_cvt_f32_i32_e32 v133, v80
	v_cvt_f32_i32_e32 v134, v81
	v_cvt_f32_i32_e32 v135, v82
	v_cvt_f32_i32_e32 v136, v83
	v_cvt_f32_i32_e32 v137, v84
	v_cvt_f32_i32_e32 v138, v85
	v_cvt_f32_i32_e32 v139, v86
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v79, s24, v13
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v80, s3, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v77, v4 :: v_dual_lshlrev_b32 v79, 1, v79
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v85, v70, v1 :: v_dual_lshlrev_b32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v81, 32, v79
	v_or_b32_e32 v82, 64, v79
	v_or_b32_e32 v83, 0x60, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v78, v3 :: v_dual_and_b32 v84, 0xf0, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x3
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v88, v66, v88 :: v_dual_add_f32 v91, v63, v91
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v130, v23, v130 :: v_dual_add_f32 v133, v20, v133
	v_dual_add_f32 v138, v15, v138 :: v_dual_and_b32 v59, 28, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v3, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v3, v84, 2, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v86, v74, v7 :: v_dual_add_f32 v9, v72, v9
	v_dual_add_f32 v8, v73, v8 :: v_dual_add_f32 v87, v67, v87
	v_dual_add_f32 v10, v71, v10 :: v_dual_add_f32 v11, v69, v11
	v_dual_add_f32 v12, v68, v12 :: v_dual_add_f32 v89, v65, v89
	v_dual_add_f32 v136, v17, v136 :: v_dual_add_f32 v139, v14, v139
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v88, s2
	v_cndmask_b32_e64 v88, v20, v133, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v20, v84, 1, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v90, v64, v90 :: v_dual_add_f32 v93, v61, v93
	v_dual_add_f32 v128, v25, v128 :: v_dual_add_f32 v131, v22, v131
	v_dual_add_f32 v132, v21, v132 :: v_dual_add_f32 v135, v18, v135
	v_dual_add_f32 v134, v19, v134 :: v_dual_add_f32 v137, v16, v137
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s25, v13
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v140, 1, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v8, s2
	v_cndmask_b32_e64 v72, v72, v9, s2
	v_cndmask_b32_e64 v71, v71, v10, s2
	v_cndmask_b32_e64 v69, v69, v11, s2
	v_cndmask_b32_e64 v68, v68, v12, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v14, v139, s2
	v_cndmask_b32_e64 v70, v70, v85, s2
	v_cndmask_b32_e64 v74, v74, v86, s2
	v_cndmask_b32_e64 v67, v67, v87, s2
	v_cndmask_b32_e64 v65, v65, v89, s2
	v_cndmask_b32_e64 v64, v64, v90, s2
	v_cndmask_b32_e64 v63, v63, v91, s2
	v_cndmask_b32_e64 v85, v23, v130, s2
	v_cndmask_b32_e64 v86, v22, v131, s2
	v_cndmask_b32_e64 v87, v21, v132, s2
	v_cndmask_b32_e64 v89, v19, v134, s2
	v_cndmask_b32_e64 v90, v18, v135, s2
	v_cndmask_b32_e64 v91, v17, v136, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v92, v62, v92 :: v_dual_add_f32 v97, v56, v97
	v_dual_add_f32 v100, v53, v100 :: v_dual_add_f32 v103, v50, v103
	v_dual_add_f32 v112, v41, v112 :: v_dual_add_f32 v115, v38, v115
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s24, s24, s25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v76, v5 :: v_dual_add_f32 v6, v75, v6
	v_dual_add_f32 v96, v57, v96 :: v_dual_add_f32 v99, v54, v99
	v_dual_add_f32 v98, v55, v98 :: v_dual_add_f32 v101, v52, v101
	v_dual_add_f32 v102, v51, v102 :: v_dual_add_f32 v105, v48, v105
	v_dual_add_f32 v104, v49, v104 :: v_dual_add_f32 v107, v46, v107
	v_dual_add_f32 v106, v47, v106 :: v_dual_add_f32 v109, v44, v109
	v_dual_add_f32 v108, v45, v108 :: v_dual_add_f32 v111, v42, v111
	v_dual_add_f32 v110, v43, v110 :: v_dual_add_f32 v113, v40, v113
	v_dual_add_f32 v114, v39, v114 :: v_dual_add_f32 v117, v36, v117
	v_dual_add_f32 v120, v33, v120 :: v_dual_add_f32 v123, v30, v123
	v_dual_add_f32 v122, v31, v122 :: v_dual_add_f32 v125, v28, v125
	v_dual_add_f32 v124, v29, v124 :: v_dual_add_f32 v127, v26, v127
	v_dual_add_f32 v126, v27, v126 :: v_dual_add_f32 v129, v24, v129
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v4, s2
	v_cndmask_b32_e64 v56, v56, v97, s2
	v_cndmask_b32_e64 v53, v53, v100, s2
	v_cndmask_b32_e64 v41, v41, v112, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s24, s3, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v116, v37, v116 :: v_dual_add_f32 v119, v34, v119
	v_dual_add_f32 v118, v35, v118 :: v_dual_add_f32 v121, v32, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v5, s2
	v_cndmask_b32_e64 v75, v75, v6, s2
	v_cndmask_b32_e64 v57, v57, v96, s2
	v_cndmask_b32_e64 v55, v55, v98, s2
	v_cndmask_b32_e64 v54, v54, v99, s2
	v_cndmask_b32_e64 v51, v51, v102, s2
	v_cndmask_b32_e64 v49, v49, v104, s2
	v_cndmask_b32_e64 v48, v48, v105, s2
	v_cndmask_b32_e64 v46, v46, v107, s2
	v_cndmask_b32_e64 v44, v44, v109, s2
	v_cndmask_b32_e64 v42, v42, v111, s2
	v_cndmask_b32_e64 v40, v40, v113, s2
	v_cndmask_b32_e64 v39, v39, v114, s2
	v_cndmask_b32_e64 v31, v31, v122, s2
	v_cndmask_b32_e64 v30, v30, v123, s2
	v_cndmask_b32_e64 v29, v29, v124, s2
	v_cndmask_b32_e64 v27, v27, v126, s2
	v_cndmask_b32_e64 v26, v26, v127, s2
	v_cndmask_b32_e64 v25, v25, v128, s2
	v_cndmask_b32_e64 v24, v24, v129, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v94, v60, v94 :: v_dual_add_f32 v95, v58, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v101, s2
	v_cndmask_b32_e64 v50, v50, v103, s2
	v_cndmask_b32_e64 v47, v47, v106, s2
	v_cndmask_b32_e64 v45, v45, v108, s2
	v_cndmask_b32_e64 v43, v43, v110, s2
	v_cndmask_b32_e64 v38, v38, v115, s2
	v_cndmask_b32_e64 v37, v37, v116, s2
	v_cndmask_b32_e64 v36, v36, v117, s2
	v_cndmask_b32_e64 v35, v35, v118, s2
	v_cndmask_b32_e64 v34, v34, v119, s2
	v_cndmask_b32_e64 v33, v33, v120, s2
	v_cndmask_b32_e64 v32, v32, v121, s2
	v_cndmask_b32_e64 v28, v28, v125, s2
	v_cndmask_b32_e64 v58, v58, v95, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v92, s2
	v_cndmask_b32_e64 v61, v61, v93, s2
	v_cndmask_b32_e64 v60, v60, v94, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s25, 4, v1
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.h, v7.h
	v_mov_b16_e32 v93.h, v7.h
	v_mov_b16_e32 v94.h, v7.h
	v_mov_b16_e32 v95.h, v7.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v5, s25, 5, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v2, 32, v2
	v_add3_u32 v2, v3, v2, v59
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v15, v138, s2
	v_cndmask_b32_e64 v59, v16, v137, s2
	s_mov_b32 s2, 0x76543210
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:16
	ds_load_b128 v[16:19], v20 offset:512
	ds_load_b128 v[20:23], v20 offset:528
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[2:3], null, s25, 48, v[1:2]
	v_add_lshl_u32 v1, v4, v1, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v112, v9, v81
	v_dual_mul_f32 v99, v11, v79 :: v_dual_lshlrev_b32 v82, 16, v82
	v_mul_f32_e32 v97, v9, v79
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v100, v12, v79
	v_dual_mul_f32 v114, v11, v81 :: v_dual_lshlrev_b32 v83, 16, v83
	v_dual_mul_f32 v98, v10, v79 :: v_dual_add_nc_u32 v3, 0x80, v4
	v_mul_f32_e32 v96, v8, v79
	v_dual_mul_f32 v102, v14, v79 :: v_dual_mul_f32 v111, v8, v81
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v104, v16, v79 :: v_dual_mul_f32 v113, v10, v81
	v_dual_mul_f32 v105, v17, v79 :: v_dual_mul_f32 v122, v19, v81
	v_dual_mul_f32 v107, v19, v79 :: v_dual_mul_f32 v120, v17, v81
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v109, v21, v79 :: v_dual_mul_f32 v126, v8, v82
	v_dual_mul_f32 v123, v20, v81 :: v_dual_mul_f32 v128, v10, v82
	v_dual_mul_f32 v127, v9, v82 :: v_dual_mul_f32 v8, v8, v83
	v_dual_mul_f32 v129, v11, v82 :: v_dual_mul_f32 v10, v10, v83
	v_mul_f32_e32 v137, v19, v82
	v_dual_mul_f32 v138, v20, v82 :: v_dual_mul_f32 v11, v11, v83
	v_dual_mul_f32 v19, v19, v83 :: v_dual_mul_f32 v78, v78, v97
	v_dual_mul_f32 v101, v13, v79 :: v_dual_mul_f32 v118, v15, v81
	v_dual_mul_f32 v103, v15, v79 :: v_dual_mul_f32 v116, v13, v81
	v_dual_mul_f32 v106, v18, v79 :: v_dual_mul_f32 v115, v12, v81
	v_dual_mul_f32 v108, v20, v79 :: v_dual_mul_f32 v117, v14, v81
	v_dual_mul_f32 v110, v22, v79 :: v_dual_mul_f32 v119, v16, v81
	v_dual_mul_f32 v79, v23, v79 :: v_dual_mul_f32 v124, v21, v81
	v_dual_mul_f32 v121, v18, v81 :: v_dual_mul_f32 v130, v12, v82
	v_dual_mul_f32 v125, v22, v81 :: v_dual_mul_f32 v134, v16, v82
	v_dual_mul_f32 v81, v23, v81 :: v_dual_mul_f32 v132, v14, v82
	v_dual_mul_f32 v131, v13, v82 :: v_dual_mul_f32 v12, v12, v83
	v_dual_mul_f32 v133, v15, v82 :: v_dual_mul_f32 v14, v14, v83
	v_dual_mul_f32 v135, v17, v82 :: v_dual_mul_f32 v16, v16, v83
	v_dual_mul_f32 v136, v18, v82 :: v_dual_mul_f32 v9, v9, v83
	v_dual_mul_f32 v139, v21, v82 :: v_dual_mul_f32 v20, v20, v83
	v_dual_mul_f32 v140, v22, v82 :: v_dual_mul_f32 v13, v13, v83
	v_dual_mul_f32 v82, v23, v82 :: v_dual_mul_f32 v17, v17, v83
	v_dual_mul_f32 v15, v15, v83 :: v_dual_mul_f32 v70, v70, v96
	v_dual_mul_f32 v21, v21, v83 :: v_dual_mul_f32 v74, v74, v101
	v_dual_mul_f32 v22, v22, v83 :: v_dual_mul_f32 v77, v77, v98
	v_dual_mul_f32 v23, v23, v83 :: v_dual_mul_f32 v68, v68, v106
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v76, v76, v99 :: v_dual_mul_f32 v75, v75, v100
	v_dual_mul_f32 v8, v29, v8 :: v_dual_mul_f32 v9, v28, v9
	v_dual_mul_f32 v10, v27, v10 :: v_dual_mul_f32 v11, v26, v11
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v29, 0, v78 :: v_dual_mul_f32 v18, v18, v83
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v73, v73, v102 :: v_dual_mul_f32 v72, v72, v103
	v_dual_mul_f32 v63, v63, v79 :: v_dual_mul_f32 v58, v58, v114
	v_dual_mul_f32 v31, v31, v140 :: v_dual_mul_f32 v30, v30, v82
	v_dual_mul_f32 v12, v25, v12 :: v_dual_mul_f32 v13, v24, v13
	v_dual_mul_f32 v14, v85, v14 :: v_dual_mul_f32 v15, v86, v15
	v_dual_mul_f32 v26, v59, v21 :: v_dual_mul_f32 v27, v84, v23
	v_dual_mul_f32 v22, v80, v22 :: v_dual_max_f32 v59, 0, v77
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, 0, v70 :: v_dual_max_f32 v75, 0, v75
	v_max_f32_e32 v70, 0, v76
	v_dual_max_f32 v76, 0, v8 :: v_dual_max_f32 v79, 0, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v11, v29, v29
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v71, v71, v104 :: v_dual_mul_f32 v64, v64, v110
	v_dual_mul_f32 v17, v88, v17 :: v_dual_mul_f32 v18, v89, v18
	v_dual_mul_f32 v25, v90, v19 :: v_dual_mul_f32 v20, v91, v20
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v74 :: v_dual_max_f32 v73, 0, v73
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v77, 0, v9
	v_dual_max_f32 v80, 0, v12 :: v_dual_max_f32 v23, 0, v15
	v_dual_max_f32 v8, 0, v27 :: v_dual_mul_f32 v9, v28, v28
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v59, v59 :: v_dual_mul_f32 v15, v70, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v11.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v69, v69, v105 :: v_dual_mul_f32 v66, v66, v108
	v_dual_mul_f32 v49, v49, v123 :: v_dual_mul_f32 v46, v46, v81
	v_dual_mul_f32 v33, v33, v138 :: v_dual_mul_f32 v16, v87, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v72, 0, v72 :: v_dual_max_f32 v71, 0, v71
	v_dual_max_f32 v78, 0, v10 :: v_dual_max_f32 v81, 0, v13
	v_max_f32_e32 v19, 0, v17
	v_max_f32_e32 v17, 0, v18
	v_dual_max_f32 v13, 0, v20 :: v_dual_max_f32 v10, 0, v22
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v75, v75
	v_mul_f32_e32 v20, v74, v74
	v_dual_mul_f32 v22, v73, v73 :: v_dual_and_b32 v27, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.l, v9.h
	v_mov_b16_e32 v93.l, v12.h
	v_mov_b16_e32 v7.l, v15.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v67, v67, v107 :: v_dual_mul_f32 v60, v60, v113
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v69, 0, v69 :: v_dual_max_f32 v68, 0, v68
	v_dual_max_f32 v24, 0, v14 :: v_dual_max_f32 v21, 0, v16
	v_max_f32_e32 v16, 0, v25
	v_dual_max_f32 v14, 0, v26 :: v_dual_mul_f32 v25, v72, v72
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v26, v71, v71 :: v_dual_and_b32 v29, 1, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v94.l, v18.h
	v_and_b32_e32 v28, 1, v92
	v_and_b32_e32 v70, 1, v7
	v_mov_b16_e32 v7.l, v20.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v65, v65, v109 :: v_dual_mul_f32 v62, v62, v111
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v67, 0, v67 :: v_dual_max_f32 v66, 0, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v95.l, v22.h
	v_and_b32_e32 v59, 1, v94
	v_add3_u32 v28, v9, v28, 0x7fff
	v_add3_u32 v9, v11, v27, 0x7fff
	v_add3_u32 v12, v12, v29, 0x7fff
	v_and_b32_e32 v27, 1, v7
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v57, v57, v115 :: v_dual_mul_f32 v56, v56, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v25.h
	v_add3_u32 v11, v15, v70, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v65, 0, v65 :: v_dual_max_f32 v64, 0, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v18, v59, 0x7fff
	v_mov_b16_e32 v11.l, v12.h
	v_add3_u32 v12, v20, v27, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v69, v69 :: v_dual_and_b32 v20, 1, v95
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v58, 0, v58 :: v_dual_max_f32 v57, 0, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v7
	v_mov_b16_e32 v9.l, v28.h
	v_mov_b16_e32 v28.l, v26.h
	v_mov_b16_e32 v28.h, v7.h
	v_mov_b16_e32 v12.l, v18.h
	v_add3_u32 v18, v22, v20, 0x7fff
	v_mov_b16_e32 v7.l, v27.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v58, v58, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v25, v15, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v63, 0, v63 :: v_dual_max_f32 v62, 0, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v28
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v22, v67, v67 :: v_dual_mul_f32 v25, v68, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v18.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v61, v61, v112 :: v_dual_and_b32 v18, 1, v7
	v_dual_mul_f32 v54, v54, v118 :: v_dual_mul_f32 v55, v55, v117
	v_mul_f32_e32 v52, v52, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v26, v20, 0x7fff
	v_mov_b16_e32 v7.l, v22.h
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v26.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v28, v66, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v27, v18, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v27, v65, v65
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v61, 0, v61 :: v_dual_max_f32 v60, 0, v60
	v_dual_max_f32 v56, 0, v56 :: v_dual_max_f32 v55, 0, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v7
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v59.l, v28.h
	v_mov_b16_e32 v59.h, v7.h
	v_mov_b16_e32 v7.l, v27.h
	v_mov_b16_e32 v18.l, v20.h
	v_add3_u32 v25, v25, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v56, v56, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v22, v29, 0x7fff
	v_and_b32_e32 v22, 1, v59
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v59, v62, v62 :: v_dual_and_b32 v26, 1, v7
	v_mul_f32_e32 v29, v64, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v25.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v63, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v22, 0x7fff
	v_add3_u32 v22, v27, v26, 0x7fff
	v_mov_b16_e32 v26.l, v29.h
	v_mov_b16_e32 v26.h, v7.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v53, v53, v119 :: v_dual_mul_f32 v50, v50, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v25.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v61, v61 :: v_dual_and_b32 v26, 1, v26
	v_dual_mul_f32 v57, v57, v57 :: v_dual_max_f32 v54, 0, v54
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v53, 0, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v28.h
	v_and_b32_e32 v28, 1, v7
	v_mov_b16_e32 v7.l, v27.h
	v_mov_b16_e32 v61.l, v59.h
	v_mov_b16_e32 v61.h, v7.h
	v_add3_u32 v26, v29, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v60, v60
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v51, v51, v121 :: v_dual_mul_f32 v48, v48, v124
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v49, 0, v49
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v55, v55, v55 :: v_dual_and_b32 v60, 1, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v53, v53, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v28, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v49, v49, v49 :: v_dual_and_b32 v28, 1, v7
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v52, 0, v52 :: v_dual_max_f32 v51, 0, v51
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v45, v45, v126 :: v_dual_mul_f32 v42, v42, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v27, v28, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v51, v51, v51 :: v_dual_and_b32 v28, 1, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v26.h
	v_add3_u32 v26, v59, v60, 0x7fff
	v_mov_b16_e32 v7.l, v58.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v28, v29, v28, 0x7fff
	v_mov_b16_e32 v29.l, v57.h
	v_mov_b16_e32 v29.h, v7.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v41, v41, v130 :: v_dual_mul_f32 v38, v38, v133
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v45, 0, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v26.h
	v_and_b32_e32 v26, 1, v7
	v_mov_b16_e32 v7.l, v56.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v54, v54, v54 :: v_dual_and_b32 v29, 1, v29
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v41, 0, v41
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v45, v45, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v58, v26, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v37, v37, v134 :: v_dual_and_b32 v58, 1, v7
	v_mul_f32_e32 v34, v34, v137
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.l, v55.h
	v_mov_b16_e32 v59.h, v7.h
	v_mov_b16_e32 v7.l, v54.h
	v_mov_b16_e32 v26.l, v28.h
	v_add3_u32 v28, v57, v29, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v41, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v56, v58, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v37, 0, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v59
	v_and_b32_e32 v57, 1, v7
	v_mov_b16_e32 v29.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v52, v52 :: v_dual_mul_f32 v37, v37, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v55, v56, 0x7fff
	v_mov_b16_e32 v55.l, v53.h
	v_mov_b16_e32 v55.h, v7.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v28.h
	v_add3_u32 v54, v54, v57, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v50, v50, v50 :: v_dual_mul_f32 v47, v47, v125
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v44, v127
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v33, 0, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.l, v52.h
	v_and_b32_e32 v52, 1, v55
	v_and_b32_e32 v55, 1, v7
	v_mov_b16_e32 v56.l, v51.h
	v_mov_b16_e32 v56.h, v7.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v47, 0, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v50.h
	v_add3_u32 v28, v28, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v46, v46, v46 :: v_dual_and_b32 v55, 1, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v49.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v53, v52, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v48, v48, v48 :: v_dual_and_b32 v53, 1, v7
	v_mul_f32_e32 v47, v47, v47
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v43, v43, v128 :: v_dual_mul_f32 v40, v40, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v52.h
	v_and_b32_e32 v52, 1, v56
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v44, 0, v44 :: v_dual_max_f32 v43, 0, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v51, v55, 0x7fff
	v_mov_b16_e32 v7.l, v48.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v49, v49, v52, 0x7fff
	v_mov_b16_e32 v52.l, v47.h
	v_mov_b16_e32 v52.h, v7.h
	v_add3_u32 v50, v50, v53, 0x7fff
	v_mov_b16_e32 v50.l, v51.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v44, v44, v44 :: v_dual_and_b32 v51, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v46.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v39, v39, v132 :: v_dual_mul_f32 v36, v36, v135
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v43, v43, v43 :: v_dual_and_b32 v52, 1, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.l, v45.h
	v_mov_b16_e32 v53.h, v7.h
	v_add3_u32 v48, v48, v51, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v42, v42, v42 :: v_dual_and_b32 v51, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v44.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v39, 0, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v49.h
	v_add3_u32 v47, v47, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v40, v40, v40 :: v_dual_and_b32 v49, 1, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v46, v51, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v38, v38, v38 :: v_dual_and_b32 v51, 1, v7
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v35, v35, v136 :: v_dual_mul_f32 v32, v32, v139
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v47.h
	v_add3_u32 v45, v45, v49, 0x7fff
	v_mov_b16_e32 v47.l, v43.h
	v_mov_b16_e32 v47.h, v7.h
	v_mov_b16_e32 v7.l, v42.h
	v_add3_u32 v44, v44, v51, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v31, 0, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v45.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v36, v36, v36 :: v_dual_and_b32 v45, 1, v47
	v_dual_mul_f32 v34, v34, v34 :: v_dual_and_b32 v47, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v41.h
	v_mov_b16_e32 v49.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v39, v39, v39 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v43, v45, 0x7fff
	v_add3_u32 v42, v42, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v24, v24, v24 :: v_dual_and_b32 v47, 1, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v39.h
	v_mov_b16_e32 v7.l, v40.h
	v_mov_b16_e32 v42.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v41, v47, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v35, v35
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v43, 1, v49
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v45, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v38.h
	v_add3_u32 v39, v39, v43, 0x7fff
	v_mov_b16_e32 v43.l, v37.h
	v_mov_b16_e32 v43.h, v7.h
	v_add3_u32 v40, v40, v45, 0x7fff
	v_mov_b16_e32 v40.l, v41.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v41, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v36.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v43, 1, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v35.h
	v_mov_b16_e32 v45.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v38, v41, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v41, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v34.h
	v_mov_b16_e32 v38.l, v39.h
	v_add3_u32 v37, v37, v43, 0x7fff
	v_and_b32_e32 v39, 1, v45
	v_add3_u32 v36, v36, v41, 0x7fff
	v_and_b32_e32 v41, 1, v7
	v_mov_b16_e32 v37.l, v33.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v35, v35, v39, 0x7fff
	v_mov_b16_e32 v37.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e32 v7.l, v32.h
	v_mov_b16_e32 v34.l, v35.h
	v_and_b32_e32 v35, 1, v37
	v_mov_b16_e32 v39.l, v31.h
	v_mov_b16_e32 v39.h, v7.h
	v_and_b32_e32 v37, 1, v7
	v_mov_b16_e32 v7.l, v30.h
	v_add3_u32 v33, v33, v35, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v76, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v77, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v32, v37, 0x7fff
	v_and_b32_e32 v37, 1, v7
	v_mov_b16_e32 v43.l, v35.h
	v_mov_b16_e32 v43.h, v7.h
	v_add3_u32 v31, v31, v39, 0x7fff
	v_mov_b16_e32 v7.l, v41.h
	v_add3_u32 v30, v30, v37, 0x7fff
	v_mov_b16_e32 v32.l, v33.h
	v_and_b32_e32 v33, 1, v43
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v79, v79
	v_mul_f32_e32 v39, v78, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v31.h
	v_and_b32_e32 v31, 1, v7
	v_add3_u32 v33, v35, v33, 0x7fff
	v_mov_b16_e32 v7.l, v37.h
	v_mov_b16_e32 v35.l, v39.h
	v_mov_b16_e32 v35.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v80, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v41, v31, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v81, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v7
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v47.l, v43.h
	v_mov_b16_e32 v47.h, v7.h
	v_mov_b16_e32 v7.l, v41.h
	v_mov_b16_e32 v31.l, v33.h
	v_add3_u32 v33, v39, v35, 0x7fff
	v_add3_u32 v35, v37, v45, 0x7fff
	v_and_b32_e32 v37, 1, v47
	v_and_b32_e32 v39, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v21, v21, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v7.l, v23.h
	v_add3_u32 v33, v43, v37, 0x7fff
	v_add3_u32 v37, v41, v39, 0x7fff
	v_mov_b16_e32 v39.l, v24.h
	v_mov_b16_e32 v39.h, v7.h
	v_mov_b16_e32 v41.l, v21.h
	v_mov_b16_e32 v37.l, v33.h
	v_mov_b16_e32 v41.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v39
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v24, v33, 0x7fff
	v_and_b32_e32 v33, 1, v41
	v_mov_b16_e32 v41.l, v17.h
	v_mov_b16_e32 v7.l, v19.h
	v_add3_u32 v23, v23, v39, 0x7fff
	v_mov_b16_e32 v23.l, v24.h
	v_add3_u32 v21, v21, v33, 0x7fff
	v_and_b32_e32 v24, 1, v41
	v_and_b32_e32 v39, 1, v7
	v_mov_b16_e32 v7.l, v16.h
	v_mov_b16_e32 v33.l, v10.h
	v_mov_b16_e32 v33.h, v7.h
	v_add3_u32 v17, v17, v24, 0x7fff
	v_mov_b16_e32 v24.l, v13.h
	v_mov_b16_e32 v24.h, v7.h
	v_add3_u32 v19, v19, v39, 0x7fff
	v_mov_b16_e32 v19.l, v21.h
	v_and_b32_e32 v21, 1, v7
	v_mov_b16_e32 v7.l, v14.h
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v16, v21, 0x7fff
	v_and_b32_e32 v21, 1, v7
	v_mov_b16_e32 v7.l, v8.h
	v_add3_u32 v13, v13, v24, 0x7fff
	v_add3_u32 v10, v10, v33, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_add3_u32 v14, v14, v21, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b32_e32 v17, v29, v27, vcc_lo
	v_dual_cndmask_b32 v33, v42, v38 :: v_dual_cndmask_b32 v24, v28, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v0, v8, v7, 0x7fff
	v_mov_b16_e32 v0.l, v10.h
	v_dual_cndmask_b32 v8, v12, v9 :: v_dual_cndmask_b32 v7, v9, v12
	v_cndmask_b32_e32 v10, v15, v11, vcc_lo
	v_dual_cndmask_b32 v9, v11, v15 :: v_dual_cndmask_b32 v12, v22, v18
	v_dual_cndmask_b32 v11, v18, v22 :: v_dual_cndmask_b32 v18, v27, v29
	v_dual_cndmask_b32 v29, v38, v42 :: v_dual_cndmask_b32 v38, v32, v36
	v_cndmask_b32_e32 v32, v36, v32, vcc_lo
	v_cndmask_b32_e32 v36, v30, v34, vcc_lo
	v_cndmask_b32_e32 v30, v34, v30, vcc_lo
	v_dual_cndmask_b32 v34, v37, v31 :: v_dual_cndmask_b32 v31, v31, v37
	v_cndmask_b32_e32 v37, v23, v35, vcc_lo
	v_cndmask_b32_e32 v23, v35, v23, vcc_lo
	v_dual_cndmask_b32 v39, v14, v19 :: v_dual_cndmask_b32 v14, v19, v14
	v_mov_b32_e32 v19, 0x5410
	v_dual_mov_b32 v35, 0x7632 :: v_dual_cndmask_b32 v22, v48, v28
	v_cndmask_b32_e32 v27, v40, v44, vcc_lo
	v_cndmask_b32_e32 v28, v44, v40, vcc_lo
	v_cndmask_b32_e32 v40, v0, v16, vcc_lo
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v16, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v19, vcc_lo
	v_cndmask_b32_e32 v19, 0x3276, v35, vcc_lo
	v_permlanex16_b32 v35, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v13, v20, v25, vcc_lo
	v_cndmask_b32_e32 v15, v25, v20, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v9, v19, 8, v19
	v_cndmask_b32_e32 v20, v54, v26, vcc_lo
	v_cndmask_b32_e32 v21, v26, v54, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v26, v50, v46 :: v_dual_and_b32 v7, 0x540054, v7
	v_and_b32_e32 v9, 0x760076, v9
	v_permlanex16_b32 v41, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v25, v46, v50, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v18, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v7
	v_and_b32_e32 v44, 0x7060706, v9
	v_permlanex16_b32 v24, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v28, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v33, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v14, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v31, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v23, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v16, v8, v43
	v_perm_b32 v8, v16, v8, v44
	v_perm_b32 v9, v35, v10, v43
	v_perm_b32 v10, v35, v10, v44
	v_perm_b32 v11, v41, v12, v43
	v_perm_b32 v12, v41, v12, v44
	v_perm_b32 v13, v42, v15, v43
	v_perm_b32 v14, v42, v15, v44
	v_perm_b32 v15, v18, v17, v43
	v_perm_b32 v16, v18, v17, v44
	v_perm_b32 v17, v19, v20, v43
	v_perm_b32 v18, v19, v20, v44
	v_perm_b32 v19, v21, v22, v43
	v_perm_b32 v20, v21, v22, v44
	v_perm_b32 v21, v24, v25, v43
	v_perm_b32 v22, v24, v25, v44
	v_perm_b32 v23, v26, v27, v43
	v_perm_b32 v24, v26, v27, v44
	v_perm_b32 v25, v28, v29, v43
	v_perm_b32 v26, v28, v29, v44
	v_perm_b32 v29, v30, v36, v43
	v_perm_b32 v30, v30, v36, v44
	v_perm_b32 v35, v46, v39, v43
	v_perm_b32 v36, v46, v39, v44
	v_add_lshl_u32 v39, v4, v6, 1
	s_mov_b32 s2, s6
	v_perm_b32 v27, v32, v38, v43
	v_perm_b32 v28, v32, v38, v44
	v_perm_b32 v31, v33, v34, v43
	v_perm_b32 v32, v33, v34, v44
	v_perm_b32 v33, v45, v37, v43
	v_perm_b32 v34, v45, v37, v44
	v_perm_b32 v37, v0, v40, v43
	v_perm_b32 v38, v0, v40, v44
	v_add_lshl_u32 v0, v3, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v1, s[0:3], 0 offen
	buffer_store_b128 v[11:14], v1, s[0:3], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[0:3], 0 offen
	v_add_lshl_u32 v1, v4, v5, 1
	v_add_lshl_u32 v5, v3, v5, 1
	v_add_lshl_u32 v4, v4, v2, 1
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[0:3], 0 offen
	buffer_store_b128 v[23:26], v1, s[0:3], 0 offen
	buffer_store_b128 v[27:30], v5, s[0:3], 0 offen
	buffer_store_b128 v[31:34], v4, s[0:3], 0 offen
	buffer_store_b128 v[35:38], v2, s[0:3], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 215
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9932
; TotalNumSgprs: 34
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
