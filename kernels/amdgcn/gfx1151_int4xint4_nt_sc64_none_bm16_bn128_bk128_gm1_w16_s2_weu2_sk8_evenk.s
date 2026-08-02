	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v9, 31, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v13, 0x180, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v10, 4, v13
	v_xor_b32_e32 v10, v10, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v82, 0, v10
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
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
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 24, v8
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s23, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s26, s17, 31
	s_sub_i32 s17, s10, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s17, s16
	s_cmp_ge_u32 s17, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s16
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s28, s5, s26
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s28, s26
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s36, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s7
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s27, s3, 5
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[5:6], null, s36, v3, v[1:2]
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s17, 31
.Ltmp15:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v4, s27, v9
	v_or_b32_e32 v7, s27, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v6, s34, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s7, s17, s3
.Ltmp19:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s5, 7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s36, v4
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v4
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s7, 6
.Ltmp21:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s36, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v7
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s17, 63
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, v6, s36, v[4:5]
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s6, s33, s36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s17, 64
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v4, s27, s6, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s6, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	s_and_b32 s16, s3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v7, v5, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[5:6], v4, s[20:23], 0 offen
	v_lshrrev_b32_e32 v4, 1, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s17, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v4, 24, v4
	v_xor_b32_e32 v4, v8, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v83, 0, v4
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v82, v7 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v83, v[5:6]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
	s_mov_b64 s[18:19], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr16_sgpr17
.LBB0_3:                                ; %Flow146
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[0:1], s[0:1], 0x20
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v14, 15, v0
	v_bfe_u32 v80, v0, 4, 1
	v_or_b32_e32 v79, 62, v4
	v_or_b32_e32 v78, 0x7e, v4
	v_dual_mov_b32 v12, 0 :: v_dual_lshlrev_b32 v81, 1, v0
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
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v40, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s44, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v3, s28, 7, v3
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_lshlrev_b32_e32 v4, 1, v0
	s_lshl_b32 s23, s26, 7
	v_lshlrev_b32_e32 v10, 1, v79
	v_subrev_nc_u32_e32 v3, s23, v3
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v2, s34, v2
	v_and_b32_e32 v4, 24, v4
	v_add_nc_u32_e32 v6, s34, v14
	s_lshl_b32 s22, s26, 8
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v5, 1, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v14, 5, v4
	v_subrev_nc_u32_e32 v87, s22, v10
	v_mad_u64_u32 v[10:11], null, s36, v3, v[1:2]
	v_mul_lo_u32 v6, s7, v6
	v_xor_b32_e32 v7, 8, v4
	v_xor_b32_e32 v8, 16, v4
	v_subrev_nc_u32_e32 v85, s22, v5
	v_lshlrev_b32_e32 v5, 1, v80
	v_xor_b32_e32 v15, 24, v4
	v_mad_u64_u32 v[11:12], null, s36, v2, v[9:10]
	v_sub_nc_u32_e32 v84, s36, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v86, s22, v5
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v88, 1, v6
	v_add_nc_u32_e32 v89, 0, v4
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v90, 0, v7
	v_add_nc_u32_e32 v91, 0, v8
	v_dual_mov_b32 v1, s44 :: v_dual_add_nc_u32 v92, 0, v15
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v2, s45
	v_dual_mov_b32 v3, s46 :: v_dual_mov_b32 v4, s47
	v_dual_mov_b32 v5, s48 :: v_dual_mov_b32 v6, s49
	v_dual_mov_b32 v7, s50 :: v_dual_mov_b32 v8, s51
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_max_i32 s37, s5, 1
	s_mov_b64 s[16:17], s[12:13]
	s_lshl_b32 s38, s28, 8
	s_lshl_b32 s39, s35, 1
	s_add_i32 s40, s27, 32
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v126, v88, s[28:31], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s37, s37, -1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v93, s40, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v94, s40, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s36, v93
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v93, 0x80000000, v94, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s40, v84
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v93, v93, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[174:175], v89 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[108:111], v89 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v89 offset0:2 offset1:3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[176:177], v90 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[131:134], v90 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v89 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[139:142], v90 offset0:2 offset1:3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[178:179], v91 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[143:146], v91 offset1:1
	ds_load_2addr_stride64_b64 v[147:150], v91 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[151:154], v90 offset0:4 offset1:5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[180:181], v92 offset:4096
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[108:109], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[110:111], v[174:175], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[127:128], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[129:130], v[174:175], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[131:132], v[176:177], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[133:134], v[176:177], v[102:109] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[127:130], v91 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[131:134], v92 offset1:1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[135:136], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[137:138], v[174:175], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[143:144], v[178:179], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[151:152], v[176:177], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[145:146], v[178:179], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[153:154], v[176:177], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[139:140], v[176:177], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[141:142], v[176:177], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[147:148], v[178:179], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[149:150], v[178:179], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[127:128], v[178:179], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[129:130], v[178:179], v[166:173] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[127:130], v92 offset0:2 offset1:3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[131:132], v[180:181], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[133:134], v[180:181], v[102:109] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[131:134], v92 offset0:4 offset1:5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v182, v94
	v_cvt_f32_i32_e32 v157, v95
	v_cvt_f32_i32_e32 v156, v96
	v_cvt_f32_i32_e32 v155, v97
	v_cvt_f32_i32_e32 v154, v98
	v_cvt_f32_i32_e32 v153, v99
	v_cvt_f32_i32_e32 v152, v100
	v_cvt_f32_i32_e32 v151, v101
	v_mul_f32_e32 v157, v126, v157
	v_cvt_f32_i32_e32 v149, v103
	v_cvt_f32_i32_e32 v150, v102
	v_cvt_f32_i32_e32 v147, v105
	v_cvt_f32_i32_e32 v143, v109
	v_cvt_f32_i32_e32 v148, v104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[127:128], v[180:181], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[129:130], v[180:181], v[118:125] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v146, v106
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[131:132], v[180:181], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[133:134], v[180:181], v[166:173] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v142, v110
	v_cvt_f32_i32_e32 v141, v111
	v_cvt_f32_i32_e32 v140, v112
	v_cvt_f32_i32_e32 v94, v158
	v_cvt_f32_i32_e32 v95, v159
	v_cvt_f32_i32_e32 v96, v160
	v_cvt_f32_i32_e32 v97, v161
	v_cvt_f32_i32_e32 v98, v162
	v_cvt_f32_i32_e32 v99, v163
	v_cvt_f32_i32_e32 v100, v164
	v_cvt_f32_i32_e32 v101, v165
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[158:161], v89 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[162:165], v90 offset0:6 offset1:7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v139, v113
	v_cvt_f32_i32_e32 v138, v114
	v_cvt_f32_i32_e32 v137, v115
	v_cvt_f32_i32_e32 v136, v116
	v_cvt_f32_i32_e32 v135, v117
	v_cvt_f32_i32_e32 v134, v118
	v_cvt_f32_i32_e32 v133, v119
	v_cvt_f32_i32_e32 v132, v120
	v_cvt_f32_i32_e32 v131, v121
	v_cvt_f32_i32_e32 v130, v122
	v_cvt_f32_i32_e32 v129, v123
	v_cvt_f32_i32_e32 v128, v124
	v_cvt_f32_i32_e32 v127, v125
	v_cvt_f32_i32_e32 v145, v107
	v_cvt_f32_i32_e32 v102, v166
	v_cvt_f32_i32_e32 v103, v167
	v_cvt_f32_i32_e32 v104, v168
	v_cvt_f32_i32_e32 v105, v169
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[158:159], v[174:175], v[1:8] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v158, s38, v86
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[118:125], v[160:161], v[174:175], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v160, v126, v182
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[166:169], v91 offset0:6 offset1:7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v159, v158, s[24:27], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v144, v108
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[162:163], v[176:177], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[164:165], v[176:177], v[118:125] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v106, v170
	v_cvt_f32_i32_e32 v107, v171
	v_cvt_f32_i32_e32 v108, v172
	v_cvt_f32_i32_e32 v109, v173
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[170:173], v92 offset0:6 offset1:7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v156, v126, v156
	v_mul_f32_e32 v155, v126, v155
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[166:167], v[178:179], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[168:169], v[178:179], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[170:171], v[180:181], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[172:173], v[180:181], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v159, 16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v160, v159
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v160, v158, s[24:27], 0 offen offset:4
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v77, v157, v160
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v160, v158, s[24:27], 0 offen offset:8
	buffer_load_u16 v163, v158, s[24:27], 0 offen offset:104
	buffer_load_u16 v164, v158, s[24:27], 0 offen offset:108
	buffer_load_u16 v165, v158, s[24:27], 0 offen offset:112
	buffer_load_u16 v166, v158, s[24:27], 0 offen offset:116
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v76, v156, v160 :: v_dual_add_nc_u32 v159, s38, v87
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v156, v158, s[24:27], 0 offen offset:12
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v75, v155, v156
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v155, v158, s[24:27], 0 offen offset:16
	buffer_load_u16 v156, v158, s[24:27], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v154, v126, v154 :: v_dual_add_nc_u32 v157, s38, v85
	v_mul_f32_e32 v153, v126, v153
	v_mul_f32_e32 v151, v126, v151
	v_mul_f32_e32 v134, v126, v134
	v_dual_mul_f32 v95, v126, v95 :: v_dual_add_nc_u32 v86, s39, v86
	v_dual_mul_f32 v94, v126, v94 :: v_dual_add_nc_u32 v87, s39, v87
	v_dual_mul_f32 v97, v126, v97 :: v_dual_add_nc_u32 v88, 2, v88
	v_mul_f32_e32 v152, v126, v152
	v_mul_f32_e32 v149, v126, v149
	v_mul_f32_e32 v147, v126, v147
	v_mul_f32_e32 v145, v126, v145
	v_mul_f32_e32 v143, v126, v143
	v_mul_f32_e32 v146, v126, v146
	v_mul_f32_e32 v141, v126, v141
	v_mul_f32_e32 v139, v126, v139
	v_mul_f32_e32 v132, v126, v132
	v_mul_f32_e32 v133, v126, v133
	v_mul_f32_e32 v129, v126, v129
	v_mul_f32_e32 v137, v126, v137
	v_mul_f32_e32 v135, v126, v135
	v_mul_f32_e32 v131, v126, v131
	v_mul_f32_e32 v128, v126, v128
	v_mul_f32_e32 v127, v126, v127
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v85, s39, v85
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v160, s40, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s40, s40, 32
	s_cmp_lg_u32 s37, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v153, v156
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v153, v158, s[24:27], 0 offen offset:32
	buffer_load_u16 v156, v158, s[24:27], 0 offen offset:36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v74, v154, v155
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v154, v158, s[24:27], 0 offen offset:24
	buffer_load_u16 v155, v158, s[24:27], 0 offen offset:28
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v150, v126, v150 :: v_dual_lshlrev_b32 v155, 16, v155
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v69, v149, v156 :: v_dual_fmac_f32 v72, v152, v154
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v152, v158, s[24:27], 0 offen offset:40
	buffer_load_u16 v154, v158, s[24:27], 0 offen offset:44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v71, v151, v155
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v151, v158, s[24:27], 0 offen offset:48
	buffer_load_u16 v155, v158, s[24:27], 0 offen offset:52
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v148, v126, v148
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v149, v158, s[24:27], 0 offen offset:64
	buffer_load_u16 v156, v158, s[24:27], 0 offen offset:68
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v144, v126, v144
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v70, v150, v153
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v150, v158, s[24:27], 0 offen offset:56
	buffer_load_u16 v153, v158, s[24:27], 0 offen offset:60
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v67, v147, v154
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v147, v158, s[24:27], 0 offen offset:80
	buffer_load_u16 v154, v158, s[24:27], 0 offen offset:84
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v140, v126, v140
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v146, v151
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v146, 16, v155
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v68, v148, v152
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v148, v158, s[24:27], 0 offen offset:72
	buffer_load_u16 v152, v158, s[24:27], 0 offen offset:76
	buffer_load_u16 v155, v158, s[24:27], 0 offen offset:96
	buffer_load_u16 v162, v158, s[24:27], 0 offen offset:100
	buffer_load_u16 v151, v158, s[24:27], 0 offen offset:88
	buffer_load_u16 v161, v158, s[24:27], 0 offen offset:92
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v65, v145, v146
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v142, v126, v142
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v136, v126, v136 :: v_dual_lshlrev_b32 v145, 16, v150
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v64, v144, v145
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v144, 16, v153
	v_lshlrev_b32_e32 v153, 16, v164
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v145, 16, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v63, v143, v144
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v143, 16, v149
	v_lshlrev_b32_e32 v144, 16, v148
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v148, 16, v151
	v_lshlrev_b32_e32 v151, 16, v162
	v_lshlrev_b32_e32 v152, 16, v163
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v142, v143 :: v_dual_fmac_f32 v59, v139, v145
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v167, v158, s[24:27], 0 offen offset:120
	buffer_load_u16 v159, v159, s[24:27], 0 offen
	buffer_load_u16 v142, v158, s[24:27], 0 offen offset:128
	v_lshlrev_b32_e32 v143, 16, v156
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v149, 16, v161
	v_lshlrev_b32_e32 v146, 16, v147
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v60, v140, v144 :: v_dual_lshlrev_b32 v147, 16, v154
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v138, v126, v138
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v56, v136, v148
	v_dual_fmac_f32 v51, v131, v153 :: v_dual_lshlrev_b32 v150, 16, v155
	v_fmac_f32_e32 v52, v132, v152
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v130, v126, v130
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v154, 16, v165
	v_lshlrev_b32_e32 v155, 16, v166
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v141, v143
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v141, v158, s[24:27], 0 offen offset:132
	buffer_load_u16 v143, v158, s[24:27], 0 offen offset:136
	buffer_load_u16 v140, v158, s[24:27], 0 offen offset:140
	buffer_load_u16 v144, v158, s[24:27], 0 offen offset:144
	buffer_load_u16 v139, v158, s[24:27], 0 offen offset:148
	buffer_load_u16 v145, v158, s[24:27], 0 offen offset:152
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v137, v147
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v137, v158, s[24:27], 0 offen offset:164
	buffer_load_u16 v147, v158, s[24:27], 0 offen offset:168
	buffer_load_u16 v136, v158, s[24:27], 0 offen offset:172
	buffer_load_u16 v148, v158, s[24:27], 0 offen offset:176
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v55, v135, v149 :: v_dual_fmac_f32 v58, v138, v146
	v_fmac_f32_e32 v53, v133, v151
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v138, v158, s[24:27], 0 offen offset:156
	buffer_load_u16 v146, v158, s[24:27], 0 offen offset:160
	buffer_load_u16 v135, v158, s[24:27], 0 offen offset:180
	buffer_load_u16 v149, v158, s[24:27], 0 offen offset:184
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v54, v134, v150 :: v_dual_fmac_f32 v49, v129, v155
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x9
	buffer_load_u16 v134, v158, s[24:27], 0 offen offset:188
	buffer_load_u16 v150, v158, s[24:27], 0 offen offset:192
	buffer_load_u16 v133, v158, s[24:27], 0 offen offset:196
	buffer_load_u16 v151, v158, s[24:27], 0 offen offset:200
	buffer_load_u16 v132, v158, s[24:27], 0 offen offset:204
	buffer_load_u16 v152, v158, s[24:27], 0 offen offset:208
	buffer_load_u16 v131, v158, s[24:27], 0 offen offset:212
	buffer_load_u16 v153, v158, s[24:27], 0 offen offset:216
	buffer_load_u16 v129, v158, s[24:27], 0 offen offset:228
	buffer_load_u16 v155, v158, s[24:27], 0 offen offset:232
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v96, v126, v96
	v_mul_f32_e32 v98, v126, v98
	v_mul_f32_e32 v99, v126, v99
	v_mul_f32_e32 v100, v126, v100
	v_mul_f32_e32 v101, v126, v101
	v_mul_f32_e32 v102, v126, v102
	v_mul_f32_e32 v103, v126, v103
	v_mul_f32_e32 v104, v126, v104
	v_mul_f32_e32 v105, v126, v105
	v_mul_f32_e32 v106, v126, v106
	v_mul_f32_e32 v107, v126, v107
	v_mul_f32_e32 v108, v126, v108
	v_mul_f32_e32 v109, v126, v109
	v_mul_f32_e32 v110, v126, v110
	v_mul_f32_e32 v111, v126, v111
	v_mul_f32_e32 v112, v126, v112
	v_mul_f32_e32 v113, v126, v113
	v_mul_f32_e32 v114, v126, v114
	v_mul_f32_e32 v115, v126, v115
	v_mul_f32_e32 v116, v126, v116
	v_mul_f32_e32 v117, v126, v117
	v_mul_f32_e32 v118, v126, v118
	v_mul_f32_e32 v119, v126, v119
	v_mul_f32_e32 v123, v126, v123
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v125, v126, v125 :: v_dual_lshlrev_b32 v156, 16, v167
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v50, v130, v154 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v130, v158, s[24:27], 0 offen offset:220
	buffer_load_u16 v154, v158, s[24:27], 0 offen offset:224
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v120, v126, v120
	v_mul_f32_e32 v121, v126, v121
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v47, v127, v159
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v127, v158, s[24:27], 0 offen offset:244
	buffer_load_u16 v159, v158, s[24:27], 0 offen offset:248
	buffer_load_u16 v161, v157, s[24:27], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v157, 0x80000000, v160, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v128, v156
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v128, v158, s[24:27], 0 offen offset:236
	buffer_load_u16 v156, v158, s[24:27], 0 offen offset:240
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v122, v126, v122
	v_mul_f32_e32 v124, v126, v124
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[157:158], v157, s[20:23], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v126, 16, v142
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(31) lgkmcnt(0)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v142, 16, v143
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v143, 16, v144
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v144, 16, v145
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v44, v96, v142 :: v_dual_fmac_f32 v41, v99, v139
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v145, 16, v146
	v_lshlrev_b32_e32 v146, 16, v147
	v_lshlrev_b32_e32 v147, 16, v148
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v148, 16, v149
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v149, 16, v150
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v150, 16, v151
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v151, 16, v152
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v152, 16, v153
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v42, v98, v143 :: v_dual_lshlrev_b32 v129, 16, v129
	v_dual_fmac_f32 v39, v100, v144 :: v_dual_fmac_f32 v38, v101, v138
	v_fmac_f32_e32 v37, v102, v145
	v_dual_fmac_f32 v36, v103, v137 :: v_dual_fmac_f32 v35, v104, v146
	v_dual_fmac_f32 v34, v105, v136 :: v_dual_fmac_f32 v33, v106, v147
	v_dual_fmac_f32 v32, v107, v135 :: v_dual_fmac_f32 v31, v108, v148
	v_dual_fmac_f32 v30, v109, v134 :: v_dual_fmac_f32 v29, v110, v149
	v_dual_fmac_f32 v28, v111, v133 :: v_dual_fmac_f32 v27, v112, v150
	v_dual_fmac_f32 v26, v113, v132 :: v_dual_fmac_f32 v25, v114, v151
	v_dual_fmac_f32 v24, v115, v131 :: v_dual_fmac_f32 v23, v116, v152
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v45, v95, v141 :: v_dual_fmac_f32 v46, v94, v126
	v_fmac_f32_e32 v43, v97, v140
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b8 v82, v93 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v83, v[157:158]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v153, 16, v154
	v_lshlrev_b32_e32 v154, 16, v155
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v155, 16, v156
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v156, 16, v159
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v22, v117, v130 :: v_dual_lshlrev_b32 v159, 16, v161
	v_fmac_f32_e32 v21, v118, v153
	v_dual_fmac_f32 v20, v119, v129 :: v_dual_fmac_f32 v19, v120, v154
	v_dual_fmac_f32 v18, v121, v128 :: v_dual_fmac_f32 v17, v122, v155
	v_dual_fmac_f32 v16, v123, v127 :: v_dual_fmac_f32 v15, v124, v156
	v_fmac_f32_e32 v12, v125, v159
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow147
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s7, v14
	s_mul_i32 s4, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s5, 0
	v_and_b32_e32 v1, 0x1e0, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s4, v2, 1
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_u16 v133, v2, s[16:19], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:                                ; %._crit_edge._crit_edge
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v2, 1, v0
	s_branch .LBB0_9
.LBB0_8:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
.LBB0_9:                                ; %Flow
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v138, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v141, s11 :: v_dual_and_b32 v2, 24, v81
	v_dual_mov_b32 v140, s10 :: v_dual_mov_b32 v137, s7
	v_mov_b32_e32 v139, s9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v8, v14, 5, v2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v138, s8 :: v_dual_mov_b32 v135, s5
	v_mov_b32_e32 v136, s6
	v_mov_b32_e32 v134, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v82, 0, v8
	v_xad_u32 v118, v8, 8, 0
	ds_load_2addr_stride64_b64 v[2:5], v82 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[96:99], v82 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[6:7], v82 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v119, v8, 16, 0
	ds_load_2addr_stride64_b64 v[128:131], v118 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[106:109], v118 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[10:11], v118 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v8, v8, 24, 0
	ds_load_2addr_stride64_b64 v[148:151], v119 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[110:113], v119 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[184:185], v119 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[152:155], v8 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[114:117], v8 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[186:187], v8 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[156:159], v82 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[142:145], v82 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[160:163], v118 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[164:167], v118 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[168:171], v119 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[172:175], v119 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[176:179], v8 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[180:183], v8 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[96:97], v[6:7], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[98:99], v[6:7], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[2:3], v[6:7], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[106:107], v[10:11], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[10:11], v[90:97] neg_lo:[1,1,0]
	v_mov_b32_e32 v2, v81
	v_wmma_i32_16x16x16_iu4 v[98:105], v[128:129], v[10:11], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[144:145], v[6:7], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[110:111], v[184:185], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[112:113], v[184:185], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[184:185], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[4:5], v[6:7], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[114:115], v[186:187], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[116:117], v[186:187], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[142:143], v[6:7], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[156:157], v[6:7], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[158:159], v[6:7], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[130:131], v[10:11], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[164:165], v[10:11], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[166:167], v[10:11], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[160:161], v[10:11], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[162:163], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[150:151], v[184:185], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[172:173], v[184:185], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[174:175], v[184:185], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[168:169], v[184:185], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[170:171], v[184:185], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[152:153], v[186:187], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[154:155], v[186:187], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[180:181], v[186:187], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[182:183], v[186:187], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[176:177], v[186:187], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[178:179], v[186:187], v[134:141] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v3, v82
	v_cvt_f32_i32_e32 v4, v83
	v_cvt_f32_i32_e32 v5, v84
	v_cvt_f32_i32_e32 v6, v85
	v_cvt_f32_i32_e32 v7, v86
	v_cvt_f32_i32_e32 v8, v87
	v_cvt_f32_i32_e32 v10, v88
	v_cvt_f32_i32_e32 v11, v89
	v_cvt_f32_i32_e32 v82, v90
	v_cvt_f32_i32_e32 v83, v91
	v_cvt_f32_i32_e32 v84, v92
	v_cvt_f32_i32_e32 v85, v93
	v_cvt_f32_i32_e32 v86, v94
	v_cvt_f32_i32_e32 v87, v95
	v_cvt_f32_i32_e32 v88, v96
	v_cvt_f32_i32_e32 v89, v97
	v_cvt_f32_i32_e32 v90, v98
	v_cvt_f32_i32_e32 v91, v99
	v_cvt_f32_i32_e32 v92, v100
	v_cvt_f32_i32_e32 v93, v101
	v_cvt_f32_i32_e32 v94, v102
	v_cvt_f32_i32_e32 v95, v103
	v_cvt_f32_i32_e32 v96, v104
	v_cvt_f32_i32_e32 v97, v105
	v_cvt_f32_i32_e32 v98, v106
	v_cvt_f32_i32_e32 v99, v107
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v101, v109
	v_cvt_f32_i32_e32 v102, v110
	v_cvt_f32_i32_e32 v103, v111
	v_cvt_f32_i32_e32 v104, v112
	v_cvt_f32_i32_e32 v105, v113
	v_cvt_f32_i32_e32 v106, v114
	v_cvt_f32_i32_e32 v107, v115
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v113, v121
	v_cvt_f32_i32_e32 v114, v122
	v_cvt_f32_i32_e32 v115, v123
	v_cvt_f32_i32_e32 v116, v124
	v_cvt_f32_i32_e32 v117, v125
	v_cvt_f32_i32_e32 v118, v126
	v_cvt_f32_i32_e32 v119, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v122, v142
	v_cvt_f32_i32_e32 v123, v143
	v_cvt_f32_i32_e32 v124, v144
	v_cvt_f32_i32_e32 v125, v145
	v_cvt_f32_i32_e32 v126, v146
	v_cvt_f32_i32_e32 v127, v147
	v_cvt_f32_i32_e32 v128, v148
	v_cvt_f32_i32_e32 v129, v149
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v131, v135
	v_cvt_f32_i32_e32 v132, v136
	v_cvt_f32_i32_e32 v134, v137
	v_cvt_f32_i32_e32 v135, v138
	v_cvt_f32_i32_e32 v136, v139
	v_cvt_f32_i32_e32 v137, v140
	v_cvt_f32_i32_e32 v138, v141
.LBB0_11:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s35
	v_mov_b16_e64 v149.l, 0
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	s_add_i32 s3, s33, s3
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v149.h, v133.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v80, s3, v80, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s14
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v4, v4, v149 :: v_dual_add_nc_u32 v81, 4, v80
	v_dual_mul_f32 v6, v6, v149 :: v_dual_add_nc_u32 v139, 8, v80
	v_dual_mul_f32 v8, v8, v149 :: v_dual_add_nc_u32 v141, 12, v80
	v_dual_mul_f32 v3, v3, v149 :: v_dual_add_nc_u32 v142, 16, v80
	v_dual_mul_f32 v82, v82, v149 :: v_dual_add_nc_u32 v145, 28, v80
	v_dual_mul_f32 v7, v7, v149 :: v_dual_add_nc_u32 v146, 32, v80
	v_dual_mul_f32 v10, v10, v149 :: v_dual_add_nc_u32 v143, 20, v80
	v_dual_mul_f32 v84, v84, v149 :: v_dual_add_nc_u32 v147, 36, v80
	v_dual_mul_f32 v5, v5, v149 :: v_dual_add_nc_u32 v144, 24, v80
	v_dual_mul_f32 v11, v11, v149 :: v_dual_add_nc_u32 v148, 40, v80
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v140, 0x80000000, v80, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	s_clause 0xa
	buffer_load_u16 v140, v140, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v139, v139, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v83, v83, v149
	v_mul_f32_e32 v121, v121, v149
	v_mul_f32_e32 v124, v124, v149
	v_mul_f32_e32 v127, v127, v149
	v_mul_f32_e32 v129, v129, v149
	v_mul_f32_e32 v130, v130, v149
	v_mul_f32_e32 v133, v134, v149
	v_mul_f32_e32 v134, v135, v149
	v_mul_f32_e32 v135, v136, v149
	v_mul_f32_e32 v136, v137, v149
	v_mul_f32_e32 v137, v138, v149
	v_dual_mul_f32 v90, v90, v149 :: v_dual_add_nc_u32 v153, 64, v80
	v_dual_mul_f32 v89, v89, v149 :: v_dual_add_nc_u32 v154, 0x44, v80
	v_dual_mul_f32 v92, v92, v149 :: v_dual_add_nc_u32 v155, 0x48, v80
	v_dual_mul_f32 v91, v91, v149 :: v_dual_add_nc_u32 v156, 0x4c, v80
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v79, s3, v79, 1
	v_add_lshl_u32 v78, s3, v78, 1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v85, v85, v149 :: v_dual_add_nc_u32 v150, 52, v80
	v_mul_f32_e32 v86, v86, v149
	v_dual_mul_f32 v87, v87, v149 :: v_dual_add_nc_u32 v152, 60, v80
	v_dual_mul_f32 v88, v88, v149 :: v_dual_add_nc_u32 v151, 56, v80
	v_dual_mul_f32 v93, v93, v149 :: v_dual_add_nc_u32 v158, 0x54, v80
	v_dual_mul_f32 v94, v94, v149 :: v_dual_add_nc_u32 v157, 0x50, v80
	v_dual_mul_f32 v95, v95, v149 :: v_dual_add_nc_u32 v160, 0x5c, v80
	v_dual_mul_f32 v96, v96, v149 :: v_dual_add_nc_u32 v159, 0x58, v80
	v_dual_mul_f32 v97, v97, v149 :: v_dual_add_nc_u32 v162, 0x64, v80
	v_dual_mul_f32 v98, v98, v149 :: v_dual_add_nc_u32 v161, 0x60, v80
	v_dual_mul_f32 v99, v99, v149 :: v_dual_add_nc_u32 v164, 0x6c, v80
	v_dual_mul_f32 v100, v100, v149 :: v_dual_add_nc_u32 v163, 0x68, v80
	v_dual_mul_f32 v101, v101, v149 :: v_dual_add_nc_u32 v166, 0x74, v80
	v_dual_mul_f32 v102, v102, v149 :: v_dual_add_nc_u32 v165, 0x70, v80
	v_dual_mul_f32 v103, v103, v149 :: v_dual_add_nc_u32 v168, 0x80, v80
	v_dual_mul_f32 v104, v104, v149 :: v_dual_add_nc_u32 v167, 0x78, v80
	v_dual_mul_f32 v105, v105, v149 :: v_dual_add_nc_u32 v170, 0x88, v80
	v_dual_mul_f32 v106, v106, v149 :: v_dual_add_nc_u32 v169, 0x84, v80
	v_dual_mul_f32 v107, v107, v149 :: v_dual_add_nc_u32 v172, 0x90, v80
	v_dual_mul_f32 v108, v108, v149 :: v_dual_add_nc_u32 v171, 0x8c, v80
	v_dual_mul_f32 v109, v109, v149 :: v_dual_add_nc_u32 v174, 0x98, v80
	v_dual_mul_f32 v110, v110, v149 :: v_dual_add_nc_u32 v173, 0x94, v80
	v_dual_mul_f32 v111, v111, v149 :: v_dual_add_nc_u32 v176, 0xa0, v80
	v_dual_mul_f32 v112, v112, v149 :: v_dual_add_nc_u32 v175, 0x9c, v80
	v_dual_mul_f32 v113, v113, v149 :: v_dual_add_nc_u32 v178, 0xa8, v80
	v_dual_mul_f32 v114, v114, v149 :: v_dual_add_nc_u32 v177, 0xa4, v80
	v_dual_mul_f32 v115, v115, v149 :: v_dual_add_nc_u32 v180, 0xb0, v80
	v_dual_mul_f32 v116, v116, v149 :: v_dual_add_nc_u32 v179, 0xac, v80
	v_dual_mul_f32 v117, v117, v149 :: v_dual_add_nc_u32 v182, 0xb8, v80
	v_dual_mul_f32 v118, v118, v149 :: v_dual_add_nc_u32 v181, 0xb4, v80
	v_dual_mul_f32 v119, v119, v149 :: v_dual_add_nc_u32 v184, 0xc0, v80
	v_dual_mul_f32 v120, v120, v149 :: v_dual_add_nc_u32 v183, 0xbc, v80
	v_dual_mul_f32 v122, v122, v149 :: v_dual_add_nc_u32 v185, 0xc4, v80
	v_dual_mul_f32 v123, v123, v149 :: v_dual_add_nc_u32 v186, 0xc8, v80
	v_mul_f32_e32 v125, v125, v149
	v_mul_f32_e32 v126, v126, v149
	v_mul_f32_e32 v128, v128, v149
	v_mul_f32_e32 v131, v131, v149
	v_mul_f32_e32 v132, v132, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v138, 44, v80
	v_add_nc_u32_e32 v149, 48, v80
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	s_clause 0x4
	buffer_load_u16 v138, v138, s[4:7], 0 offen
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v152, v152, s[4:7], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v9, 2, v9
	v_and_b32_e32 v2, 60, v2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s8, s35, 12
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v9, v14, 9, v9
	v_lshl_or_b32 v1, v1, 2, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_xad_u32 v2, v9, 56, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v81, 16, v81
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v142, 16, v142
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v144, 16, v144
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v140, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v140, 0xcc, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v81, v77
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v81, 0xd0, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v139, v76
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v139, 0xd4, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v141, v75
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v141, 0xd8, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v142, v74
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v142, 0xdc, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v143, v73
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v143, 0xe0, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v144, v72
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v144, 0xe4, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v145, v71
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v145, 0xe8, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v82, v82, v146, v70
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v146, 0xec, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v83, v147, v69
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v147, 0xf0, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v84, v84, v148, v68
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v148, 0xf4, v80
	v_add_nc_u32_e32 v80, 0xf8, v80
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	s_clause 0x1f
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v160, v160, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v176, v176, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	s_clause 0xf
	buffer_load_u16 v184, v184, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v140, v140, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v139, v139, s[4:7], 0 offen
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v40, v3, s2
	v_cndmask_b32_e64 v4, v77, v4, s2
	v_cndmask_b32_e64 v40, v70, v82, s2
	v_xad_u32 v70, v9, 4, 0
	v_cndmask_b32_e64 v5, v76, v5, s2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v6, v75, v6, s2
	v_cndmask_b32_e64 v7, v74, v7, s2
	v_cndmask_b32_e64 v8, v73, v8, s2
	v_cndmask_b32_e64 v10, v72, v10, s2
	v_cndmask_b32_e64 v11, v71, v11, s2
	v_cndmask_b32_e64 v69, v69, v83, s2
	v_cndmask_b32_e64 v68, v68, v84, s2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_lshl_b32 s4, s35, 2
	s_lshl_b32 s5, s35, 3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v85, v138, v67
	v_fma_f32 v86, v86, v149, v66
	v_fma_f32 v87, v87, v150, v65
	v_fma_f32 v88, v88, v151, v64
	v_fma_f32 v89, v89, v152, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v85, s2
	v_cndmask_b32_e64 v66, v66, v86, s2
	v_cndmask_b32_e64 v65, v65, v87, s2
	v_cndmask_b32_e64 v64, v64, v88, s2
	v_cndmask_b32_e64 v63, v63, v89, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v138, 7, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v90, v90, v153, v62
	v_fma_f32 v91, v91, v154, v61
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v92, v92, v155, v60
	v_fma_f32 v93, v93, v156, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v62, v90, s2
	v_cndmask_b32_e64 v61, v61, v91, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v94, v94, v157, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v105, v79, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v105, v106, v168, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v106, v107, v169, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v107, v108, v170, v44
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v108, v109, v171, v43
	v_fma_f32 v109, v110, v172, v42
	v_fma_f32 v110, v111, v173, v41
	v_fma_f32 v111, v112, v174, v39
	v_fma_f32 v112, v113, v175, v38
	v_fma_f32 v113, v114, v176, v37
	v_fma_f32 v114, v115, v177, v36
	v_fma_f32 v115, v116, v178, v35
	v_fma_f32 v116, v117, v179, v34
	v_fma_f32 v117, v118, v180, v33
	v_fma_f32 v118, v119, v181, v32
	v_fma_f32 v119, v120, v182, v31
	v_fma_f32 v120, v121, v183, v30
	v_fma_f32 v121, v122, v184, v29
	v_fma_f32 v122, v123, v185, v28
	v_fma_f32 v123, v124, v186, v27
	v_fma_f32 v124, v125, v140, v26
	v_fma_f32 v125, v127, v139, v24
	v_fma_f32 v127, v129, v142, v22
	v_fma_f32 v129, v131, v144, v20
	v_fma_f32 v131, v133, v146, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v105, s2
	v_cndmask_b32_e64 v29, v29, v121, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v18, v131, s2
	v_add_nc_u32_e32 v18, 0, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v81, v126, v81, v25
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v106, s2
	v_cndmask_b32_e64 v28, v28, v122, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v95, v95, v158, v57
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v60, v60, v92, s2
	v_cndmask_b32_e64 v44, v44, v107, s2
	v_cndmask_b32_e64 v27, v27, v123, s2
	ds_store_2addr_b32 v18, v3, v62 offset1:32
	v_xad_u32 v3, v9, 8, 0
	v_cndmask_b32_e64 v59, v59, v93, s2
	ds_store_2addr_b32 v18, v46, v29 offset0:64 offset1:96
	ds_store_2addr_b32 v70, v4, v61 offset1:32
	v_xad_u32 v4, v9, 12, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v143, 16, v143
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v96, v96, v159, v56
	v_fma_f32 v126, v128, v141, v23
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v108, s2
	v_cndmask_b32_e64 v26, v26, v124, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v97, v97, v160, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v58, v94, s2
	v_cndmask_b32_e64 v42, v42, v109, s2
	v_cndmask_b32_e64 v25, v25, v81, s2
	ds_store_2addr_b32 v70, v45, v28 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v5, v60 offset1:32
	v_xad_u32 v5, v9, 16, 0
	v_cndmask_b32_e64 v57, v57, v95, s2
	ds_store_2addr_b32 v3, v44, v27 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v6, v59 offset1:32
	v_xad_u32 v3, v9, 20, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v128, v130, v143, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v110, s2
	v_cndmask_b32_e64 v24, v24, v125, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v98, v98, v161, v54
	v_fma_f32 v99, v99, v162, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v56, v96, s2
	v_cndmask_b32_e64 v39, v39, v111, s2
	v_cndmask_b32_e64 v23, v23, v126, s2
	ds_store_2addr_b32 v4, v43, v26 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v7, v58 offset1:32
	v_xad_u32 v4, v9, 24, 0
	v_cndmask_b32_e64 v55, v55, v97, s2
	ds_store_2addr_b32 v5, v42, v25 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v8, v57 offset1:32
	v_xad_u32 v5, v9, 28, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v147, 16, v147
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v100, v100, v163, v52
	v_fma_f32 v101, v101, v164, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v112, s2
	v_cndmask_b32_e64 v37, v37, v113, s2
	v_cndmask_b32_e64 v22, v22, v127, s2
	v_cndmask_b32_e64 v21, v21, v128, s2
	ds_store_2addr_b32 v3, v41, v24 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v10, v56 offset1:32
	v_xad_u32 v3, v9, 32, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v130, v132, v145, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v98, s2
	v_cndmask_b32_e64 v53, v53, v99, s2
	ds_store_2addr_b32 v4, v39, v23 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v11, v55 offset1:32
	v_xad_u32 v4, v9, 36, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v102, v102, v165, v50
	v_fma_f32 v132, v134, v147, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v114, s2
	v_cndmask_b32_e64 v20, v20, v129, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v103, v103, v166, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v100, s2
	v_cndmask_b32_e64 v51, v51, v101, s2
	v_cndmask_b32_e64 v34, v34, v116, s2
	ds_store_2addr_b32 v5, v38, v22 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v40, v54 offset1:32
	v_xad_u32 v5, v9, 40, 0
	ds_store_2addr_b32 v3, v37, v21 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v69, v53 offset1:32
	v_xad_u32 v3, v9, 44, 0
	v_cndmask_b32_e64 v35, v35, v115, s2
	v_cndmask_b32_e64 v19, v19, v130, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v102, s2
	v_cndmask_b32_e64 v33, v33, v117, s2
	v_cndmask_b32_e64 v17, v17, v132, s2
	ds_store_2addr_b32 v4, v36, v20 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v68, v52 offset1:32
	ds_store_2addr_b32 v5, v35, v19 offset0:64 offset1:96
	v_xad_u32 v4, v9, 48, 0
	v_lshrrev_b32_e32 v5, 5, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v103, s2
	ds_store_2addr_b32 v3, v67, v51 offset1:32
	ds_store_2addr_b32 v3, v34, v14 offset0:64 offset1:96
	v_xad_u32 v3, v9, 52, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v133, v135, v148, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	ds_store_2addr_b32 v4, v66, v50 offset1:32
	ds_store_2addr_b32 v4, v33, v17 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v65, v49 offset1:32
	v_lshlrev_b32_e32 v4, 6, v0
	v_xor_b32_e32 v1, v1, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v104, v104, v167, v48
	v_fma_f32 v80, v136, v80, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v118, s2
	v_cndmask_b32_e64 v16, v16, v133, s2
	v_and_or_b32 v1, v4, 64, v1
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v78, v137, v78, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v104, s2
	v_cndmask_b32_e64 v31, v31, v119, s2
	v_cndmask_b32_e64 v15, v15, v80, s2
	v_cndmask_b32_e64 v47, v47, v79, s2
	v_xad_u32 v5, v9, 60, 0
	ds_store_2addr_b32 v3, v32, v16 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v64, v48 offset1:32
	ds_store_2addr_b32 v2, v31, v15 offset0:64 offset1:96
	v_add_nc_u32_e32 v2, 0, v1
	v_cndmask_b32_e64 v30, v30, v120, s2
	v_cndmask_b32_e64 v12, v12, v78, s2
	v_xad_u32 v3, 0x810, v1, 0
	v_xad_u32 v4, 0x1020, v1, 0
	v_xad_u32 v1, 0x1830, v1, 0
	ds_store_2addr_b32 v5, v63, v47 offset1:32
	ds_store_2addr_b32 v5, v30, v12 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v2
	ds_load_b32 v3, v3
	ds_load_b32 v4, v4
	ds_load_b32 v1, v1
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v5, s35, v138
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v0, 0x7f, v0
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s2, s34, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s33
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_add3_u32 v0, s2, v0, v5
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_mov_b32 s2, s6
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v5, 2, v0
	v_add_lshl_u32 v6, v0, s4, 2
	v_add_lshl_u32 v7, v0, s5, 2
	v_add_lshl_u32 v0, v0, s8, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v6, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v4, v7, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v1, v0, s[0:3], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 188
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_vgpr, 188
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9408
; TotalNumSgprs: 54
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 188
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
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
