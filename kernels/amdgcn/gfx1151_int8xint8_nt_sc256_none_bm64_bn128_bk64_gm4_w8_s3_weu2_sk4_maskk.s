	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v13, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v14, 0x60, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v9, 48, v13
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s6, s10
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s17, s6, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s17
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s18, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_sub_i32 s11, 0, s6
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[10:11], null, s7, v1, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v73, s7, 6, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s10, s10, s4
	s_mov_b32 s11, 0x31027000
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s17
	s_mul_i32 s18, s4, s6
	s_ashr_i32 s19, s10, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s20, s5, s6
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s18, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s7, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s6, v9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s18, s4
.Ltmp19:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v1
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0xff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s45, s33, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[11:12], null, s34, s7, v[10:11]
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 30 is_stmt 1              ; generate_amdgcn.py:350:30
	s_add_i32 s2, s45, s6
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s18, 0x1ff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s2, v10
	v_add_nc_u32_e32 v3, s2, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s42, s6, 0x100
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s6, v11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s42, v9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, 0x100, v1
	v_add_nc_u32_e32 v6, 0x100, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s4, s7, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s42, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_mov_b32 s27, s11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[28:31], v2, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 0x80, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_cndmask_b32 v5, 0x80000000, v6
	s_clause 0x1
	buffer_load_b128 v[32:35], v1, s[24:27], 0 offen
	buffer_load_b128 v[36:39], v3, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[40:43], v2, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[44:47], v4, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v5, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v5, 3, v12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 48, v4
	v_lshlrev_b32_e32 v1, 3, v0
	s_mov_b32 s16, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v8, v5, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v3, 1, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v74, v13, v4
	v_lshlrev_b32_e32 v2, 6, v2
	v_lshlrev_b32_e32 v3, 5, v14
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v27, 32, v8
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v15, 2, v5
	v_or_b32_e32 v16, 4, v5
	v_or_b32_e32 v17, 6, v5
	v_or_b32_e32 v18, 8, v5
	v_or_b32_e32 v19, 10, v5
	v_or_b32_e32 v20, 12, v5
	v_or_b32_e32 v21, 14, v5
	v_or_b32_e32 v22, 64, v5
	v_or_b32_e32 v23, 0x42, v5
	v_or_b32_e32 v24, 0x44, v5
	v_or_b32_e32 v25, 0x46, v5
	v_or_b32_e32 v26, 0x48, v5
	v_or_b32_e32 v4, 0x4a, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, 0, v74
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 0x4c, v5
	v_or_b32_e32 v7, 0x4e, v5
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s18, 0x2ff
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v52, v[28:31] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v52, v[32:35]
	s_waitcnt vmcnt(3)
	ds_store_b128 v52, v[36:39] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v52, v[40:43] offset:20480
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v52, v[44:47] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v52, v[48:51] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v28, 48, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v65, 0x430, v1, v2
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v69, v3, v28, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v66, 16, v65
	v_xor_b32_e32 v68, 32, v65
	v_xor_b32_e32 v67, 48, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v70, 16, v69
	v_xor_b32_e32 v72, 32, v69
	v_xor_b32_e32 v71, 48, v69
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr71
.LBB0_3:                                ; %Flow225
	s_load_b64 s[40:41], s[0:1], 0x20
	v_or_b32_e32 v8, s34, v8
	v_or_b32_e32 v27, s34, v27
	s_ashr_i32 s1, s17, 8
	v_or_b32_e32 v62, s33, v5
	v_or_b32_e32 v61, s33, v15
	v_mul_lo_u32 v63, v8, s1
	v_mul_lo_u32 v64, v27, s1
	v_or_b32_e32 v60, s33, v16
	v_or_b32_e32 v59, s33, v17
	v_or_b32_e32 v58, s33, v18
	v_or_b32_e32 v57, s33, v19
	v_or_b32_e32 v56, s33, v20
	v_or_b32_e32 v55, s33, v21
	v_or_b32_e32 v54, s33, v22
	v_or_b32_e32 v53, s33, v23
	v_or_b32_e32 v52, s33, v24
	v_or_b32_e32 v50, s33, v25
	v_or_b32_e32 v33, s33, v26
	v_or_b32_e32 v51, s33, v4
	v_or_b32_e32 v49, s33, v6
	v_or_b32_e32 v32, s33, v7
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v4, 48, v1
	v_and_or_b32 v65, 0x430, v1, v2
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_delay_alu instid0(VALU_DEP_2)
	v_or3_b32 v69, v3, v4, v2
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_xor_b32_e32 v66, 16, v65
	v_xor_b32_e32 v68, 32, v65
	v_xor_b32_e32 v67, 48, v65
	v_xor_b32_e32 v70, 16, v69
	v_xor_b32_e32 v72, 32, v69
	v_xor_b32_e32 v71, 48, v69
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v48, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s46, s1, 3
	s_add_i32 s15, s42, 0x100
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s43, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s46, s46, -3
	s_mov_b32 s47, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s18, s17, 8
	s_mov_b32 s0, s6
	s_mov_b32 s6, s42
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s42, s15, s18
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v75, s42, v9
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s18, s18, 24
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v76, s42, v11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s18
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s19, s42, s45
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v75
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s0, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v75, 0x80000000, v76, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v76, v63, s0, 1
	v_add_lshl_u32 v77, v64, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v78, v62, s18, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v79, v61, s18, 1
	v_add_lshl_u32 v80, v60, s18, 1
	v_add_lshl_u32 v81, v59, s18, 1
	v_add_lshl_u32 v82, v58, s18, 1
	v_add_lshl_u32 v83, v57, s18, 1
	v_add_lshl_u32 v84, v56, s18, 1
	v_add_lshl_u32 v85, v55, s18, 1
	v_add_lshl_u32 v86, v54, s18, 1
	v_add_lshl_u32 v87, v53, s18, 1
	v_add_lshl_u32 v88, v52, s18, 1
	v_add_lshl_u32 v89, v50, s18, 1
	v_add_lshl_u32 v90, v33, s18, 1
	v_add_lshl_u32 v91, v51, s18, 1
	v_add_lshl_u32 v92, v49, s18, 1
	v_add_lshl_u32 v93, v32, s18, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[107:110], v75, s[8:11], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v75, 0x80000000, v76, s0
	v_cndmask_b32_e64 v76, 0x80000000, v77, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v77, 0x80000000, v78, s0
	v_cndmask_b32_e64 v78, 0x80000000, v79, s0
	v_cndmask_b32_e64 v79, 0x80000000, v80, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v80, 0x80000000, v81, s0
	v_cndmask_b32_e64 v81, 0x80000000, v82, s0
	v_cndmask_b32_e64 v82, 0x80000000, v83, s0
	v_cndmask_b32_e64 v83, 0x80000000, v84, s0
	v_cndmask_b32_e64 v84, 0x80000000, v85, s0
	v_cndmask_b32_e64 v85, 0x80000000, v86, s0
	v_cndmask_b32_e64 v86, 0x80000000, v87, s0
	v_cndmask_b32_e64 v87, 0x80000000, v88, s0
	v_cndmask_b32_e64 v88, 0x80000000, v89, s0
	v_cndmask_b32_e64 v89, 0x80000000, v90, s0
	v_cndmask_b32_e64 v90, 0x80000000, v91, s0
	v_cndmask_b32_e64 v91, 0x80000000, v92, s0
	v_cndmask_b32_e64 v92, 0x80000000, v93, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v175, v75, s[28:31], 0 offen
	buffer_load_u16 v176, v76, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v177, v77, s[36:39], 0 offen
	buffer_load_u16 v178, v78, s[36:39], 0 offen
	buffer_load_u16 v179, v79, s[36:39], 0 offen
	buffer_load_u16 v180, v80, s[36:39], 0 offen
	buffer_load_u16 v181, v81, s[36:39], 0 offen
	buffer_load_u16 v182, v82, s[36:39], 0 offen
	buffer_load_u16 v183, v83, s[36:39], 0 offen
	buffer_load_u16 v184, v84, s[36:39], 0 offen
	buffer_load_u16 v185, v85, s[36:39], 0 offen
	buffer_load_u16 v186, v86, s[36:39], 0 offen
	buffer_load_u16 v187, v87, s[36:39], 0 offen
	buffer_load_u16 v188, v88, s[36:39], 0 offen
	buffer_load_u16 v189, v89, s[36:39], 0 offen
	buffer_load_u16 v190, v90, s[36:39], 0 offen
	buffer_load_u16 v191, v91, s[36:39], 0 offen
	buffer_load_u16 v192, v92, s[36:39], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v75, s19, v10
	v_add_nc_u32_e32 v76, s19, v73
	s_mov_b32 s0, s14
	s_mov_b32 s18, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v77, s0, v68
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	s_clause 0x1
	buffer_load_b128 v[111:114], v75, s[24:27], 0 offen
	buffer_load_b128 v[115:118], v76, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v75, s0, v65
	v_add_nc_u32_e32 v76, s0, v66
	v_add_nc_u32_e32 v78, s0, v67
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v79, s18, v69
	v_add_nc_u32_e32 v80, s18, v70
	v_add_nc_u32_e32 v81, s18, v72
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[91:94], v75
	ds_load_b128 v[119:122], v75 offset:2048
	ds_load_b128 v[123:126], v76
	ds_load_b128 v[127:130], v76 offset:2048
	ds_load_b128 v[131:134], v77
	ds_load_b128 v[135:138], v77 offset:2048
	ds_load_b128 v[139:142], v78
	ds_load_b128 v[143:146], v78 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[99:102], v79
	ds_load_b128 v[147:150], v79 offset:4096
	ds_load_b128 v[151:154], v80
	ds_load_b128 v[155:158], v80 offset:4096
	ds_load_b128 v[159:162], v81
	ds_load_b128 v[163:166], v81 offset:4096
	v_add_nc_u32_e32 v82, s18, v71
	ds_load_b128 v[167:170], v82
	ds_load_b128 v[171:174], v82 offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s47, 1
	s_mov_b32 s16, s44
	s_cmp_lt_i32 s0, 2
	s_mov_b32 s14, s43
	s_cselect_b32 s47, s0, 0
	s_add_i32 s0, s17, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s18, s47, 12
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[147:150], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[119:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[147:150], v[119:122], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[151:154], v[123:126], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[151:154], v[127:130], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[155:158], v[123:126], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[99:106], v[155:158], v[127:130], v[99:106] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s19, s18, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[159:162], v[131:134], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[159:162], v[135:138], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[163:166], v[131:134], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[135:138], v[99:106] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s44, s19, s18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[167:170], v[139:142], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[167:170], v[143:146], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[171:174], v[139:142], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[171:174], v[143:146], v[99:106] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s43, s19, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s46
	s_mov_b32 s17, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v122, 16, v178
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v136, 16, v192
	v_lshlrev_b32_e32 v135, 16, v191
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v120, 16, v176
	v_lshlrev_b32_e32 v119, 16, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v138, v119, v122
	v_mul_f32_e32 v122, v120, v122
	v_dual_mul_f32 v151, v119, v135 :: v_dual_lshlrev_b32 v126, 16, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v138, v76 :: v_dual_lshlrev_b32 v125, 16, v181
	v_fmac_f32_e32 v34, v122, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v142, v119, v126
	v_mul_f32_e32 v126, v120, v126
	v_dual_mul_f32 v141, v119, v125 :: v_dual_lshlrev_b32 v130, 16, v186
	v_mul_f32_e32 v125, v120, v125
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v129, 16, v185
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v135, v120, v135 :: v_dual_fmac_f32 v20, v142, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v146, v119, v130
	v_mul_f32_e32 v130, v120, v130
	v_dual_mul_f32 v145, v119, v129 :: v_dual_lshlrev_b32 v134, 16, v190
	v_mul_f32_e32 v129, v120, v129
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v121, 16, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v150, v119, v134 :: v_dual_lshlrev_b32 v133, 16, v189
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v124, 16, v180
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v134, v120, v134 :: v_dual_mul_f32 v137, v119, v121
	v_mul_f32_e32 v121, v120, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v140, v119, v124 :: v_dual_lshlrev_b32 v123, 16, v179
	v_mul_f32_e32 v124, v120, v124
	v_dual_mul_f32 v149, v119, v133 :: v_dual_lshlrev_b32 v128, 16, v184
	v_mul_f32_e32 v139, v119, v123
	v_mul_f32_e32 v123, v120, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v144, v119, v128 :: v_dual_lshlrev_b32 v127, 16, v183
	v_mul_f32_e32 v128, v120, v128
	v_dual_mul_f32 v133, v120, v133 :: v_dual_lshlrev_b32 v132, 16, v188
	v_mul_f32_e32 v143, v119, v127
	v_mul_f32_e32 v127, v120, v127
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v131, 16, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v148, v119, v132 :: v_dual_add_nc_u32 v193, s19, v74
	v_mul_f32_e32 v132, v120, v132
	v_dual_mul_f32 v147, v119, v131 :: v_dual_add_nc_u32 v194, s44, v74
	v_mul_f32_e32 v131, v120, v131
	v_mul_f32_e32 v119, v119, v136
	v_dual_mul_f32 v120, v120, v136 :: v_dual_fmac_f32 v15, v137, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v18, v140, v78 :: v_dual_fmac_f32 v17, v139, v77
	v_dual_fmac_f32 v22, v144, v82 :: v_dual_fmac_f32 v19, v141, v79
	v_dual_fmac_f32 v24, v146, v84 :: v_dual_fmac_f32 v21, v143, v81
	v_dual_fmac_f32 v26, v148, v86 :: v_dual_fmac_f32 v23, v145, v83
	v_dual_fmac_f32 v28, v150, v88 :: v_dual_fmac_f32 v25, v147, v85
	v_dual_fmac_f32 v27, v149, v87 :: v_dual_fmac_f32 v30, v119, v90
	v_dual_fmac_f32 v29, v151, v89 :: v_dual_fmac_f32 v36, v124, v94
	v_dual_fmac_f32 v31, v121, v91 :: v_dual_fmac_f32 v38, v126, v96
	v_dual_fmac_f32 v35, v123, v93 :: v_dual_fmac_f32 v40, v128, v98
	v_dual_fmac_f32 v37, v125, v95 :: v_dual_fmac_f32 v44, v131, v101
	v_dual_fmac_f32 v39, v127, v97 :: v_dual_fmac_f32 v42, v129, v99
	v_dual_fmac_f32 v43, v130, v100 :: v_dual_fmac_f32 v46, v133, v103
	v_dual_fmac_f32 v45, v132, v102 :: v_dual_fmac_f32 v48, v135, v105
	v_fmac_f32_e32 v47, v134, v104
	v_fmac_f32_e32 v41, v120, v106
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v193, v[107:110] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v194, v[111:114]
	s_waitcnt vmcnt(0)
	ds_store_b128 v194, v[115:118] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s43, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v93, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, s16, v72
	v_add_nc_u32_e32 v10, s16, v70
	v_add_nc_u32_e32 v11, s16, v71
	v_add_nc_u32_e32 v73, s16, v69
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s23, s16
	s_mov_b32 s20, s16
	s_mov_b32 s22, s16
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s21, s16
	v_dual_mov_b32 v94, s23 :: v_dual_mov_b32 v93, s22
	v_mov_b32_e32 v91, s20
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[81:84], v10 offset:4096
	ds_load_b128 v[111:114], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v89, s18 :: v_dual_add_nc_u32 v10, s14, v65
	v_dual_mov_b32 v87, s16 :: v_dual_add_nc_u32 v74, s14, v66
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[123:126], v10 offset:2048
	ds_load_b128 v[103:106], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v92, s21
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[115:118], v73 offset:4096
	ds_load_b128 v[119:122], v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v90, s19 :: v_dual_add_nc_u32 v73, s14, v68
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[135:138], v74 offset:2048
	ds_load_b128 v[139:142], v74
	v_add_nc_u32_e32 v10, s14, v67
	ds_load_b128 v[127:130], v73 offset:2048
	ds_load_b128 v[131:134], v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v88, s17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[147:150], v11
	ds_load_b128 v[151:154], v11 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[155:158], v10 offset:2048
	ds_load_b128 v[143:146], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[115:118], v[103:106], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[119:122], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[119:122], v[123:126], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[115:118], v[123:126], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[111:114], v[139:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[81:84], v[139:142], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[111:114], v[135:138], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[81:84], v[135:138], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[6:9], v[131:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[2:5], v[131:134], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[6:9], v[127:130], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[2:5], v[127:130], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[147:150], v[143:146], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[143:146], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[147:150], v[155:158], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[151:154], v[155:158], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v74
	v_cvt_f32_i32_e32 v3, v75
	v_cvt_f32_i32_e32 v4, v76
	v_cvt_f32_i32_e32 v5, v77
	v_cvt_f32_i32_e32 v6, v78
	v_cvt_f32_i32_e32 v7, v79
	v_cvt_f32_i32_e32 v8, v80
	v_cvt_f32_i32_e32 v9, v95
	v_cvt_f32_i32_e32 v10, v96
	v_cvt_f32_i32_e32 v11, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v107
	v_cvt_f32_i32_e32 v84, v108
	v_cvt_f32_i32_e32 v85, v109
	v_cvt_f32_i32_e32 v86, v110
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v73, v73
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s6, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s6, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v95, v63, s0, 1
	v_add_lshl_u32 v96, v64, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v97, v62, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v98, v61, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v126, v95, s[12:15], 0 offen
	buffer_load_u16 v127, v96, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v95, v60, s0, 1
	v_dual_cndmask_b32 v96, 0x80000000, v97 :: v_dual_cndmask_b32 v97, 0x80000000, v98
	v_add_lshl_u32 v98, v59, s0, 1
	v_add_lshl_u32 v99, v58, s0, 1
	v_add_lshl_u32 v100, v57, s0, 1
	v_add_lshl_u32 v101, v56, s0, 1
	v_add_lshl_u32 v102, v55, s0, 1
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v103, v54, s0, 1
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	v_add_lshl_u32 v104, v53, s0, 1
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_add_lshl_u32 v105, v52, s0, 1
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	s_clause 0x7
	buffer_load_u16 v128, v96, s[4:7], 0 offen
	buffer_load_u16 v129, v97, s[4:7], 0 offen
	buffer_load_u16 v130, v95, s[4:7], 0 offen
	buffer_load_u16 v131, v98, s[4:7], 0 offen
	buffer_load_u16 v132, v99, s[4:7], 0 offen
	buffer_load_u16 v133, v100, s[4:7], 0 offen
	buffer_load_u16 v134, v101, s[4:7], 0 offen
	buffer_load_u16 v135, v102, s[4:7], 0 offen
	v_add_lshl_u32 v98, v50, s0, 1
	v_add_lshl_u32 v99, v33, s0, 1
	v_dual_cndmask_b32 v95, 0x80000000, v103 :: v_dual_cndmask_b32 v96, 0x80000000, v104
	v_add_lshl_u32 v100, v51, s0, 1
	v_add_lshl_u32 v101, v49, s0, 1
	v_add_lshl_u32 v102, v32, s0, 1
	v_dual_cndmask_b32 v97, 0x80000000, v105 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	s_clause 0x7
	buffer_load_u16 v136, v95, s[4:7], 0 offen
	buffer_load_u16 v137, v96, s[4:7], 0 offen
	buffer_load_u16 v138, v97, s[4:7], 0 offen
	buffer_load_u16 v139, v98, s[4:7], 0 offen
	buffer_load_u16 v140, v99, s[4:7], 0 offen
	buffer_load_u16 v141, v100, s[4:7], 0 offen
	buffer_load_u16 v142, v101, s[4:7], 0 offen
	buffer_load_u16 v143, v102, s[4:7], 0 offen
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v125, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s44, v72
	v_add_nc_u32_e32 v70, s44, v70
	v_add_nc_u32_e32 v69, s44, v69
	ds_load_b128 v[119:122], v1 offset:4096
	ds_load_b128 v[144:147], v1
	ds_load_b128 v[148:151], v70 offset:4096
	ds_load_b128 v[152:155], v70
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s43, v65
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[156:159], v69 offset:4096
	ds_load_b128 v[160:163], v69
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v66, s43, v66
	ds_load_b128 v[164:167], v1 offset:2048
	ds_load_b128 v[111:114], v1
	v_add_nc_u32_e32 v65, s43, v68
	ds_load_b128 v[176:179], v66 offset:2048
	ds_load_b128 v[180:183], v66
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v95, s44, v71
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s43, v67
	ds_load_b128 v[168:171], v65 offset:2048
	ds_load_b128 v[172:175], v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v72, s23 :: v_dual_mov_b32 v71, s22
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[184:187], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v70, s21 :: v_dual_mov_b32 v69, s20
	v_dual_mov_b32 v68, s19 :: v_dual_mov_b32 v67, s18
	v_dual_mov_b32 v66, s17 :: v_dual_mov_b32 v65, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[188:191], v95
	ds_load_b128 v[192:195], v95 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[196:199], v1 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[160:163], v[111:114], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[156:159], v[111:114], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[160:163], v[164:167], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[156:159], v[164:167], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[152:155], v[180:183], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[148:151], v[180:183], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[152:155], v[176:179], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[148:151], v[176:179], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[144:147], v[172:175], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[119:122], v[172:175], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[144:147], v[168:171], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[119:122], v[168:171], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[188:191], v[184:187], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[192:195], v[184:187], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[188:191], v[196:199], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[192:195], v[196:199], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v65
	v_cvt_f32_i32_e32 v119, v66
	v_cvt_f32_i32_e32 v120, v67
	v_cvt_f32_i32_e32 v121, v68
	v_cvt_f32_i32_e32 v122, v69
	v_cvt_f32_i32_e32 v123, v70
	v_cvt_f32_i32_e32 v124, v71
	v_cvt_f32_i32_e32 v125, v72
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s42, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v67.h, v143.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s6, s6, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v71.h, v139.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s42, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s8, s7, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s8, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v63, v63, s8, 1
	v_add_lshl_u32 v64, v64, s8, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s8, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v54, v54, s8, 1
	v_add_lshl_u32 v53, v53, s8, 1
	v_add_lshl_u32 v52, v52, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v50, v50, s8, 1
	v_add_lshl_u32 v33, v33, s8, 1
	v_add_lshl_u32 v51, v51, s8, 1
	v_add_lshl_u32 v49, v49, s8, 1
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_add_lshl_u32 v32, v32, s8, 1
	v_add_lshl_u32 v62, v62, s8, 1
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	v_add_lshl_u32 v61, v61, s8, 1
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_add_lshl_u32 v60, v60, s8, 1
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	v_add_lshl_u32 v59, v59, s8, 1
	s_clause 0x7
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v65, v33, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v66, v32, s[4:7], 0 offen
	v_add_lshl_u32 v58, v58, s8, 1
	v_add_lshl_u32 v57, v57, s8, 1
	v_add_lshl_u32 v56, v56, s8, 1
	v_add_lshl_u32 v55, v55, s8, 1
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	s_clause 0x7
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_cndmask_b32 v64, 0x80000000, v64
	s_clause 0x1
	buffer_load_u16 v63, v63, s[12:15], 0 offen
	buffer_load_u16 v64, v64, s[12:15], 0 offen
	v_mov_b16_e32 v33.l, 0
	v_mov_b16_e32 v33.h, v127.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v68.h, v142.l
	v_mov_b16_e64 v70.h, v140.l
	v_mov_b16_e64 v129.h, v135.l
	v_mov_b16_e32 v67.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v139, 2, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v135.h, v129.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v140, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v129.l, v33.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v142, v33, v67
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v139, 0x78, v139
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v72.h, v138.l
	v_mov_b16_e64 v130.h, v134.l
	v_mov_b16_e64 v134.h, v130.l
	v_mov_b16_e64 v130.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v138, 14, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v134.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v140, 0x840, v140
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v150, v33, v129
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v14, v14, 3, v139
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v69.h, v141.l
	v_mov_b16_e64 v127.h, v137.l
	v_mov_b16_e64 v128.h, v136.l
	v_mov_b16_e64 v131.h, v133.l
	v_mov_b16_e64 v132.h, v132.l
	v_mov_b16_e64 v133.h, v131.l
	v_mov_b16_e64 v136.h, v128.l
	v_mov_b16_e32 v68.l, v33.l
	v_mov_b16_e32 v69.l, v33.l
	v_mov_b16_e32 v70.l, v33.l
	v_mov_b16_e32 v71.l, v33.l
	v_mov_b16_e32 v72.l, v33.l
	v_mov_b16_e32 v127.l, v33.l
	v_mov_b16_e64 v128.l, v33.l
	v_mov_b16_e64 v131.l, v33.l
	v_mov_b16_e64 v132.l, v33.l
	v_mov_b16_e64 v133.l, v33.l
	v_mov_b16_e64 v135.l, v33.l
	v_mov_b16_e64 v136.l, v33.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v151, v33, v130
	v_dual_mul_f32 v144, v33, v69 :: v_dual_lshlrev_b32 v141, 11, v138
	v_mul_f32_e32 v155, v33, v134
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v14, v14, v140
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v145, v33, v70 :: v_dual_and_b32 v32, 0x7f, v0
	v_mul_f32_e32 v143, v33, v68
	v_mul_f32_e32 v147, v33, v72
	v_mul_f32_e32 v148, v33, v127
	v_mul_f32_e32 v149, v33, v128
	v_mul_f32_e32 v152, v33, v131
	v_mul_f32_e32 v153, v33, v132
	v_mul_f32_e32 v154, v33, v133
	v_mul_f32_e32 v156, v33, v135
	v_mul_f32_e32 v157, v33, v136
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_or3_b32 v14, v14, v141, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v146, v33, v71
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v33.h, v126.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v137, 7, v12
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s1, s34, s35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v155, v81, v35
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s1, s1, s33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v33, v72
	v_mul_f32_e32 v126, v33, v127
	v_mul_f32_e32 v127, v33, v128
	v_mul_f32_e32 v128, v33, v129
	v_mul_f32_e32 v129, v33, v130
	v_mul_f32_e32 v130, v33, v131
	v_mul_f32_e32 v131, v33, v132
	v_mul_f32_e32 v132, v33, v133
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v137, s35, v137
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v33, v67
	v_mul_f32_e32 v69, v33, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v128, v8, v22
	v_fma_f32 v4, v132, v4, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v33, v68
	v_mul_f32_e32 v70, v33, v70
	v_mul_f32_e32 v71, v33, v71
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s1, v32, v137
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v18, v4, s3
	v_cndmask_b32_e64 v8, v22, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v133, v33, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v35, v81, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v129, v7, v21
	v_fma_f32 v91, v145, v91, v46
	v_fma_f32 v94, v142, v94, v41
	v_fma_f32 v92, v144, v92, v47
	v_fma_f32 v86, v150, v86, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v151, v85, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v91, s3
	v_cndmask_b32_e64 v41, v41, v94, s3
	v_cndmask_b32_e64 v47, v47, v92, s3
	v_cndmask_b32_e64 v40, v40, v86, s3
	v_cndmask_b32_e64 v39, v39, v85, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v72, v11, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v126, v10, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v25, v11, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v25, 16, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v156, v80, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v24, v10, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v18, 16, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v153, v83, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v34, v80, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v22, 16, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v67, v78, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v37, v83, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v69, v76, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v134, v33, v135
	v_mul_f32_e32 v135, v33, v136
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v30, v34, s3
	v_cndmask_b32_e64 v30, v28, v37, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v37, 16, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v68, v77, v29
	v_fma_f32 v69, v133, v3, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v50, 16, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v127, v9, v23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v28, 16, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v35, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v35, 16, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v70, v75, v27
	v_fma_f32 v70, v134, v2, v16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[32:33]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v131, v5, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v9, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v71, v74, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v67, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v33, vcc_lo, s40, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v19, v5, s3
	v_cndmask_b32_e64 v5, v17, v69, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v63
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v68, s3
	v_cndmask_b32_e64 v7, v16, v70, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v67, 0, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v2, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v135, v73, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v2, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v130, v6, v20
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v68, v14, 8, 0
	v_xad_u32 v69, v14, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v71, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v70, v14, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v20, v6, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v71, v14, 32, 0
	v_xad_u32 v73, v14, 40, 0
	v_xad_u32 v74, v14, 48, 0
	v_xad_u32 v75, v14, 56, 0
	v_add_co_ci_u32_e64 v34, null, s41, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v64
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v62
	v_lshlrev_b32_e32 v16, 16, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v149, v87, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v19, 16, v58
	v_lshlrev_b32_e32 v20, 16, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v157, v79, v31
	v_fma_f32 v88, v148, v88, v43
	v_fma_f32 v89, v147, v89, v44
	v_fma_f32 v90, v146, v90, v45
	v_fma_f32 v82, v154, v82, v36
	v_fma_f32 v93, v143, v93, v48
	v_fma_f32 v84, v152, v84, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v87, s3
	v_cndmask_b32_e64 v31, v31, v79, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v2, v14
	v_mul_f32_e32 v54, v2, v16
	v_mul_f32_e32 v57, v2, v19
	v_mul_f32_e32 v58, v2, v20
	v_mul_f32_e32 v59, v2, v22
	v_dual_mul_f32 v60, v2, v24 :: v_dual_mul_f32 v17, v3, v17
	v_dual_mul_f32 v61, v2, v25 :: v_dual_mul_f32 v14, v3, v14
	v_dual_mul_f32 v62, v2, v28 :: v_dual_mul_f32 v19, v3, v19
	v_dual_mul_f32 v63, v2, v35 :: v_dual_mul_f32 v16, v3, v16
	v_dual_mul_f32 v64, v2, v37 :: v_dual_mul_f32 v35, v3, v35
	v_dual_mul_f32 v65, v2, v50 :: v_dual_mul_f32 v20, v3, v20
	v_dual_mul_f32 v66, v2, v51 :: v_dual_mul_f32 v25, v3, v25
	v_dual_mul_f32 v76, v2, v49 :: v_dual_mul_f32 v51, v3, v51
	v_dual_mul_f32 v2, v2, v52 :: v_dual_mul_f32 v37, v3, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v88, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v3, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v89, s3
	v_cndmask_b32_e64 v45, v45, v90, s3
	v_cndmask_b32_e64 v36, v36, v82, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v3, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v93, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v3, v50
	v_mul_f32_e32 v49, v3, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v84, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v3, v22
	v_mul_f32_e32 v24, v3, v24
	v_mul_f32_e32 v3, v3, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v53, v1, v15
	v_fma_f32 v52, v54, v95, v7
	v_fma_f32 v53, v55, v96, v5
	v_fma_f32 v54, v56, v97, v4
	v_fma_f32 v55, v57, v98, v9
	v_fma_f32 v56, v58, v99, v6
	v_fma_f32 v57, v59, v100, v21
	v_fma_f32 v58, v60, v101, v8
	v_fma_f32 v59, v61, v102, v23
	v_fma_f32 v60, v62, v103, v10
	v_fma_f32 v62, v64, v105, v26
	v_fma_f32 v64, v66, v107, v30
	v_fma_f32 v2, v2, v109, v72
	v_fma_f32 v66, v14, v110, v31
	v_fma_f32 v25, v25, v118, v42
	v_fma_f32 v61, v63, v104, v11
	v_fma_f32 v63, v65, v106, v27
	v_fma_f32 v65, v76, v108, v29
	v_fma_f32 v76, v16, v111, v80
	v_fma_f32 v84, v28, v119, v43
	v_fma_f32 v17, v17, v112, v81
	v_fma_f32 v85, v35, v120, v44
	v_fma_f32 v77, v18, v113, v36
	v_fma_f32 v86, v37, v121, v45
	v_fma_f32 v19, v19, v114, v83
	v_fma_f32 v50, v50, v122, v46
	v_fma_f32 v49, v49, v124, v48
	v_fma_f32 v78, v20, v115, v38
	v_fma_f32 v79, v22, v116, v39
	v_fma_f32 v82, v24, v117, v40
	v_fma_f32 v51, v51, v123, v47
	v_fma_f32 v87, v3, v125, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v15, v1, s2
	v_cndmask_b32_e64 v16, v21, v57, s2
	v_cndmask_b32_e64 v20, v23, v59, s2
	v_cndmask_b32_e64 v37, v72, v2, s2
	v_cndmask_b32_e64 v2, v31, v66, s2
	v_cndmask_b32_e64 v21, v42, v25, s2
	v_cndmask_b32_e64 v3, v7, v52, s2
	v_cndmask_b32_e64 v7, v4, v54, s2
	v_cndmask_b32_e64 v22, v10, v60, s2
	v_cndmask_b32_e64 v4, v80, v76, s2
	v_cndmask_b32_e64 v23, v43, v84, s2
	v_cndmask_b32_e64 v5, v5, v53, s2
	v_cndmask_b32_e64 v14, v6, v56, s2
	v_cndmask_b32_e64 v24, v11, v61, s2
	v_cndmask_b32_e64 v6, v81, v17, s2
	v_cndmask_b32_e64 v25, v44, v85, s2
	v_cndmask_b32_e64 v18, v8, v58, s2
	v_cndmask_b32_e64 v26, v26, v62, s2
	v_cndmask_b32_e64 v28, v27, v63, s2
	v_cndmask_b32_e64 v8, v36, v77, s2
	v_cndmask_b32_e64 v27, v45, v86, s2
	v_cndmask_b32_e64 v9, v9, v55, s2
	v_cndmask_b32_e64 v35, v29, v65, s2
	v_cndmask_b32_e64 v10, v83, v19, s2
	v_cndmask_b32_e64 v29, v46, v50, s2
	v_cndmask_b32_e64 v36, v48, v49, s2
	v_cndmask_b32_e64 v30, v30, v64, s2
	v_cndmask_b32_e64 v15, v38, v78, s2
	v_cndmask_b32_e64 v17, v39, v79, s2
	v_cndmask_b32_e64 v19, v40, v82, s2
	v_cndmask_b32_e64 v31, v47, v51, s2
	v_cndmask_b32_e64 v38, v41, v87, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v67, v[1:2], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v68, v[3:4], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v69, v[5:6], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v70, v[7:8], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v71, v[9:10], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v73, v[14:15], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v74, v[16:17], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v75, v[18:19], v[37:38] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_cmp_eq_u32_e32 vcc_lo, 0, v12
	v_and_b32_e32 v2, 0x700, v13
	v_lshlrev_b32_e32 v3, 2, v138
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_12:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v35, v36, v28
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 1, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s40, v33
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v35, v36, v24
	global_atomic_cmpswap_b32 v28, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v36
	v_mov_b32_e32 v36, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 2, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s40, v33
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v35, v36, v20
	global_atomic_cmpswap_b32 v24, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v36
	v_mov_b32_e32 v36, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 6, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v35, v36, v16
	global_atomic_cmpswap_b32 v20, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v36
	v_mov_b32_e32 v36, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 3, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s40, v33
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v35, v36, v12
	global_atomic_cmpswap_b32 v16, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v36
	v_mov_b32_e32 v36, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 10, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v35, v36, v8
	global_atomic_cmpswap_b32 v12, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v36
	v_mov_b32_e32 v36, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 12, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v35, v36, v4
	global_atomic_cmpswap_b32 v8, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v36
	v_mov_b32_e32 v36, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 14, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v35, v36, v0
	global_atomic_cmpswap_b32 v4, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v36
	v_mov_b32_e32 v36, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 4, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s40, v33
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 18, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v26
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 20, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v22
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 22, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v18
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 24, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v14
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 26, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v10
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 28, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v6
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 30, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s40, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v2
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 5, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s40, v33
	v_add_co_ci_u32_e64 v34, null, s41, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_44:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 34, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s40, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s41, v29, vcc_lo
	global_load_b32 v34, v[28:29], off
.LBB0_46:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v34
	v_mov_b32_e32 v34, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 36, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s40, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s41, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_48:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 38, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s40, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s41, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_50:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 40, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s40, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s41, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_52:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 42, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_54:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 44, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_56:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s35, 46, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s40, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s41, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_58:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 50, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 52, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 54, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 58, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 60, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_72:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 62, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_74:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_74
; %bb.75:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 200
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10780
; TotalNumSgprs: 50
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
