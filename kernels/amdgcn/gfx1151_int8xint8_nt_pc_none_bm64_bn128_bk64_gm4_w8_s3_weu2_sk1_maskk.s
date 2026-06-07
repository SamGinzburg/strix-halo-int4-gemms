	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v30, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v42, 0x60, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v41, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
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
	s_lshl_b32 s10, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s10
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s9, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s8, 0, s7
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v30
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[3:4], null, s28, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s8, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s8
	s_add_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s9
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
	s_mov_b32 s5, 0
	s_cselect_b32 s4, s8, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s8, s4, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s7, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s9, s28, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s24, s3, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s10
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s9, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s2, s24, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_lshl_b32 s3, s28, 6
	s_add_i32 s2, s2, s7
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s27
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[4:5], null, s26, s28, v[3:4]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s2, v3
	v_add3_u32 v3, s2, s3, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s4, s7, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v7, s4, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s7, v4
	v_add_nc_u32_e32 v4, s4, v4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, 64, v5
	v_add_nc_u32_e32 v11, 64, v3
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s3, s28, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[6:9], v6, s[16:19], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v22, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e32 v26, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[10:13], v5, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v3, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[18:21], v4, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[22:25], v22, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v26, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v4, 5, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v3
	v_xor_b32_e32 v51, v30, v3
	v_lshlrev_b32_e32 v3, 6, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v30, 0, v51
	s_waitcnt vmcnt(5)
	ds_store_b128 v30, v[6:9] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v30, v[10:13]
	s_waitcnt vmcnt(3)
	ds_store_b128 v30, v[14:17] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v30, v[18:21] offset:20480
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v30, v[22:25] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v30, v[26:29] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v6, 48, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v43, 0x430, v5, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v47, v4, v6, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v44, 16, v43
	v_xor_b32_e32 v45, 32, v43
	v_xor_b32_e32 v46, 48, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v48, 16, v47
	v_xor_b32_e32 v50, 32, v47
	v_xor_b32_e32 v49, 48, v47
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr49
.LBB0_3:                                ; %Flow89
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v6, s8, 7, v2
	s_lshl_b32 s0, s6, 7
	v_and_or_b32 v43, 0x430, v5, v3
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v5, 48, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v6, s0, v6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s9, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v53, s7, v1, 0x80
	v_or3_b32 v47, v4, v5, v3
	s_mov_b32 s5, s4
	v_or_b32_e32 v3, 64, v6
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v1, s26, v2
	v_mul_lo_u32 v52, s28, v3
	v_mul_lo_u32 v54, s28, v6
	v_xor_b32_e32 v44, 16, v43
	v_xor_b32_e32 v45, 32, v43
	v_mul_lo_u32 v55, s28, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v46, 48, v43
	v_xor_b32_e32 v48, 16, v47
	v_xor_b32_e32 v50, 32, v47
	v_xor_b32_e32 v49, 48, v47
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v11, 0
	s_add_i32 s29, s1, -2
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v56, v55, v53
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v53
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v57, v54, v53
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v58, v52, v53
	s_mov_b32 s6, s3
	s_mov_b32 s3, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	s_mov_b32 s0, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v59, s6, v46
	buffer_load_b128 v[88:91], v56, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[92:95], v57, s[20:23], 0 offen
	buffer_load_b128 v[96:99], v58, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v56, s6, v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v60, s0, v47
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v57, s6, v44
	v_add_nc_u32_e32 v58, s6, v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v61, s0, v48
	v_add_nc_u32_e32 v62, s0, v50
	v_add_nc_u32_e32 v63, s0, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[72:75], v56
	ds_load_b128 v[100:103], v56 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[80:83], v60
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[104:107], v57
	ds_load_b128 v[108:111], v57 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[112:115], v60 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[116:119], v58
	ds_load_b128 v[120:123], v58 offset:2048
	ds_load_b128 v[124:127], v59
	ds_load_b128 v[128:131], v59 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[132:135], v61
	ds_load_b128 v[136:139], v61 offset:4096
	ds_load_b128 v[140:143], v62
	ds_load_b128 v[144:147], v62 offset:4096
	ds_load_b128 v[148:151], v63
	ds_load_b128 v[152:155], v63 offset:4096
	s_mov_b32 s4, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[80:83], v[72:75], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s5, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[64:71], v[112:115], v[72:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[80:83], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[112:115], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[132:135], v[104:107], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[136:139], v[104:107], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[132:135], v[108:111], v[72:79] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[136:139], v[108:111], v[80:87] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[140:143], v[116:119], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[144:147], v[116:119], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[140:143], v[120:123], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[144:147], v[120:123], v[80:87] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s1, s6, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[148:151], v[124:127], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[152:155], v[124:127], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[148:151], v[128:131], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[152:155], v[128:131], v[80:87] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s29, s29, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
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
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v56 :: v_dual_add_nc_u32 v53, 64, v53
	v_dual_add_f32 v27, v27, v69 :: v_dual_add_nc_u32 v156, s6, v51
	v_dual_add_f32 v36, v36, v61 :: v_dual_add_nc_u32 v157, s1, v51
	v_dual_add_f32 v40, v40, v57 :: v_dual_add_f32 v39, v39, v58
	v_dual_add_f32 v38, v38, v59 :: v_dual_add_f32 v37, v37, v60
	v_dual_add_f32 v35, v35, v62 :: v_dual_add_f32 v34, v34, v63
	v_add_f32_e32 v33, v33, v64
	v_dual_add_f32 v31, v31, v65 :: v_dual_add_f32 v30, v30, v66
	v_dual_add_f32 v29, v29, v67 :: v_dual_add_f32 v28, v28, v68
	v_dual_add_f32 v25, v25, v71 :: v_dual_add_f32 v26, v26, v70
	v_dual_add_f32 v9, v9, v72 :: v_dual_add_f32 v10, v10, v73
	v_dual_add_f32 v21, v21, v74 :: v_dual_add_f32 v22, v22, v75
	v_dual_add_f32 v13, v13, v76 :: v_dual_add_f32 v14, v14, v77
	v_dual_add_f32 v17, v17, v78 :: v_dual_add_f32 v18, v18, v79
	v_dual_add_f32 v19, v19, v80 :: v_dual_add_f32 v20, v20, v81
	v_dual_add_f32 v23, v23, v82 :: v_dual_add_f32 v24, v24, v83
	v_dual_add_f32 v15, v15, v84 :: v_dual_add_f32 v16, v16, v85
	v_dual_add_f32 v11, v11, v86 :: v_dual_add_f32 v12, v12, v87
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s0, s6, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s29, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v156, v[88:91] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v157, v[92:95]
	s_waitcnt vmcnt(0)
	ds_store_b128 v157, v[96:99] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s5, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v13, v9
	v_dual_mov_b32 v22, v10 :: v_dual_mov_b32 v21, v9
	v_dual_mov_b32 v18, v10 :: v_dual_mov_b32 v17, v9
	v_dual_mov_b32 v20, v10 :: v_dual_mov_b32 v19, v9
	v_dual_mov_b32 v16, v10 :: v_dual_mov_b32 v15, v9
	v_dual_mov_b32 v24, v10 :: v_dual_mov_b32 v23, v9
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v11, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v35, v9
	v_mov_b32_e32 v36, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v40, v9
	v_mov_b32_e32 v32, v9
.LBB0_8:                                ; %._crit_edge
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v51, s5, v50
	v_add_nc_u32_e32 v1, s5, v48
	v_add_nc_u32_e32 v59, s5, v49
	v_add_nc_u32_e32 v2, s5, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s3, v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[75:78], v51
	ds_load_b128 v[79:82], v1 offset:4096
	ds_load_b128 v[83:86], v1
	ds_load_b128 v[87:90], v2 offset:4096
	ds_load_b128 v[91:94], v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s3, v44
	ds_load_b128 v[95:98], v3 offset:2048
	ds_load_b128 v[67:70], v3
	v_add_nc_u32_e32 v52, s3, v45
	ds_load_b128 v[99:102], v1 offset:2048
	ds_load_b128 v[103:106], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v60, s3, v46
	v_mov_b32_e32 v5, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[107:110], v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[111:114], v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[115:118], v60
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[119:122], v51 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[123:126], v52 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[127:130], v59 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[131:134], v60 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[91:94], v[67:70], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[83:86], v[103:106], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[75:78], v[107:110], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[111:114], v[115:118], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[87:90], v[67:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[95:98], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v52, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[79:82], v[103:106], v[59:66] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[67:74], v[83:86], v[99:102], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v54, v56
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[119:122], v[107:110], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v55, v57
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[123:126], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[87:90], v[95:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[127:130], v[115:118], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v52, v58
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[111:114], v[131:134], v[67:74] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v37, v37, v53 :: v_dual_add_f32 v36, v36, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v59
	v_cvt_f32_i32_e32 v54, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v62
	v_wmma_i32_16x16x16_iu8 v[1:8], v[79:82], v[99:102], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v30, v30, v54 :: v_dual_add_f32 v29, v29, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v63
	v_wmma_i32_16x16x16_iu8 v[1:8], v[119:122], v[123:126], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v64
	v_cvt_f32_i32_e32 v54, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v65
	v_wmma_i32_16x16x16_iu8 v[1:8], v[127:130], v[131:134], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v10, v10, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v67
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v22, v22, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v25, v25, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v9, v9, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v69
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v13, v13, v55 :: v_dual_add_f32 v20, v20, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v21, v21, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v24, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v4, v7
	v_cvt_f32_i32_e32 v5, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v19, v19, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v14, v14, v54
	v_dual_add_f32 v18, v18, v53 :: v_dual_add_f32 v17, v17, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v15, v15, v2 :: v_dual_add_f32 v16, v16, v1
	v_dual_add_f32 v12, v12, v3 :: v_dual_add_f32 v11, v11, v4
	v_add_f32_e32 v32, v32, v5
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v75, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v45, s0, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v47, s1, v47
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v43, s0, v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v5, s1, v50
	ds_load_b128 v[83:86], v47 offset:4096
	ds_load_b128 v[87:90], v47
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v44, s0, v44
	ds_load_b128 v[91:94], v43 offset:2048
	ds_load_b128 v[67:70], v43
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v48, s1, v48
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[75:78], v48 offset:4096
	ds_load_b128 v[79:82], v48
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[103:106], v44 offset:2048
	ds_load_b128 v[107:110], v44
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v51, s1, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, s0, v46
	ds_load_b128 v[95:98], v45 offset:2048
	ds_load_b128 v[99:102], v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v49, s10
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v47, s8
	v_dual_mov_b32 v46, s7 :: v_dual_mov_b32 v45, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[111:114], v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v44, s5 :: v_dual_mov_b32 v43, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[115:118], v51
	ds_load_b128 v[119:122], v51 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[123:126], v52 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[87:90], v[67:70], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[83:86], v[67:70], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[87:90], v[91:94], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[83:86], v[91:94], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[79:82], v[107:110], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[75:78], v[107:110], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[103:106], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[75:78], v[103:106], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[5:8], v[99:102], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[1:4], v[99:102], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[5:8], v[95:98], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[1:4], v[95:98], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[111:114], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[119:122], v[111:114], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[115:118], v[123:126], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[119:122], v[123:126], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v51
	v_cvt_f32_i32_e32 v3, v52
	v_cvt_f32_i32_e32 v4, v53
	v_cvt_f32_i32_e32 v5, v54
	v_cvt_f32_i32_e32 v6, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v51, v58
	v_cvt_f32_i32_e32 v52, v59
	v_cvt_f32_i32_e32 v53, v60
	v_cvt_f32_i32_e32 v54, v61
	v_cvt_f32_i32_e32 v55, v62
	v_cvt_f32_i32_e32 v56, v63
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v58, v65
	v_cvt_f32_i32_e32 v59, v66
	v_cvt_f32_i32_e32 v60, v67
	v_cvt_f32_i32_e32 v61, v68
	v_cvt_f32_i32_e32 v64, v69
	v_cvt_f32_i32_e32 v65, v70
	v_cvt_f32_i32_e32 v62, v71
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v66, v73
	v_cvt_f32_i32_e32 v67, v74
	v_cvt_f32_i32_e32 v68, v43
	v_cvt_f32_i32_e32 v69, v44
	v_cvt_f32_i32_e32 v72, v45
	v_cvt_f32_i32_e32 v73, v46
	v_cvt_f32_i32_e32 v70, v47
	v_cvt_f32_i32_e32 v71, v48
	v_cvt_f32_i32_e32 v74, v49
	v_cvt_f32_i32_e32 v75, v50
.LBB0_12:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v43, v0, 4, 1
	v_lshrrev_b32_e32 v42, 1, v42
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v2, v2, 16, v41
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or3_b32 v41, v43, v42, s24
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v85, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v42, 32, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v43, s26, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v39, v4 :: v_dual_lshlrev_b32 v41, 1, v41
	v_dual_add_f32 v51, v34, v51 :: v_dual_add_f32 v52, v33, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v44, s26, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v86, v32, v1 :: v_dual_lshlrev_b32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v45, 4, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v40, v3 :: v_dual_lshlrev_b32 v44, 1, v44
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v46, 8, v41
	v_or_b32_e32 v47, 12, v41
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	v_or_b32_e32 v48, 16, v41
	v_or_b32_e32 v49, 20, v41
	v_or_b32_e32 v50, 24, v41
	v_or_b32_e32 v76, 28, v41
	s_clause 0x7
	buffer_load_u16 v77, v41, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	v_or_b32_e32 v79, 0x84, v41
	v_or_b32_e32 v78, 0x80, v41
	v_or_b32_e32 v81, 0x8c, v41
	v_or_b32_e32 v80, 0x88, v41
	v_or_b32_e32 v82, 0x90, v41
	v_or_b32_e32 v83, 0x94, v41
	v_or_b32_e32 v84, 0x98, v41
	v_or_b32_e32 v41, 0x9c, v41
	s_clause 0x7
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v53, v31, v53 :: v_dual_add_f32 v54, v30, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v88, 0x7632 :: v_dual_and_b32 v85, 56, v85
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s26, s25
	v_mul_lo_u32 v2, s25, v2
	s_add_i32 s0, s0, s24
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v55, v29, v55 :: v_dual_add_f32 v56, v28, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v52, s2
	v_cndmask_b32_e64 v31, v31, v53, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v52, s0, v85
	v_add3_u32 v53, s0, v85, 64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v64, v21, v64 :: v_dual_add_f32 v65, v22, v65
	v_dual_add_f32 v66, v17, v66 :: v_dual_add_f32 v67, v18, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v87, 0x5410
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v55, s2
	v_cndmask_b32_e64 v28, v28, v56, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v55, v52, v2, 1
	v_add_lshl_u32 v56, v53, v2, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v65, s2
	v_cndmask_b32_e64 v17, v17, v66, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v57, v27, v57 :: v_dual_add_f32 v58, v26, v58
	v_dual_add_f32 v59, v25, v59 :: v_dual_add_f32 v68, v19, v68
	v_dual_add_f32 v60, v9, v60 :: v_dual_add_f32 v61, v10, v61
	v_dual_add_f32 v62, v13, v62 :: v_dual_add_f32 v63, v14, v63
	v_dual_add_f32 v73, v24, v73 :: v_dual_add_f32 v70, v15, v70
	v_dual_add_f32 v71, v16, v71 :: v_dual_add_f32 v74, v11, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v67, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v38, v5 :: v_dual_add_f32 v6, v37, v6
	v_dual_add_f32 v7, v36, v7 :: v_dual_add_f32 v8, v35, v8
	v_dual_add_f32 v69, v20, v69 :: v_dual_add_f32 v72, v23, v72
	v_dual_add_f32 v75, v12, v75 :: v_dual_and_b32 v0, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v57, s2
	v_cndmask_b32_e64 v26, v26, v58, s2
	v_cndmask_b32_e64 v25, v25, v59, s2
	v_cndmask_b32_e64 v10, v10, v61, s2
	v_cndmask_b32_e64 v9, v9, v60, s2
	v_cndmask_b32_e64 v21, v21, v64, s2
	v_cndmask_b32_e64 v14, v14, v63, s2
	v_cndmask_b32_e64 v13, v13, v62, s2
	v_cndmask_b32_e64 v19, v19, v68, s2
	v_cndmask_b32_e64 v16, v16, v71, s2
	v_cndmask_b32_e64 v15, v15, v70, s2
	v_cndmask_b32_e64 v32, v32, v86, s2
	v_cndmask_b32_e64 v3, v40, v3, s2
	v_cndmask_b32_e64 v6, v37, v6, s2
	v_cndmask_b32_e64 v7, v36, v7, s2
	v_cndmask_b32_e64 v20, v20, v69, s2
	v_cndmask_b32_e64 v4, v39, v4, s2
	v_cndmask_b32_e64 v5, v38, v5, s2
	v_cndmask_b32_e64 v30, v30, v54, s2
	v_cndmask_b32_e64 v24, v24, v73, s2
	v_cndmask_b32_e64 v23, v23, v72, s2
	v_cndmask_b32_e64 v12, v12, v75, s2
	v_cndmask_b32_e64 v11, v11, v74, s2
	v_cndmask_b32_e64 v8, v35, v8, s2
	v_cndmask_b32_e64 v34, v34, v51, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	s_mov_b32 s39, s7
	s_mov_b32 s38, s6
	s_mov_b32 s31, 0x76543210
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v42, s25, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v1.h
	v_mov_b16_e32 v35.h, v1.h
	v_mov_b16_e32 v37.h, v1.h
	v_mov_b16_e32 v40.h, v1.h
	v_mov_b16_e32 v38.h, v1.h
	v_mov_b16_e32 v51.h, v1.h
	v_mov_b16_e32 v54.h, v1.h
	v_mov_b16_e32 v39.h, v1.h
	v_add_lshl_u32 v52, v52, v42, 1
	s_and_b32 s37, s37, 0xffff
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v2, 16, v43
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v43, 16, v44
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v44, 16, v45
	v_lshlrev_b32_e32 v45, 16, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v65, v45, v2
	v_mul_f32_e32 v66, v44, v2
	v_mul_f32_e32 v44, v43, v44
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v45, v43, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v32, v32, v65 :: v_dual_mul_f32 v67, v46, v2
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v46, v43, v46 :: v_dual_lshlrev_b32 v49, 16, v49
	v_mul_f32_e32 v68, v47, v2
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v47, v43, v47 :: v_dual_lshlrev_b32 v50, 16, v50
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v70, v49, v2 :: v_dual_lshlrev_b32 v57, 16, v76
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v69, v48, v2 :: v_dual_lshlrev_b32 v58, 16, v79
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v48, v43, v48 :: v_dual_lshlrev_b32 v59, 16, v78
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v71, v50, v2 :: v_dual_lshlrev_b32 v60, 16, v81
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v72, v57, v2 :: v_dual_lshlrev_b32 v61, 16, v80
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v49, v43, v49 :: v_dual_lshlrev_b32 v62, 16, v83
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v63, 16, v82
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v50, v43, v50 :: v_dual_lshlrev_b32 v41, 16, v41
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v43, v57 :: v_dual_lshlrev_b32 v64, 16, v84
	v_mul_f32_e32 v73, v59, v2
	v_dual_mul_f32 v74, v58, v2 :: v_dual_mul_f32 v59, v43, v59
	v_dual_mul_f32 v75, v61, v2 :: v_dual_mul_f32 v10, v10, v44
	v_dual_mul_f32 v76, v60, v2 :: v_dual_mul_f32 v61, v43, v61
	v_mul_f32_e32 v60, v43, v60
	v_dual_mul_f32 v77, v63, v2 :: v_dual_mul_f32 v4, v4, v67
	v_dual_mul_f32 v78, v62, v2 :: v_dual_mul_f32 v63, v43, v63
	v_dual_mul_f32 v79, v64, v2 :: v_dual_mul_f32 v22, v22, v47
	v_dual_mul_f32 v2, v41, v2 :: v_dual_mul_f32 v41, v43, v41
	v_dual_mul_f32 v58, v43, v58 :: v_dual_mul_f32 v9, v9, v45
	v_dual_mul_f32 v62, v43, v62 :: v_dual_mul_f32 v5, v5, v68
	v_dual_mul_f32 v43, v43, v64 :: v_dual_mul_f32 v6, v6, v69
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v3, v3, v66 :: v_dual_mul_f32 v14, v14, v49
	v_dual_mul_f32 v7, v7, v70 :: v_dual_mul_f32 v34, v34, v72
	v_dual_mul_f32 v17, v17, v50 :: v_dual_mul_f32 v30, v30, v75
	v_dual_mul_f32 v29, v29, v76 :: v_dual_mul_f32 v16, v16, v62
	v_dual_mul_f32 v23, v23, v61 :: v_dual_mul_f32 v26, v26, v79
	v_dual_mul_f32 v15, v15, v63 :: v_dual_mul_f32 v2, v25, v2
	v_dual_mul_f32 v21, v21, v46 :: v_dual_mul_f32 v8, v8, v71
	v_dual_mul_f32 v27, v27, v78 :: v_dual_mul_f32 v12, v12, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v25, v32, 16, 1
	v_bfe_u32 v41, v3, 16, 1
	v_bfe_u32 v45, v6, 16, 1
	v_bfe_u32 v46, v7, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v13, v13, v48 :: v_dual_mul_f32 v18, v18, v57
	v_dual_mul_f32 v33, v33, v73 :: v_dual_mul_f32 v20, v20, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v10.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v11, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v43, v4, 16, 1
	v_bfe_u32 v44, v5, 16, 1
	v_bfe_u32 v57, v30, 16, 1
	v_bfe_u32 v58, v29, 16, 1
	v_bfe_u32 v61, v26, 16, 1
	v_bfe_u32 v62, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_cmp_o_f32_e64 s0, v3, v3
	v_mov_b16_e32 v36.l, v21.h
	v_cmp_o_f32_e64 s7, v6, v6
	v_cmp_o_f32_e64 s8, v7, v7
	v_bfe_u32 v47, v8, 16, 1
	v_bfe_u32 v48, v34, 16, 1
	v_add3_u32 v25, v32, v25, 0x7fff
	v_add3_u32 v3, v3, v41, 0x7fff
	v_add3_u32 v6, v6, v45, 0x7fff
	v_add3_u32 v7, v7, v46, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v19, v19, v59 :: v_dual_mul_f32 v28, v28, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v5, v5
	v_cmp_o_f32_e64 s19, v30, v30
	v_cmp_o_f32_e64 s20, v29, v29
	v_cmp_o_f32_e64 s27, v26, v26
	v_cmp_o_f32_e64 s28, v2, v2
	v_and_b32_e32 v32, 1, v1
	v_add3_u32 v4, v4, v43, 0x7fff
	v_add3_u32 v5, v5, v44, 0x7fff
	v_mov_b16_e32 v1.l, v22.h
	v_add3_u32 v30, v30, v57, 0x7fff
	v_add3_u32 v29, v29, v58, 0x7fff
	v_add3_u32 v26, v26, v61, 0x7fff
	v_add3_u32 v2, v2, v62, 0x7fff
	v_mov_b16_e32 v35.l, v9.h
	v_mov_b16_e32 v37.l, v13.h
	v_cmp_o_f32_e64 s11, v8, v8
	v_cmp_o_f32_e64 s12, v34, v34
	v_add3_u32 v8, v8, v47, 0x7fff
	v_add3_u32 v34, v34, v48, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v31, v31, v74 :: v_dual_and_b32 v36, 1, v36
	v_mul_f32_e32 v24, v24, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v59, v28, 16, 1
	v_bfe_u32 v60, v27, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s4
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s19
	v_cndmask_b16 v25.h, 0x7fff, v29.h, s20
	v_cndmask_b16 v2.l, 0x7fff, v26.h, s27
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s28
	v_and_b32_e32 v5, 1, v1
	v_cmp_o_f32_e64 s6, v21, v21
	v_mov_b16_e32 v40.l, v23.h
	v_add3_u32 v21, v21, v36, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s11
	v_cndmask_b16 v8.h, 0x7fff, v34.h, s12
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v38.l, v17.h
	v_cmp_o_f32_e64 s23, v28, v28
	v_cmp_o_f32_e64 s24, v27, v27
	v_add3_u32 v28, v28, v59, 0x7fff
	v_add3_u32 v27, v27, v60, 0x7fff
	v_add3_u32 v5, v22, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	v_cmp_o_f32_e64 s2, v9, v9
	v_cmp_o_f32_e64 s10, v13, v13
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v10, v10, v32, 0x7fff
	v_mov_b16_e32 v1.l, v14.h
	v_cndmask_b16 v5.l, 0x7fff, v21.h, s6
	v_cndmask_b32_e32 v21, v6, v3, vcc_lo
	v_dual_cndmask_b32 v3, v3, v6 :: v_dual_cndmask_b32 v6, v8, v4
	v_add3_u32 v9, v9, v35, 0x7fff
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_add3_u32 v7, v13, v37, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s23
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s24
	v_and_b32_e32 v38, 1, v38
	v_cmp_o_f32_e64 s22, v23, v23
	v_add3_u32 v23, v23, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s2
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s10
	v_and_b32_e32 v9, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	v_bfe_u32 v49, v33, 16, 1
	v_bfe_u32 v50, v31, 16, 1
	v_add3_u32 v13, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s9, v14, v14
	v_mov_b16_e32 v51.l, v15.h
	v_mov_b16_e32 v54.l, v11.h
	v_cndmask_b16 v13.l, 0x7fff, v23.h, s22
	v_cndmask_b32_e32 v23, 0x1054, v87, vcc_lo
	v_add3_u32 v9, v14, v9, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v20.h
	v_cmp_o_f32_e64 s15, v33, v33
	v_cmp_o_f32_e64 s16, v31, v31
	v_mov_b16_e32 v39.l, v19.h
	v_add3_u32 v33, v33, v49, 0x7fff
	v_add3_u32 v31, v31, v50, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_cmp_o_f32_e64 s13, v18, v18
	v_dual_cndmask_b32 v22, v2, v25 :: v_dual_and_b32 v41, 1, v51
	v_dual_cndmask_b32 v2, v25, v2 :: v_dual_cndmask_b32 v25, 0x3276, v88
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s9
	v_and_b32_e32 v43, 1, v54
	v_add3_u32 v9, v18, v14, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	v_cmp_o_f32_e64 s14, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v33.h, s15
	v_cndmask_b16 v17.h, 0x7fff, v31.h, s16
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e64 s17, v20, v20
	v_cmp_o_f32_e64 s30, v11, v11
	v_cndmask_b16 v10.h, 0x7fff, v9.h, s13
	v_add3_u32 v9, v20, v14, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v16.h
	v_cndmask_b32_e32 v20, v7, v0, vcc_lo
	v_add3_u32 v11, v11, v43, 0x7fff
	v_cmp_o_f32_e64 s18, v19, v19
	v_cndmask_b32_e32 v8, v27, v17, vcc_lo
	v_add3_u32 v19, v19, v39, 0x7fff
	v_cmp_o_f32_e64 s21, v24, v24
	v_cmp_o_f32_e64 s26, v15, v15
	v_add3_u32 v15, v15, v41, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v11.h, s30
	v_permlanex16_b32 v26, v2, s31, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v23, 8, v23
	v_lshl_or_b32 v23, v25, 8, v25
	v_cndmask_b16 v11.h, 0x7fff, v9.h, s17
	v_add3_u32 v9, v24, v14, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v12.h
	v_cndmask_b16 v10.l, 0x7fff, v13.h, s14
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s18
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s26
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s5
	v_and_b32_e32 v18, 0x760076, v23
	v_cndmask_b16 v13.h, 0x7fff, v9.h, s21
	v_and_b32_e32 v9, 1, v1
	v_cmp_o_f32_e64 s29, v12, v12
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	v_lshl_or_b32 v7, v18, 4, v18
	v_cmp_o_f32_e64 s25, v16, v16
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cndmask_b32_e32 v17, v17, v27, vcc_lo
	v_permlanex16_b32 v3, v3, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v19.h, 0x7fff, v9.h, s29
	v_and_b32_e32 v24, 0x7060706, v7
	v_add3_u32 v7, v16, v14, 0x7fff
	v_permlanex16_b32 v17, v17, s31, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v16, v13, v19 :: v_dual_cndmask_b32 v19, v19, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v15.h, 0x7fff, v7.h, s25
	v_and_b32_e32 v2, 0x540054, v2
	v_perm_b32 v1, v3, v21, v24
	v_permlanex16_b32 v16, v16, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v26, v22, v24
	v_cndmask_b32_e32 v12, v11, v15, vcc_lo
	v_cndmask_b32_e32 v15, v15, v11, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_dual_cndmask_b32 v18, v10, v5 :: v_dual_cndmask_b32 v5, v5, v10
	v_permlanex16_b32 v10, v0, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 0x5040504, v2
	v_permlanex16_b32 v14, v5, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v17, v8, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v9, v10, v20, v24
	v_perm_b32 v0, v3, v21, v23
	v_perm_b32 v2, v4, v6, v23
	v_perm_b32 v3, v4, v6, v24
	v_perm_b32 v4, v17, v8, v23
	v_permlanex16_b32 v17, v12, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v26, v22, v23
	v_perm_b32 v8, v10, v20, v23
	v_perm_b32 v10, v14, v18, v23
	v_perm_b32 v11, v14, v18, v24
	v_perm_b32 v12, v17, v15, v23
	v_perm_b32 v13, v17, v15, v24
	v_perm_b32 v14, v16, v19, v23
	v_perm_b32 v15, v16, v19, v24
	v_add_lshl_u32 v16, v53, v42, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v55, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v56, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v52, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v16, s[36:39], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_inst_pref_size 51
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 158
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6480
; TotalNumSgprs: 42
; NumVgprs: 158
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     158
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
