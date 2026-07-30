	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 2, v0
	v_bfe_u32 v2, v0, 4, 4
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v10, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s16, s6, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s6, s6, s5
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s17, s7, 4
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s7, s17
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s18, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_sub_i32 s10, 0, s7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 12, v8
	s_mov_b32 s11, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s10, s10, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s18, s10
	s_xor_b32 s10, s2, s17
	s_add_i32 s18, s18, s5
	s_ashr_i32 s30, s10, 31
	s_mul_hi_u32 s5, s6, s18
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s7
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s26, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s6, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s34, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s34, s30
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s7, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s4, s5, s17
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s31, s3, 4
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s4
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[5:6], null, s7, v3, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v4, s31, v9
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v7, s31, v1
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_or_b32_e32 v6, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s18, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s6, s20, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s7, v4
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v4
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s7, v7
	.loc	1 171 51                        ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v7
	.loc	1 189 34 is_stmt 1              ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, v6, s7, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s6, s6, 5
.Ltmp21:
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_mul_i32 s2, s18, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 31
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add3_u32 v4, s31, s2, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	s_and_b32 s16, s3, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	v_bfe_i32 v6, v0, 7, 1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s25, s25, 0xffff
	v_bfe_i32 v7, v0, 5, 1
	v_and_b32_e32 v8, 0x77c, v8
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v6, 0x88, v6
	s_mov_b32 s5, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 63
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v7, 0x88, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v6, v6, v10
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_xor_b32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v79, 0, v6
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b32 v4, v4, s[24:27], 0 offen
	v_add_nc_u32_e32 v80, 0, v7
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v5 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v80, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_mov_b64 s[22:23], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr20_sgpr21
.LBB0_3:                                ; %Flow484
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_bfe_u32 v76, v0, 4, 1
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_bfe_i32 v77, v0, 3, 1
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v78, 4, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v74, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_lshl_or_b32 v3, s34, 7, v3
	s_lshl_b32 s27, s30, 7
	s_mov_b32 s44, 0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v4, 0x70, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_subrev_nc_u32_e32 v3, s27, v3
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_add_nc_u32_e32 v2, s33, v2
	v_add_nc_u32_e32 v5, s33, v9
	v_and_or_b32 v4, 0x88, v77, v4
	v_sub_nc_u32_e32 v81, s7, v1
	v_lshlrev_b32_e32 v82, 1, v76
	v_mad_u64_u32 v[10:11], null, s7, v3, v[1:2]
	v_mul_lo_u32 v5, s6, v5
	v_xor_b32_e32 v6, 8, v4
	v_add_nc_u32_e32 v84, 0, v4
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_mad_u64_u32 v[11:12], null, s7, v2, v[9:10]
	v_lshlrev_b32_e32 v83, 1, v5
	v_add_nc_u32_e32 v85, 0, v6
	v_dual_mov_b32 v1, s44 :: v_dual_mov_b32 v2, s45
	v_dual_mov_b32 v3, s46 :: v_dual_mov_b32 v4, s47
	v_dual_mov_b32 v5, s48 :: v_dual_mov_b32 v6, s49
	v_dual_mov_b32 v7, s50 :: v_dual_mov_b32 v8, s51
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_lshl_b32 s0, s34, 8
	s_lshl_b32 s26, s30, 8
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s5, s1, 1
	s_mov_b64 s[20:21], s[12:13]
	s_sub_i32 s34, s0, s26
	s_lshl_b32 s35, s19, 1
	s_add_i32 s40, s31, 16
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v88, v83, s[36:39], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s40, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s5, s5, -1
	v_add_nc_u32_e32 v83, 2, v83
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v88, 16, v88
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_add_nc_u32_e32 v89, s40, v9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v90, s40, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s0, s7, v89
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 s0, s0, s4
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	v_cndmask_b32_e64 v89, 0x80000000, v90, s0
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[160:161], v84 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[104:107], v84 offset1:32
	ds_load_2addr_b64 v[120:123], v84 offset0:64 offset1:96
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[162:163], v85 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[136:139], v84 offset0:128 offset1:160
	ds_load_2addr_b64 v[130:133], v85 offset1:32
	ds_load_2addr_b64 v[140:143], v85 offset0:64 offset1:96
	ds_load_2addr_b64 v[144:147], v85 offset0:128 offset1:160
	ds_load_2addr_b64 v[152:155], v84 offset0:192 offset1:224
	ds_load_2addr_b64 v[156:159], v85 offset0:192 offset1:224
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[106:107], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[120:121], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[130:131], v[162:163], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[136:137], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v87, s34, v82
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[98:105], v[132:133], v[162:163], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[160:161], v[1:8] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v92, v88, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v164, v87, s[28:31], 0 offen
	buffer_load_u16 v165, v87, s[28:31], 0 offen offset:4
	buffer_load_u16 v166, v87, s[28:31], 0 offen offset:8
	buffer_load_u16 v167, v87, s[28:31], 0 offen offset:12
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[140:141], v[162:163], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[142:143], v[162:163], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[144:145], v[162:163], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[146:147], v[162:163], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[152:153], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[160:161], v[1:8] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[156:157], v[162:163], v[138:145] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[162:163], v[146:153] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x6
	buffer_load_u16 v154, v87, s[28:31], 0 offen offset:16
	buffer_load_u16 v155, v87, s[28:31], 0 offen offset:20
	buffer_load_u16 v156, v87, s[28:31], 0 offen offset:24
	buffer_load_u16 v157, v87, s[28:31], 0 offen offset:28
	buffer_load_u16 v158, v87, s[28:31], 0 offen offset:32
	buffer_load_u16 v159, v87, s[28:31], 0 offen offset:36
	buffer_load_u16 v160, v87, s[28:31], 0 offen offset:40
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
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
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
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
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s34, s34, s35
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v162, 16, v165
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v163, 16, v166
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v73, v92, v163
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v90, v88, v90
	v_mul_f32_e32 v91, v88, v91
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v161, 16, v164
	s_clause 0x1
	buffer_load_u16 v92, v87, s[28:31], 0 offen offset:60
	buffer_load_u16 v163, v87, s[28:31], 0 offen offset:64
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v93, v88, v93
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v94, v88, v94 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v74, v91, v162
	v_dual_fmac_f32 v75, v90, v161 :: v_dual_add_nc_u32 v86, s40, v10
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v90, v87, s[28:31], 0 offen offset:44
	buffer_load_u16 v161, v87, s[28:31], 0 offen offset:48
	buffer_load_u16 v91, v87, s[28:31], 0 offen offset:52
	buffer_load_u16 v162, v87, s[28:31], 0 offen offset:56
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v95, v88, v95 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v164, 16, v167
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v96, v88, v96 :: v_dual_lshlrev_b32 v157, 16, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v71, v94, v154 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v97, v88, v97 :: v_dual_fmac_f32 v72, v93, v164
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v93, v87, s[28:31], 0 offen offset:68
	buffer_load_u16 v164, v87, s[28:31], 0 offen offset:72
	buffer_load_u16 v94, v87, s[28:31], 0 offen offset:76
	buffer_load_u16 v154, v87, s[28:31], 0 offen offset:80
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v70, v95, v155 :: v_dual_fmac_f32 v69, v96, v156
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v95, v87, s[28:31], 0 offen offset:84
	buffer_load_u16 v155, v87, s[28:31], 0 offen offset:88
	buffer_load_u16 v96, v87, s[28:31], 0 offen offset:92
	buffer_load_u16 v156, v87, s[28:31], 0 offen offset:96
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v98, v88, v98 :: v_dual_lshlrev_b32 v159, 16, v159
	v_dual_mul_f32 v99, v88, v99 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v68, v97, v157
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v97, v87, s[28:31], 0 offen offset:100
	buffer_load_u16 v157, v87, s[28:31], 0 offen offset:104
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v100, v88, v100
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v101, v88, v101 :: v_dual_lshlrev_b32 v160, 16, v160
	v_mul_f32_e32 v102, v88, v102
	v_mul_f32_e32 v104, v88, v104
	v_mul_f32_e32 v110, v88, v110
	v_mul_f32_e32 v112, v88, v112
	v_mul_f32_e32 v114, v88, v114
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v67, v98, v158
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v98, v87, s[28:31], 0 offen offset:108
	buffer_load_u16 v158, v87, s[28:31], 0 offen offset:112
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_mul_f32 v121, v88, v121
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v116, v88, v116
	v_mul_f32_e32 v123, v88, v123
	v_mul_f32_e32 v125, v88, v125
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b32 v86, v86, s[24:27], 0 offen
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s40, s40, 16
	s_cmp_lg_u32 s5, 0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v107, v88, v107
	v_mul_f32_e32 v115, v88, v115
	v_mul_f32_e32 v111, v88, v111
	v_mul_f32_e32 v113, v88, v113
	v_mul_f32_e32 v117, v88, v117
	v_mul_f32_e32 v103, v88, v103
	v_mul_f32_e32 v119, v88, v119
	v_mul_f32_e32 v105, v88, v105
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v109, v88, v109 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v163, 16, v163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v61, v105, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v92, v87, s[28:31], 0 offen offset:164
	buffer_load_u16 v105, v87, s[28:31], 0 offen offset:168
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v130, v88, v130 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v66, v99, v159 :: v_dual_fmac_f32 v65, v100, v160
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v63, v102, v161 :: v_dual_fmac_f32 v64, v101, v90
	v_fmac_f32_e32 v62, v103, v91
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v60, v104, v162 :: v_dual_lshlrev_b32 v93, 16, v93
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v106, v88, v106
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v108, v88, v108 :: v_dual_fmac_f32 v59, v107, v93
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v58, v106, v163
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v154, 16, v154
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v57, v109, v94 :: v_dual_fmac_f32 v56, v108, v164
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v97, 16, v97
	s_clause 0x13
	buffer_load_u16 v99, v87, s[28:31], 0 offen offset:116
	buffer_load_u16 v159, v87, s[28:31], 0 offen offset:120
	buffer_load_u16 v100, v87, s[28:31], 0 offen offset:124
	buffer_load_u16 v160, v87, s[28:31], 0 offen offset:128
	buffer_load_u16 v90, v87, s[28:31], 0 offen offset:132
	buffer_load_u16 v101, v87, s[28:31], 0 offen offset:136
	buffer_load_u16 v102, v87, s[28:31], 0 offen offset:140
	buffer_load_u16 v161, v87, s[28:31], 0 offen offset:144
	buffer_load_u16 v91, v87, s[28:31], 0 offen offset:148
	buffer_load_u16 v103, v87, s[28:31], 0 offen offset:152
	buffer_load_u16 v104, v87, s[28:31], 0 offen offset:156
	buffer_load_u16 v162, v87, s[28:31], 0 offen offset:160
	buffer_load_u16 v106, v87, s[28:31], 0 offen offset:172
	buffer_load_u16 v163, v87, s[28:31], 0 offen offset:176
	buffer_load_u16 v93, v87, s[28:31], 0 offen offset:180
	buffer_load_u16 v107, v87, s[28:31], 0 offen offset:184
	buffer_load_u16 v108, v87, s[28:31], 0 offen offset:188
	buffer_load_u16 v164, v87, s[28:31], 0 offen offset:192
	buffer_load_u16 v94, v87, s[28:31], 0 offen offset:196
	buffer_load_u16 v109, v87, s[28:31], 0 offen offset:200
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v54, v110, v154 :: v_dual_fmac_f32 v53, v113, v96
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v110, v87, s[28:31], 0 offen offset:204
	buffer_load_u16 v154, v87, s[28:31], 0 offen offset:208
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v55, v111, v95
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v95, v87, s[28:31], 0 offen offset:212
	buffer_load_u16 v111, v87, s[28:31], 0 offen offset:216
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v52, v112, v155 :: v_dual_fmac_f32 v51, v115, v97
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v112, v87, s[28:31], 0 offen offset:220
	buffer_load_u16 v155, v87, s[28:31], 0 offen offset:224
	buffer_load_u16 v96, v87, s[28:31], 0 offen offset:228
	buffer_load_u16 v113, v87, s[28:31], 0 offen offset:232
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v50, v114, v156
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x4
	buffer_load_u16 v114, v87, s[28:31], 0 offen offset:236
	buffer_load_u16 v156, v87, s[28:31], 0 offen offset:240
	buffer_load_u16 v97, v87, s[28:31], 0 offen offset:244
	buffer_load_u16 v115, v87, s[28:31], 0 offen offset:248
	buffer_load_u16 v87, v87, s[28:31], 0 offen offset:252
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v118, v88, v118
	v_mul_f32_e32 v120, v88, v120
	v_mul_f32_e32 v122, v88, v122
	v_mul_f32_e32 v124, v88, v124
	v_mul_f32_e32 v126, v88, v126
	v_mul_f32_e32 v127, v88, v127
	v_mul_f32_e32 v128, v88, v128
	v_mul_f32_e32 v129, v88, v129
	v_mul_f32_e32 v131, v88, v131
	v_mul_f32_e32 v132, v88, v132
	v_mul_f32_e32 v133, v88, v133
	v_mul_f32_e32 v134, v88, v134
	v_mul_f32_e32 v135, v88, v135
	v_mul_f32_e32 v136, v88, v136
	v_mul_f32_e32 v137, v88, v137
	v_mul_f32_e32 v138, v88, v138
	v_mul_f32_e32 v139, v88, v139
	v_mul_f32_e32 v140, v88, v140
	v_mul_f32_e32 v141, v88, v141
	v_mul_f32_e32 v142, v88, v142
	v_mul_f32_e32 v143, v88, v143
	v_mul_f32_e32 v144, v88, v144
	v_mul_f32_e32 v145, v88, v145
	v_mul_f32_e32 v146, v88, v146
	v_mul_f32_e32 v147, v88, v147
	v_mul_f32_e32 v148, v88, v148
	v_mul_f32_e32 v149, v88, v149
	v_mul_f32_e32 v150, v88, v150
	v_mul_f32_e32 v151, v88, v151
	v_mul_f32_e32 v153, v88, v153
	v_mul_f32_e32 v88, v88, v152
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v152, 16, v157
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v98, 16, v98
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v157, 16, v158
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v79, v89 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(35)
	ds_store_b32 v80, v86
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v49, v117, v98 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v99, 16, v99
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v158, 16, v159
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v159, 16, v160
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v160, 16, v161
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v161, 16, v162
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v162, 16, v163
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v163, 16, v164
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v47, v119, v99 :: v_dual_lshlrev_b32 v114, 16, v114
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v43, v123, v90 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v97, 16, v97
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v48, v116, v152 :: v_dual_lshlrev_b32 v87, 16, v87
	v_dual_fmac_f32 v41, v125, v102 :: v_dual_fmac_f32 v46, v118, v157
	v_dual_fmac_f32 v45, v121, v100 :: v_dual_fmac_f32 v44, v120, v158
	v_fmac_f32_e32 v39, v127, v91
	v_dual_fmac_f32 v42, v122, v159 :: v_dual_fmac_f32 v37, v129, v104
	v_dual_fmac_f32 v40, v124, v101 :: v_dual_fmac_f32 v35, v131, v92
	v_dual_fmac_f32 v38, v126, v160 :: v_dual_fmac_f32 v33, v133, v106
	v_dual_fmac_f32 v36, v128, v103 :: v_dual_fmac_f32 v31, v135, v93
	v_dual_fmac_f32 v34, v130, v161 :: v_dual_fmac_f32 v29, v137, v108
	v_dual_fmac_f32 v32, v132, v105 :: v_dual_fmac_f32 v27, v139, v94
	v_dual_fmac_f32 v30, v134, v162 :: v_dual_fmac_f32 v23, v143, v95
	v_dual_fmac_f32 v28, v136, v107 :: v_dual_fmac_f32 v25, v141, v110
	v_dual_fmac_f32 v26, v138, v163 :: v_dual_fmac_f32 v21, v145, v112
	v_dual_fmac_f32 v24, v140, v109 :: v_dual_fmac_f32 v19, v147, v96
	v_dual_fmac_f32 v22, v142, v154 :: v_dual_fmac_f32 v13, v88, v115
	v_dual_fmac_f32 v20, v144, v111 :: v_dual_fmac_f32 v17, v149, v114
	v_fmac_f32_e32 v18, v146, v155
	v_dual_fmac_f32 v16, v148, v113 :: v_dual_fmac_f32 v15, v150, v156
	v_fmac_f32_e32 v14, v151, v97
	v_fmac_f32_e32 v12, v153, v87
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow485
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s6, v9
	s_mul_i32 s3, s33, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v87, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s4, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v154, s11 :: v_dual_and_b32 v3, 0x70, v78
	v_dual_mov_b32 v153, s10 :: v_dual_mov_b32 v150, s7
	v_mov_b32_e32 v152, s9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_or_b32 v3, 0x88, v77, v3
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v151, s8 :: v_dual_mov_b32 v148, s5
	v_mov_b32_e32 v149, s6
	v_mov_b32_e32 v147, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v77, 0, v3
	v_xad_u32 v78, v3, 8, 0
	ds_load_2addr_b64 v[3:6], v77 offset1:32
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[7:8], v77 offset:2048
	ds_load_b64 v[10:11], v78 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[85:88], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[89:92], v77 offset0:128 offset1:160
	ds_load_2addr_b64 v[121:124], v77 offset0:192 offset1:224
	ds_load_2addr_b64 v[163:166], v78 offset1:32
	ds_load_2addr_b64 v[167:170], v78 offset0:64 offset1:96
	ds_load_2addr_b64 v[171:174], v78 offset0:192 offset1:224
	ds_load_2addr_b64 v[175:178], v78 offset0:128 offset1:160
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[3:4], v[7:8], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[5:6], v[7:8], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[85:86], v[7:8], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[87:88], v[7:8], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[89:90], v[7:8], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[91:92], v[7:8], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[121:122], v[7:8], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[123:124], v[7:8], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[163:164], v[10:11], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[165:166], v[10:11], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[167:168], v[10:11], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[169:170], v[10:11], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[175:176], v[10:11], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[177:178], v[10:11], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[171:172], v[10:11], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[173:174], v[10:11], v[147:154] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v4, v77
	v_cvt_f32_i32_e32 v5, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v10, v80
	v_cvt_f32_i32_e32 v6, v81
	v_cvt_f32_i32_e32 v7, v82
	v_cvt_f32_i32_e32 v86, v83
	v_cvt_f32_i32_e32 v87, v84
	v_cvt_f32_i32_e32 v88, v94
	v_cvt_f32_i32_e32 v89, v95
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v90, v98
	v_cvt_f32_i32_e32 v91, v99
	v_cvt_f32_i32_e32 v94, v100
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v100, v105
	v_cvt_f32_i32_e32 v99, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v92, v110
	v_cvt_f32_i32_e32 v101, v111
	v_cvt_f32_i32_e32 v104, v112
	v_cvt_f32_i32_e32 v102, v113
	v_cvt_f32_i32_e32 v105, v114
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v109, v116
	v_cvt_f32_i32_e32 v103, v117
	v_cvt_f32_i32_e32 v106, v118
	v_cvt_f32_i32_e32 v113, v119
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v117, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v126, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v121, v131
	v_cvt_f32_i32_e32 v124, v132
	v_cvt_f32_i32_e32 v127, v133
	v_cvt_f32_i32_e32 v131, v134
	v_cvt_f32_i32_e32 v133, v138
	v_cvt_f32_i32_e32 v132, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v128, v142
	v_cvt_f32_i32_e32 v125, v143
	v_cvt_f32_i32_e32 v134, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v135, v155
	v_cvt_f32_i32_e32 v138, v156
	v_cvt_f32_i32_e32 v144, v157
	v_cvt_f32_i32_e32 v142, v158
	v_cvt_f32_i32_e32 v136, v159
	v_cvt_f32_i32_e32 v139, v160
	v_cvt_f32_i32_e32 v145, v161
	v_cvt_f32_i32_e32 v146, v162
	v_cvt_f32_i32_e32 v80, v147
	v_cvt_f32_i32_e32 v81, v148
	v_cvt_f32_i32_e32 v84, v149
	v_cvt_f32_i32_e32 v85, v150
	v_cvt_f32_i32_e32 v82, v151
	v_cvt_f32_i32_e32 v83, v152
	v_cvt_f32_i32_e32 v11, v153
	v_cvt_f32_i32_e32 v79, v154
.LBB0_8:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s19
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s21, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s18, s0
	s_mov_b32 s23, 0x31027000
	v_add_lshl_u32 v96, s0, v76, 1
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s20, s14
	.loc	1 216 18 is_stmt 1              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v164, s19, v9
	s_mul_i32 s33, s33, s19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v3, 4, v96
	v_cndmask_b32_e64 v76, 0x80000000, v96, s2
	v_add_nc_u32_e32 v77, 12, v96
	v_add_nc_u32_e32 v78, 8, v96
	v_add_nc_u32_e32 v110, 16, v96
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_u16 v150, v76, s[20:23], 0 offen
	v_add_nc_u32_e32 v114, 28, v96
	v_add_nc_u32_e32 v112, 24, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v151, v3, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 20, v96
	v_cndmask_b32_e64 v3, 0x80000000, v77, s2
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	v_cndmask_b32_e64 v78, 0x80000000, v110, s2
	v_cndmask_b32_e64 v110, 0x80000000, v114, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	s_clause 0x5
	buffer_load_u16 v152, v3, s[20:23], 0 offen
	buffer_load_u16 v153, v78, s[20:23], 0 offen
	buffer_load_u16 v154, v76, s[20:23], 0 offen
	buffer_load_u16 v155, v110, s[20:23], 0 offen
	buffer_load_u16 v156, v112, s[20:23], 0 offen
	buffer_load_u16 v157, v77, s[20:23], 0 offen
	v_add_nc_u32_e32 v76, 36, v96
	v_add_nc_u32_e32 v112, 56, v96
	v_add_nc_u32_e32 v114, 60, v96
	v_add_nc_u32_e32 v110, 48, v96
	v_add_nc_u32_e32 v78, 40, v96
	v_add_nc_u32_e32 v3, 32, v96
	v_add_nc_u32_e32 v77, 44, v96
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	v_cndmask_b32_e64 v115, 0x80000000, v110, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x6
	buffer_load_u16 v158, v76, s[20:23], 0 offen
	buffer_load_u16 v110, v112, s[20:23], 0 offen
	buffer_load_u16 v112, v114, s[20:23], 0 offen
	buffer_load_u16 v159, v115, s[20:23], 0 offen
	buffer_load_u16 v160, v78, s[20:23], 0 offen
	buffer_load_u16 v161, v3, s[20:23], 0 offen
	buffer_load_u16 v162, v77, s[20:23], 0 offen
	v_add_nc_u32_e32 v3, 52, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_u16 v163, v3, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v3.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v3.h, v2.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v2, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v166, v4, v3
	v_dual_mul_f32 v149, v107, v3 :: v_dual_add_nc_u32 v4, 64, v96
	v_mul_f32_e32 v165, v5, v3
	v_dual_mul_f32 v170, v7, v3 :: v_dual_add_nc_u32 v5, 0x44, v96
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v147, v95, v3
	v_mul_f32_e32 v172, v87, v3
	v_mul_f32_e32 v169, v6, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v183, v4, s[20:23], 0 offen
	buffer_load_u16 v184, v5, s[20:23], 0 offen
	v_add_nc_u32_e32 v4, 0x48, v96
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v182, v108, v3 :: v_dual_add_nc_u32 v5, 0x4c, v96
	v_mul_f32_e32 v108, v113, v3
	v_mul_f32_e32 v87, v125, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v185, v4, s[20:23], 0 offen
	buffer_load_u16 v186, v5, s[20:23], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v180, v100, v3 :: v_dual_add_nc_u32 v107, 0x60, v96
	v_dual_mul_f32 v129, v101, v3 :: v_dual_add_nc_u32 v4, 0x50, v96
	v_dual_mul_f32 v174, v89, v3 :: v_dual_add_nc_u32 v5, 0x54, v96
	v_dual_mul_f32 v118, v111, v3 :: v_dual_add_nc_u32 v111, 0x64, v96
	v_mul_f32_e32 v168, v10, v3
	v_mul_f32_e32 v123, v105, v3
	v_mul_f32_e32 v105, v120, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v173, v88, v3
	v_mul_f32_e32 v143, v104, v3
	v_mul_f32_e32 v88, v140, v3
	v_mul_f32_e32 v76, v138, v3
	v_mul_f32_e32 v6, v136, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v136, v107, s[20:23], 0 offen
	buffer_load_u16 v138, v111, s[20:23], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v176, v90, v3
	v_mul_f32_e32 v77, v134, v3
	v_mul_f32_e32 v78, v137, v3
	v_mul_f32_e32 v178, v94, v3
	v_mul_f32_e32 v114, v103, v3
	v_mul_f32_e32 v175, v93, v3
	v_mul_f32_e32 v179, v98, v3
	v_mul_f32_e32 v98, v126, v3
	v_mul_f32_e32 v93, v131, v3
	v_mul_f32_e32 v148, v92, v3
	v_dual_mul_f32 v104, v117, v3 :: v_dual_add_nc_u32 v117, 0x68, v96
	v_mul_f32_e32 v122, v102, v3
	v_mul_f32_e32 v181, v99, v3
	v_mul_f32_e32 v7, v139, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v100.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v177, v91, v3
	v_mul_f32_e32 v115, v106, v3
	v_dual_mul_f32 v91, v132, v3 :: v_dual_add_nc_u32 v132, 0x70, v96
	v_mul_f32_e32 v94, v121, v3
	v_dual_mul_f32 v90, v133, v3 :: v_dual_add_nc_u32 v133, 0x74, v96
	v_mul_f32_e32 v97, v97, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v92, v127, v3
	v_mul_f32_e32 v10, v135, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v167, v8, v3
	v_mul_f32_e32 v119, v109, v3
	v_mul_f32_e32 v109, v116, v3
	v_mul_f32_e32 v8, v144, v3
	v_dual_mul_f32 v171, v86, v3 :: v_dual_add_nc_u32 v144, 0x78, v96
	v_mul_f32_e32 v86, v128, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v101.h, v3.l
	v_mov_b16_e32 v102.h, v3.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v106.h, v3.l
	v_mov_b16_e32 v126.h, v3.l
	v_mov_b16_e32 v116.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v103, 16, v150
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v103, v166, v103, v75
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v120, 16, v152
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v125, 16, v153
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v75, v75, v103, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v103, 0x6c, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v152.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v111, v168, v120, v72
	v_fma_f32 v125, v169, v125, v71
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v120.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v100.l, v75.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v99, v130, v3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v71, v71, v125, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v130.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v107, 16, v157
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v121, 16, v154
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v120.l, v71.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v89, v141, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v140, v4, s[20:23], 0 offen
	buffer_load_u16 v141, v5, s[20:23], 0 offen
	v_add_nc_u32_e32 v4, 0x58, v96
	v_add_nc_u32_e32 v5, 0x5c, v96
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v131, 16, v161
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v135, 16, v162
	v_add_nc_u32_e32 v153, 0x80, v96
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v134, v4, s[20:23], 0 offen
	buffer_load_u16 v137, v5, s[20:23], 0 offen
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v131, v173, v131, v67
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v146, v3
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v146, v132, s[20:23], 0 offen
	buffer_load_u16 v150, v133, s[20:23], 0 offen
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v132, 16, v163
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v97, v97, v135, v64
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v67, v67, v131, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v135, 0x7c, v96
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v107, v167, v107, v73
	v_fma_f32 v132, v177, v132, v62
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v127, 16, v156
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v130.l, v67.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v9, v142, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v139, v117, s[20:23], 0 offen
	buffer_load_u16 v142, v103, s[20:23], 0 offen
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v157, v62, v132, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v62, 1, v100
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	s_clause 0x1
	buffer_load_u16 v144, v144, s[20:23], 0 offen
	buffer_load_u16 v154, v135, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v62, v75, v62, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v135, 0x80000000, v153, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v103, v170, v121, v70
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v121, 16, v155
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v73, v73, v107, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v62.l, 0x7fff, v62.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v113, 16, v151
	v_lshlrev_b32_e32 v151, 16, v159
	v_add_nc_u32_e32 v107, 0x88, v96
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v72, v72, v111, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v111, 0x8c, v96
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v113, v165, v113, v74
	v_fma_f32 v151, v176, v151, v63
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v128, 16, v158
	v_add_nc_u32_e32 v125, 0x90, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v102.l, v72.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v74, v113, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v113, 0x84, v96
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v151, v63, v151, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v63, 0x80000000, v107, s2
	v_cndmask_b32_e64 v107, 0x80000000, v111, s2
	s_clause 0x1
	buffer_load_u16 v158, v63, s[20:23], 0 offen
	buffer_load_u16 v159, v107, s[20:23], 0 offen
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	s_clause 0x1
	buffer_load_u16 v155, v135, s[20:23], 0 offen
	buffer_load_u16 v156, v113, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v101.l, v74.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v70, v70, v103, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v103, 0x94, v96
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v127, v171, v127, v69
	v_fma_f32 v121, v172, v121, v68
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v63, 1, v101
	v_and_b32_e32 v101, 1, v102
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v102, 0x80000000, v125, s2
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v4, v145, v3 :: v_dual_lshlrev_b32 v145, 16, v160
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v69, v69, v127, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v127, 0x98, v96
	s_clause 0x1
	buffer_load_u16 v160, v102, s[20:23], 0 offen
	buffer_load_u16 v161, v103, s[20:23], 0 offen
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v68, v68, v121, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v121, 0x9c, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v106.l, v73.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v133, v175, v145, v65
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v103, 0x80000000, v127, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v95, v124, v3
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v128, v174, v128, v66
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v100, 1, v106
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v106, 0x80000000, v121, s2
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v65, v65, v133, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v133, v103, s[20:23], 0 offen
	buffer_load_u16 v135, v106, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v117.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v131, 0xa0, v96
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v66, v66, v128, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v117.l, v69.h
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v128, 0xa4, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v102, 1, v120
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v153, 0xa8, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v126.l, v66.h
	v_and_b32_e32 v103, 1, v117
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v117, 0x80000000, v131, s2
	v_cndmask_b32_e64 v120, 0x80000000, v128, s2
	s_clause 0x1
	buffer_load_u16 v131, v117, s[20:23], 0 offen
	buffer_load_u16 v132, v120, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v121, 1, v126
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v64, v64, v97, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v97, 0xac, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v116.l, v70.h
	v_cmp_o_f32_e64 s9, v66, v66
	v_add3_u32 v66, v66, v121, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v121, 0x80000000, v153, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v107, 1, v116
	v_and_b32_e32 v116, 1, v130
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v128, v121, s[20:23], 0 offen
	buffer_load_u16 v130, v97, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v152.l, v65.h
	v_mov_b16_e32 v124.h, v3.l
	v_mov_b16_e64 v145.h, v3.l
	v_mov_b16_e32 v124.l, v68.h
	v_mov_b16_e64 v145.l, v64.h
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v113, 0xb0, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s6, v69, v69
	v_add3_u32 v69, v69, v103, 0x7fff
	v_and_b32_e32 v120, 1, v152
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v111, 0xb4, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v71, v71
	v_add3_u32 v71, v71, v102, 0x7fff
	v_cmp_o_f32_e64 s5, v70, v70
	v_add3_u32 v70, v70, v107, 0x7fff
	v_and_b32_e32 v107, 1, v124
	v_and_b32_e32 v124, 1, v145
	v_cmp_o_f32_e64 s10, v65, v65
	v_add3_u32 v145, v65, v120, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v69.h, s6
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v69, 0x80000000, v113, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s11, v64, v64
	v_add3_u32 v152, v64, v124, 0x7fff
	v_cndmask_b16 v64.l, 0x7fff, v71.h, s4
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v71, 0x80000000, v111, s2
	v_add_nc_u32_e32 v75, 0xb8, v96
	s_clause 0x1
	buffer_load_u16 v126, v69, s[20:23], 0 offen
	buffer_load_u16 v127, v71, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v74, v74
	v_add3_u32 v63, v74, v63, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v74, 0xbc, v96
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v72, v72, v101, 0x7fff
	v_cmp_o_f32_e64 s7, v68, v68
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	s_clause 0x1
	buffer_load_u16 v124, v75, s[20:23], 0 offen
	buffer_load_u16 v125, v74, s[20:23], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v68, v68, v107, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v73, v73, v100, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v100, 0xc0, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s8, v67, v67
	v_add3_u32 v67, v67, v116, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v101, 0xc4, v96
	v_add_nc_u32_e32 v102, 0xc8, v96
	v_add_nc_u32_e32 v106, 0xcc, v96
	v_add_nc_u32_e32 v103, 0xd0, v96
	v_add_nc_u32_e32 v107, 0xd4, v96
	v_add_nc_u32_e32 v117, 0xdc, v96
	v_add_nc_u32_e32 v97, 0xe4, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v62.h, 0x7fff, v63.h, s0
	v_cndmask_b16 v63.h, 0x7fff, v72.h, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v72, 0xec, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s7
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v68, 0xf4, v96
	v_add_nc_u32_e32 v116, 0xd8, v96
	v_add_nc_u32_e32 v120, 0xe0, v96
	v_add_nc_u32_e32 v121, 0xe8, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v63.l, 0x7fff, v73.h, s1
	v_cndmask_b16 v64.h, 0x7fff, v70.h, s5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v75, v82, v3 :: v_dual_add_nc_u32 v70, 0xf0, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v67, 0xf8, v96
	v_add_nc_u32_e32 v73, 0xfc, v96
	v_cndmask_b32_e64 v69, 0x80000000, v100, s2
	v_cndmask_b32_e64 v71, 0x80000000, v101, s2
	v_cndmask_b32_e64 v96, 0x80000000, v102, s2
	v_cndmask_b32_e64 v100, 0x80000000, v106, s2
	v_cndmask_b32_e64 v101, 0x80000000, v103, s2
	v_cndmask_b32_e64 v102, 0x80000000, v107, s2
	v_cndmask_b32_e64 v107, 0x80000000, v117, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e64 v103, 0x80000000, v116, s2
	v_cndmask_b32_e64 v153, 0x80000000, v120, s2
	v_cndmask_b32_e64 v162, 0x80000000, v121, s2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	s_clause 0xf
	buffer_load_u16 v120, v69, s[20:23], 0 offen
	buffer_load_u16 v121, v71, s[20:23], 0 offen
	buffer_load_u16 v116, v96, s[20:23], 0 offen
	buffer_load_u16 v117, v100, s[20:23], 0 offen
	buffer_load_u16 v111, v101, s[20:23], 0 offen
	buffer_load_u16 v113, v102, s[20:23], 0 offen
	buffer_load_u16 v106, v103, s[20:23], 0 offen
	buffer_load_u16 v107, v107, s[20:23], 0 offen
	buffer_load_u16 v100, v153, s[20:23], 0 offen
	buffer_load_u16 v102, v97, s[20:23], 0 offen
	buffer_load_u16 v96, v162, s[20:23], 0 offen
	buffer_load_u16 v97, v72, s[20:23], 0 offen
	buffer_load_u16 v74, v70, s[20:23], 0 offen
	buffer_load_u16 v72, v68, s[20:23], 0 offen
	buffer_load_u16 v68, v67, s[20:23], 0 offen
	buffer_load_u16 v69, v73, s[20:23], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v71, v11, v3
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v11, s33, s18, v164
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s9
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v101, v80, v3
	v_mul_f32_e32 v80, v84, v3
	v_mul_f32_e32 v70, v83, v3
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add_lshl_u32 v2, v11, v2, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v67, 16, v112
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v83.l, v151.h
	v_mov_b16_e32 v83.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v103, v81, v3
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v82, v179, v67, v61
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v67.l, v157.h
	v_mov_b16_e32 v67.h, v3.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v81, v85, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add_nc_u32_e32 v11, 64, v2
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v61, v61, v82, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v82, 1, v83
	v_and_b32_e32 v84, 1, v67
	v_cndmask_b16 v67.h, 0x7fff, v152.h, s11
	v_cndmask_b16 v67.l, 0x7fff, v145.h, s10
	v_cmp_o_f32_e64 s0, v61, v61
	v_add3_u32 v82, v151, v82, 0x7fff
	v_add3_u32 v83, v157, v84, 0x7fff
	v_mov_b16_e32 v84.h, v3.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v73, v79, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v79, 16, v110
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v110, 16, v183
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s18, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v79, v178, v79, v60
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v79, v60, v79, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v60.l, v61.h
	v_mov_b16_e32 v60.h, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v84.l, v79.h
	v_and_b32_e32 v85, 1, v60
	v_cndmask_b16 v60.h, 0x7fff, v83.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v83, 16, v184
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_and_b32_e32 v84, 1, v84
	v_add3_u32 v85, v61, v85, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v83, v181, v83, v59
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v60.l, 0x7fff, v82.h, vcc_lo
	v_add3_u32 v61, v79, v84, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v82, v180, v110, v58
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v83, v59, v83, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v79, 16, v186
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v59.h, 0x7fff, v85.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v58, v58, v82, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v82.h, v3.l
	v_mov_b16_e32 v82.l, v83.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v79, v182, v79, v57
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v59.l, 0x7fff, v61.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v84, 16, v185
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v85.l, v58.h
	v_and_b32_e32 v82, 1, v82
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v57, v57, v79, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v85.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v84, v149, v84, v56
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_add3_u32 v79, v83, v82, 0x7fff
	v_mov_b16_e32 v83.h, v3.l
	v_and_b32_e32 v61, 1, v85
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v82, v56, v84, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v56.l, v57.h
	v_mov_b16_e32 v56.h, v3.l
	v_cmp_o_f32_e64 s0, v57, v57
	v_add3_u32 v61, v58, v61, 0x7fff
	v_mov_b16_e32 v83.l, v82.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v84, 1, v56
	v_cndmask_b16 v56.h, 0x7fff, v79.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_and_b32_e32 v58, 1, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v83, v57, v84, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v61.h, vcc_lo
	v_add3_u32 v57, v82, v58, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v84, 16, v140
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v79, 16, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v58, v147, v84, v54
	v_fma_f32 v79, v148, v79, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v54, v54, v58, s2
	v_cndmask_b32_e64 v61, v55, v79, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v79, 16, v137
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v58.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v82, 16, v134
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v55.h, 0x7fff, v83.h, s0
	v_mov_b16_e32 v58.l, v61.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v79, v143, v79, v53
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v83.l, v54.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v82, v129, v82, v52
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v83.h, v3.l
	v_and_b32_e32 v58, 1, v58
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v53, v53, v79, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v55.l, 0x7fff, v57.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v79, v52, v82, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v52.h, v3.l
	v_add3_u32 v58, v61, v58, 0x7fff
	v_mov_b16_e32 v52.l, v53.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v57, 1, v83
	v_mov_b16_e32 v61.l, v79.h
	v_mov_b16_e32 v61.h, v3.l
	v_and_b32_e32 v82, 1, v52
	v_cndmask_b16 v52.h, 0x7fff, v58.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v58, 16, v138
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v57, v54, v57, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_and_b32_e32 v54, 1, v61
	v_add3_u32 v61, v53, v82, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v82, 16, v136
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v58, v123, v58, v51
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v53, v53
	v_cndmask_b16 v52.l, 0x7fff, v57.h, vcc_lo
	v_add3_u32 v53, v79, v54, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v54, v122, v82, v50
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v57, v51, v58, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v58, 16, v142
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v51.h, 0x7fff, v61.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v61, 16, v139
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v50, v50, v54, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v54.l, v57.h
	v_mov_b16_e32 v54.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v58, v119, v58, v49
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v61, v118, v61, v48
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v79.l, v50.h
	v_and_b32_e32 v54, 1, v54
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v49, v49, v58, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v79.h, v3.l
	v_cndmask_b16 v51.l, 0x7fff, v53.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v58, v48, v61, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v54, v57, v54, 0x7fff
	v_mov_b16_e32 v48.l, v49.h
	v_mov_b16_e32 v48.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_and_b32_e32 v53, 1, v79
	v_mov_b16_e32 v57.l, v58.h
	v_mov_b16_e32 v57.h, v3.l
	v_and_b32_e32 v61, 1, v48
	v_cndmask_b16 v48.h, 0x7fff, v54.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v54, 16, v150
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v53, v50, v53, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_and_b32_e32 v50, 1, v57
	v_add3_u32 v57, v49, v61, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v61, 16, v146
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v54, v115, v54, v47
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v49, v49
	v_cndmask_b16 v48.l, 0x7fff, v53.h, vcc_lo
	v_add3_u32 v49, v58, v50, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v50, v114, v61, v46
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v53, v47, v54, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v54, 16, v154
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v47.h, 0x7fff, v57.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v57, 16, v144
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v46, v46, v50, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v50.l, v53.h
	v_mov_b16_e32 v50.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v54, v109, v54, v45
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v57, v108, v57, v44
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v58.l, v46.h
	v_and_b32_e32 v50, 1, v50
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v45, v45, v54, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v58.h, v3.l
	v_cndmask_b16 v47.l, 0x7fff, v49.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v54, v44, v57, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v50, v53, v50, 0x7fff
	v_mov_b16_e32 v44.l, v45.h
	v_mov_b16_e32 v44.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v49, 1, v58
	v_mov_b16_e32 v53.l, v54.h
	v_mov_b16_e32 v53.h, v3.l
	v_and_b32_e32 v57, 1, v44
	v_cndmask_b16 v44.h, 0x7fff, v50.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v50, 16, v156
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v49, v46, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v46, 1, v53
	v_add3_u32 v53, v45, v57, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v50, v105, v50, v43
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v57, 16, v155
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v45, v45
	v_cndmask_b16 v44.l, 0x7fff, v49.h, vcc_lo
	v_add3_u32 v45, v54, v46, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v49, v43, v50, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v50, 16, v159
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v46, v104, v57, v42
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v43.h, 0x7fff, v53.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v53, 16, v158
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v50, v99, v50, v41
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v42, v42, v46, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v46.l, v49.h
	v_mov_b16_e32 v46.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v53, v98, v53, v40
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v41, v41, v50, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v54.l, v42.h
	v_mov_b16_e32 v54.h, v3.l
	v_and_b32_e32 v46, 1, v46
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v40, v40, v53, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v50.l, v41.h
	v_mov_b16_e32 v50.h, v3.l
	v_cndmask_b16 v43.l, 0x7fff, v45.h, vcc_lo
	v_and_b32_e32 v45, 1, v54
	v_add3_u32 v46, v49, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_mov_b16_e32 v49.l, v40.h
	v_mov_b16_e32 v49.h, v3.l
	v_and_b32_e32 v50, 1, v50
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v53, 16, v161
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v45, v42, v45, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_and_b32_e32 v42, 1, v49
	v_add3_u32 v49, v41, v50, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v50, 16, v160
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v53, v95, v53, v39
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v41, v41
	v_cndmask_b16 v46.l, 0x7fff, v45.h, vcc_lo
	v_add3_u32 v41, v40, v42, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v42, v94, v50, v38
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v39, v39, v53, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v40, 16, v135
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v45.h, 0x7fff, v49.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v38, v38, v42, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.l, v39.h
	v_mov_b16_e32 v42.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v49, 16, v133
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v40, v93, v40, v37
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v50.l, v38.h
	v_mov_b16_e32 v50.h, v3.l
	v_and_b32_e32 v42, 1, v42
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v49, v92, v49, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v37, v40, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v45.l, 0x7fff, v41.h, vcc_lo
	v_and_b32_e32 v40, 1, v50
	v_add3_u32 v41, v39, v42, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v36, v49, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.l, v37.h
	v_mov_b16_e32 v42.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v39, v38, v40, 0x7fff
	v_mov_b16_e32 v40.l, v36.h
	v_mov_b16_e32 v40.h, v3.l
	v_and_b32_e32 v42, 1, v42
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v49, 16, v132
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_and_b32_e32 v38, 1, v40
	v_add3_u32 v40, v37, v42, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v42, 16, v131
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v49, v91, v49, v35
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v37, v37
	v_cndmask_b16 v41.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v37, v36, v38, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v38, v90, v42, v34
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v35, v35, v49, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v36, 16, v130
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v34, v34, v38, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v38.l, v35.h
	v_mov_b16_e32 v38.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v40, 16, v128
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v36, v89, v36, v33
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v42.h, v3.l
	v_and_b32_e32 v38, 1, v38
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v40, v88, v40, v32
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v33, v36, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v39.l, 0x7fff, v37.h, vcc_lo
	v_and_b32_e32 v36, 1, v42
	v_add3_u32 v37, v35, v38, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v32, v40, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v38.l, v33.h
	v_mov_b16_e32 v38.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v34, v36, 0x7fff
	v_mov_b16_e32 v36.l, v32.h
	v_mov_b16_e32 v36.h, v3.l
	v_and_b32_e32 v38, 1, v38
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v40, 16, v127
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_and_b32_e32 v34, 1, v36
	v_add3_u32 v36, v33, v38, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v38, 16, v126
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v40, v87, v40, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v33, v33
	v_cndmask_b16 v37.l, 0x7fff, v35.h, vcc_lo
	v_add3_u32 v33, v32, v34, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v34, v86, v38, v30
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v31, v40, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v32, 16, v125
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v30, v34, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v34.l, v31.h
	v_mov_b16_e32 v34.h, v3.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v36, 16, v124
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v32, v78, v32, v29
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v38.l, v30.h
	v_mov_b16_e32 v38.h, v3.l
	v_and_b32_e32 v34, 1, v34
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v36, v77, v36, v28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v29, v32, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v35.l, 0x7fff, v33.h, vcc_lo
	v_and_b32_e32 v32, 1, v38
	v_add3_u32 v33, v31, v34, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v28, v36, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v31, v30, v32, 0x7fff
	v_mov_b16_e32 v32.l, v28.h
	v_mov_b16_e32 v32.h, v3.l
	v_and_b32_e32 v34, 1, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v36, 16, v121
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_and_b32_e32 v30, 1, v32
	v_add3_u32 v32, v29, v34, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v34, 16, v120
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v36, v76, v36, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v29, v29
	v_cndmask_b16 v33.l, 0x7fff, v31.h, vcc_lo
	v_add3_u32 v29, v28, v30, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v10, v34, v26
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v27, v36, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v28, 16, v117
	v_lshlrev_b32_e32 v31, 16, v116
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v26, v10, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v27.h
	v_mov_b16_e32 v26.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v9, v28, v25
	v_fma_f32 v8, v8, v31, v24
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v28.l, v10.h
	v_mov_b16_e32 v28.h, v3.l
	v_and_b32_e32 v26, 1, v26
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v25, v9, s2
	v_cndmask_b32_e64 v8, v24, v8, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v25, 1, v28
	v_add3_u32 v26, v27, v26, 0x7fff
	v_mov_b16_e32 v24.l, v9.h
	v_mov_b16_e32 v24.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v27.l, v8.h
	v_mov_b16_e32 v27.h, v3.l
	v_add3_u32 v25, v10, v25, 0x7fff
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v28, 16, v113
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v27, 16, v111
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s0
	v_add3_u32 v24, v9, v24, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v7, v28, v23
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_add3_u32 v9, v8, v10, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v6, v27, v22
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v107
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v23, v7, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v23, 16, v106
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v22, v6, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v22.h, v3.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v8, v21
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v22.l, v7.h
	v_mov_b16_e32 v8.h, v3.l
	v_mov_b16_e32 v8.l, v6.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v4, v4, v23, v20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v21, v5, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v8, 1, v8
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v20, v4, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v5.h
	v_mov_b16_e32 v20.h, v3.l
	v_add3_u32 v9, v7, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v7, v6, v8, 0x7fff
	v_mov_b16_e32 v8.l, v4.h
	v_mov_b16_e32 v8.h, v3.l
	v_and_b32_e32 v20, 1, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v102
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_and_b32_e32 v6, 1, v8
	v_add3_u32 v8, v5, v20, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v20, 16, v100
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v103, v21, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v10.h, 0x7fff, v24.h, s0
	v_cmp_o_f32_e64 s0, v5, v5
	v_cndmask_b16 v9.l, 0x7fff, v7.h, vcc_lo
	v_add3_u32 v5, v4, v6, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v101, v20, v18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v19, v21, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v97
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v20.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v18, v6, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v6.l, v7.h
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v18, 16, v96
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v81, v19, v17
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v6.h, v3.l
	v_mov_b16_e32 v20.l, v4.h
	v_cndmask_b16 v8.l, 0x7fff, v5.h, vcc_lo
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v18, v80, v18, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v17, v19, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v5, 1, v6
	v_and_b32_e32 v6, 1, v20
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v16, v18, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e32 v18.h, v3.l
	v_add3_u32 v5, v7, v5, 0x7fff
	v_mov_b16_e32 v7.h, v3.l
	v_mov_b16_e32 v7.l, v16.h
	v_add3_u32 v6, v4, v6, 0x7fff
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s0
	v_and_b32_e32 v4, 1, v7
	v_add3_u32 v7, v17, v18, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v74
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v17, v17
	v_cndmask_b16 v5.l, 0x7fff, v6.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v6, 16, v72
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v4, v16, v4, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v75, v18, v15
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v69
	v_lshlrev_b32_e32 v18, 16, v68
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v70, v6, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v15, v17, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v73, v7, v12
	v_fma_f32 v16, v71, v18, v13
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v14, v6, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v3.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v12, v7, s2
	v_cndmask_b32_e64 v12, v13, v16, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v3.l
	v_and_b32_e32 v14, 1, v14
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v17.l, v12.h
	v_mov_b16_e32 v17.h, v3.l
	v_mov_b16_e32 v16.h, v3.l
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v4, v15, v14, 0x7fff
	v_and_b32_e32 v14, 1, v17
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v13, v6, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v6, v12, v14, 0x7fff
	v_add3_u32 v14, v7, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v7, v7
	v_cmp_o_f32_e64 s2, v12, v12
	v_cndmask_b16 v7.h, 0x7fff, v13.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cndmask_b16 v7.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v14.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v32, v33, v37, vcc_lo
	v_dual_cndmask_b32 v33, v37, v33 :: v_dual_cndmask_b32 v36, v8, v10
	v_dual_cndmask_b32 v8, v10, v8 :: v_dual_cndmask_b32 v37, v7, v5
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_mov_b32_e32 v7, 0x5410
	v_mov_b32_e32 v10, 0x7632
	v_dual_cndmask_b32 v38, v1, v3 :: v_dual_cndmask_b32 v1, v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v6, v62, v64 :: v_dual_cndmask_b32 v3, 0x1054, v7
	v_cndmask_b32_e32 v7, 0x3276, v10, vcc_lo
	v_cndmask_b32_e32 v13, v63, v65, vcc_lo
	v_cndmask_b32_e32 v15, v66, v60, vcc_lo
	v_cndmask_b32_e32 v17, v67, v59, vcc_lo
	v_lshl_or_b32 v3, v3, 8, v3
	v_lshl_or_b32 v7, v7, 8, v7
	v_cndmask_b32_e32 v19, v56, v52, vcc_lo
	v_cndmask_b32_e32 v21, v55, v51, vcc_lo
	v_cndmask_b32_e32 v23, v48, v44, vcc_lo
	v_and_b32_e32 v3, 0x540054, v3
	v_and_b32_e32 v7, 0x760076, v7
	v_dual_cndmask_b32 v25, v47, v43 :: v_dual_cndmask_b32 v28, v46, v41
	v_cndmask_b32_e32 v31, v45, v39, vcc_lo
	v_cndmask_b32_e32 v34, v30, v35, vcc_lo
	v_cndmask_b32_e32 v30, v35, v30, vcc_lo
	v_cndmask_b32_e32 v35, v9, v26, vcc_lo
	v_cndmask_b32_e32 v9, v26, v9, vcc_lo
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v7, v7, 4, v7
	v_cndmask_b32_e32 v4, v64, v62, vcc_lo
	v_cndmask_b32_e32 v12, v65, v63, vcc_lo
	v_cndmask_b32_e32 v14, v60, v66, vcc_lo
	v_cndmask_b32_e32 v16, v59, v67, vcc_lo
	v_cndmask_b32_e32 v18, v52, v56, vcc_lo
	v_cndmask_b32_e32 v20, v51, v55, vcc_lo
	v_cndmask_b32_e32 v22, v44, v48, vcc_lo
	v_dual_cndmask_b32 v24, v43, v47 :: v_dual_cndmask_b32 v27, v41, v46
	v_cndmask_b32_e32 v29, v39, v45, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v3
	v_and_b32_e32 v40, 0x7060706, v7
	v_permlanex16_b32 v33, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v2
	v_permlanex16_b32 v41, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v4, v39
	v_perm_b32 v4, v6, v4, v40
	v_perm_b32 v5, v10, v12, v39
	v_perm_b32 v6, v10, v12, v40
	v_perm_b32 v7, v13, v14, v39
	v_perm_b32 v8, v13, v14, v40
	v_perm_b32 v9, v15, v16, v39
	v_perm_b32 v10, v15, v16, v40
	v_perm_b32 v12, v17, v18, v39
	v_perm_b32 v13, v17, v18, v40
	v_perm_b32 v14, v19, v20, v39
	v_perm_b32 v15, v19, v20, v40
	v_perm_b32 v16, v21, v22, v39
	v_perm_b32 v17, v21, v22, v40
	v_perm_b32 v18, v23, v24, v39
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v20, v25, v27, v39
	v_perm_b32 v21, v25, v27, v40
	v_perm_b32 v22, v26, v29, v39
	v_perm_b32 v23, v26, v29, v40
	v_perm_b32 v24, v28, v32, v39
	v_perm_b32 v25, v28, v32, v40
	v_perm_b32 v26, v30, v34, v39
	v_perm_b32 v27, v30, v34, v40
	v_perm_b32 v28, v31, v35, v39
	v_perm_b32 v29, v31, v35, v40
	v_perm_b32 v30, v33, v36, v39
	v_perm_b32 v31, v33, v36, v40
	v_cndmask_b32_e32 v36, 0x80000000, v2, vcc_lo
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_clause 0x2
	buffer_store_b128 v[3:6], v36, s[16:19], 0 offen
	buffer_store_b128 v[7:10], v0, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v11, s[16:19], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v2
	v_perm_b32 v34, v1, v38, v39
	v_perm_b32 v35, v1, v38, v40
	v_add_nc_u32_e32 v1, 0x80, v2
	v_add_nc_u32_e32 v3, 0xa0, v2
	v_add_nc_u32_e32 v4, 0xc0, v2
	v_add_nc_u32_e32 v2, 0xe0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_perm_b32 v32, v41, v37, v39
	v_perm_b32 v33, v41, v37, v40
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v0, s[16:19], 0 offen
	buffer_store_b128 v[20:23], v1, s[16:19], 0 offen
	buffer_store_b128 v[24:27], v3, s[16:19], 0 offen
	buffer_store_b128 v[28:31], v4, s[16:19], 0 offen
	buffer_store_b128 v[32:35], v2, s[16:19], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 187
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 187
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11908
; TotalNumSgprs: 54
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 187
; Occupancy: 8
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
