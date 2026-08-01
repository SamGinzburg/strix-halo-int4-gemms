	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s15, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v108, 0, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v109, 0, v10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s16, s13, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s13, s13, s12
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s16
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s13
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s17, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s14, s17
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s18
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s18, s12, s6
	s_xor_b32 s6, s2, s17
	s_mul_i32 s19, s18, s14
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s12, s12, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s12, s14
	s_cmp_ge_u32 s12, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s12, s20, s12
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s12, s14
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s26, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s14, s19, s18
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s12, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s14, s14, s13
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s15, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s15, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s21, s14, s13
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s12, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s15, s15, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s17, s21, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s15, s15, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s17
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s21, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s19, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s15, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s18, s34, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s41, s21, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s40, s2, 4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s20, s35, s12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s18, s40, v4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s20, s33, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s27, s7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v8, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[4:7], v5, s[24:27], 0 offen
	s_mov_b32 s16, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v108, v8 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[4:7]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b64 s[22:23], s[6:7]
	s_mov_b32 s16, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr20_sgpr21
.LBB0_3:                                ; %Flow652
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[0:1], s[0:1], 0x20
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v33, 15, v0
	v_bfe_u32 v98, v0, 4, 1
	v_or_b32_e32 v107, 0x3f0, v0
	v_or_b32_e32 v106, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v99, 0, v33
	v_or_b32_e32 v105, 0xbf0, v0
	v_or_b32_e32 v104, 0xff0, v0
	v_or_b32_e32 v103, 0x13f0, v0
	v_or_b32_e32 v102, 0x17f0, v0
	v_or_b32_e32 v101, 0x1bf0, v0
	v_or_b32_e32 v100, 0x1ff0, v0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v97, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s42, s41, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s43, s12, 64
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v5, s40, v33
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v4, s43, v3
	v_sub_nc_u32_e32 v110, s15, v3
	s_lshl_b32 s15, s14, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s41, v5
	v_mul_lo_u32 v6, s35, v4
	s_lshl_b32 s14, s14, 7
	v_mul_lo_u32 v4, s34, v4
	s_mov_b32 s12, 0
	s_lshl_b32 s16, s13, 8
	s_lshl_b32 s13, s13, 7
	s_sub_i32 s45, s15, s16
	s_mov_b32 s15, s12
	v_add3_u32 v2, v6, s14, v2
	s_mov_b32 s14, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_subrev_nc_u32_e32 v113, s13, v2
	s_mov_b32 s13, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v112, 1, v3
	v_add3_u32 v114, v4, s40, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v111, 1, v98
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v115, 0, v107
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v116, 0, v106
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v117, 0, v105
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v118, 0, v104
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v119, 0, v103
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v120, 0, v102
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v121, 0, v101
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v122, 0, v100
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b64 s[20:21], s[8:9]
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_max_i32 s44, s42, 1
	s_lshl_b32 s46, s35, 1
	s_lshl_b32 s47, s35, 6
	s_lshl_b32 s34, s34, 6
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s43, v110
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s44, s44, -1
	s_add_i32 s43, s43, 64
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v9, 0x80000000, v114 :: v_dual_cndmask_b32 v216, 0x80000000, v113
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v114, s34, v114
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v123, v9, s[4:7], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v124, v112, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:8272
	ds_load_u8 v10, v99 offset:8256
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[216:219], v216, s[24:27], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v112, 2, v112
	v_add_nc_u32_e32 v113, s47, v113
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:8304
	ds_load_u8 v11, v99 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8208
	ds_load_u8 v12, v99 offset:8192
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v99 offset:640
	ds_load_u8 v10, v99 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8240
	ds_load_u8 v13, v99 offset:8224
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v12, 16, v11
	ds_load_u8 v10, v99 offset:896
	ds_load_u8 v11, v99 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:128
	ds_load_u8 v12, v99
	v_lshl_or_b32 v126, v10, 16, v9
	ds_load_u8 v9, v99 offset:8400
	ds_load_u8 v10, v99 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:384
	ds_load_u8 v13, v99 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v12, 16, v11
	ds_load_u8 v10, v99 offset:8432
	ds_load_u8 v11, v99 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8336
	ds_load_u8 v12, v99 offset:8320
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v99 offset:1664
	ds_load_u8 v10, v99 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8368
	ds_load_u8 v13, v99 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v99 offset:1920
	ds_load_u8 v11, v99 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1152
	ds_load_u8 v12, v99 offset:1024
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v99 offset:8528
	ds_load_u8 v10, v99 offset:8512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1408
	ds_load_u8 v13, v99 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v12, 16, v11
	ds_load_u8 v10, v99 offset:8560
	ds_load_u8 v11, v99 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8464
	ds_load_u8 v12, v99 offset:8448
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v99 offset:2688
	ds_load_u8 v10, v99 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8496
	ds_load_u8 v13, v99 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v10, v99 offset:2944
	ds_load_u8 v11, v99 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2176
	ds_load_u8 v12, v99 offset:2048
	v_lshl_or_b32 v130, v10, 16, v9
	ds_load_u8 v9, v99 offset:8656
	ds_load_u8 v10, v99 offset:8640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2432
	ds_load_u8 v13, v99 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v12, 16, v11
	ds_load_u8 v10, v99 offset:8688
	ds_load_u8 v11, v99 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8592
	ds_load_u8 v12, v99 offset:8576
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v99 offset:3712
	ds_load_u8 v10, v99 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8624
	ds_load_u8 v13, v99 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v12, 16, v11
	ds_load_u8 v10, v99 offset:3968
	ds_load_u8 v11, v99 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3200
	ds_load_u8 v12, v99 offset:3072
	v_lshl_or_b32 v132, v10, 16, v9
	ds_load_u8 v9, v99 offset:8784
	ds_load_u8 v10, v99 offset:8768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3456
	ds_load_u8 v13, v99 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v11
	ds_load_u8 v10, v99 offset:8816
	ds_load_u8 v11, v99 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8720
	ds_load_u8 v12, v99 offset:8704
	v_lshl_or_b32 v24, v10, 16, v9
	ds_load_u8 v9, v99 offset:4736
	ds_load_u8 v10, v99 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8752
	ds_load_u8 v13, v99 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v12, 16, v11
	ds_load_u8 v10, v99 offset:4992
	ds_load_u8 v11, v99 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4224
	ds_load_u8 v12, v99 offset:4096
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v99 offset:8912
	ds_load_u8 v10, v99 offset:8896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4480
	ds_load_u8 v13, v99 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	ds_load_u8 v10, v99 offset:8944
	ds_load_u8 v11, v99 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8848
	ds_load_u8 v12, v99 offset:8832
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v99 offset:5760
	ds_load_u8 v10, v99 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8880
	ds_load_u8 v13, v99 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v99 offset:6016
	ds_load_u8 v11, v99 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5248
	ds_load_u8 v12, v99 offset:5120
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v99 offset:9040
	ds_load_u8 v10, v99 offset:9024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5504
	ds_load_u8 v13, v99 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v99 offset:9072
	ds_load_u8 v11, v99 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8976
	ds_load_u8 v12, v99 offset:8960
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v99 offset:6784
	ds_load_u8 v10, v99 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:9008
	ds_load_u8 v13, v99 offset:8992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v99 offset:7040
	ds_load_u8 v11, v99 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6272
	ds_load_u8 v12, v99 offset:6144
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v99 offset:9104
	ds_load_u8 v10, v99 offset:9088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6528
	ds_load_u8 v13, v99 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	ds_load_u8 v10, v99 offset:9136
	ds_load_u8 v11, v99 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:9168
	ds_load_u8 v12, v99 offset:9152
	v_lshl_or_b32 v17, v10, 16, v9
	ds_load_u8 v9, v99 offset:7808
	ds_load_u8 v10, v99 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115 offset:8192
	ds_load_u8 v13, v99 offset:9184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v12, 16, v11
	ds_load_u8 v10, v99 offset:8064
	ds_load_u8 v11, v99 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7296
	ds_load_u8 v12, v99 offset:7168
	v_lshl_or_b32 v140, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7552
	ds_load_u8 v13, v99 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v132, v9
	v_cvt_f32_i32_e32 v131, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:656
	ds_load_u8 v10, v99 offset:528
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v130, v11
	v_cvt_f32_i32_e32 v129, v12
	v_cvt_f32_i32_e32 v128, v13
	v_cvt_f32_i32_e32 v127, v14
	v_cvt_f32_i32_e32 v126, v15
	v_cvt_f32_i32_e32 v125, v16
	v_mul_f32_e32 v132, v124, v132
	v_mul_f32_e32 v131, v124, v131
	v_mul_f32_e32 v130, v124, v130
	v_mul_f32_e32 v129, v124, v129
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:912
	ds_load_u8 v11, v99 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:16
	ds_load_u8 v12, v99 offset:144
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v99 offset:1680
	ds_load_u8 v10, v99 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:400
	ds_load_u8 v13, v99 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	ds_load_u8 v10, v99 offset:1936
	ds_load_u8 v11, v99 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1168
	ds_load_u8 v12, v99 offset:1040
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v99 offset:2704
	ds_load_u8 v10, v99 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1424
	ds_load_u8 v13, v99 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v99 offset:2960
	ds_load_u8 v11, v99 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2192
	ds_load_u8 v12, v99 offset:2064
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v99 offset:3728
	ds_load_u8 v10, v99 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2448
	ds_load_u8 v13, v99 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	ds_load_u8 v10, v99 offset:3984
	ds_load_u8 v11, v99 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3216
	ds_load_u8 v12, v99 offset:3088
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v99 offset:4752
	ds_load_u8 v10, v99 offset:4624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3472
	ds_load_u8 v13, v99 offset:3344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	ds_load_u8 v10, v99 offset:5008
	ds_load_u8 v11, v99 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4240
	ds_load_u8 v12, v99 offset:4112
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v99 offset:5776
	ds_load_u8 v10, v99 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4496
	ds_load_u8 v13, v99 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	ds_load_u8 v10, v99 offset:6032
	ds_load_u8 v11, v99 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5264
	ds_load_u8 v12, v99 offset:5136
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v99 offset:6800
	ds_load_u8 v10, v99 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5520
	ds_load_u8 v13, v99 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v99 offset:7056
	ds_load_u8 v11, v99 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6288
	ds_load_u8 v12, v99 offset:6160
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v99 offset:7824
	ds_load_u8 v10, v99 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6544
	ds_load_u8 v13, v99 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	ds_load_u8 v10, v99 offset:8080
	ds_load_u8 v11, v99 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7312
	ds_load_u8 v12, v99 offset:7184
	v_lshl_or_b32 v148, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7568
	ds_load_u8 v13, v99 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v140, v9
	v_cvt_f32_i32_e32 v139, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:672
	ds_load_u8 v10, v99 offset:544
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v138, v11
	v_cvt_f32_i32_e32 v137, v12
	v_cvt_f32_i32_e32 v136, v13
	v_cvt_f32_i32_e32 v135, v14
	v_cvt_f32_i32_e32 v134, v15
	v_cvt_f32_i32_e32 v133, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:928
	ds_load_u8 v11, v99 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:32
	ds_load_u8 v12, v99 offset:160
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v99 offset:1696
	ds_load_u8 v10, v99 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:416
	ds_load_u8 v13, v99 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	ds_load_u8 v10, v99 offset:1952
	ds_load_u8 v11, v99 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1184
	ds_load_u8 v12, v99 offset:1056
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v99 offset:2720
	ds_load_u8 v10, v99 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1440
	ds_load_u8 v13, v99 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v99 offset:2976
	ds_load_u8 v11, v99 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2208
	ds_load_u8 v12, v99 offset:2080
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v99 offset:3744
	ds_load_u8 v10, v99 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2464
	ds_load_u8 v13, v99 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	ds_load_u8 v10, v99 offset:4000
	ds_load_u8 v11, v99 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3232
	ds_load_u8 v12, v99 offset:3104
	v_lshl_or_b32 v148, v10, 16, v9
	ds_load_u8 v9, v99 offset:4768
	ds_load_u8 v10, v99 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3488
	ds_load_u8 v13, v99 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	ds_load_u8 v10, v99 offset:5024
	ds_load_u8 v11, v99 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4256
	ds_load_u8 v12, v99 offset:4128
	v_lshl_or_b32 v150, v10, 16, v9
	ds_load_u8 v9, v99 offset:5792
	ds_load_u8 v10, v99 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4512
	ds_load_u8 v13, v99 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	ds_load_u8 v10, v99 offset:6048
	ds_load_u8 v11, v99 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5280
	ds_load_u8 v12, v99 offset:5152
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v99 offset:6816
	ds_load_u8 v10, v99 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5536
	ds_load_u8 v13, v99 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v99 offset:7072
	ds_load_u8 v11, v99 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6304
	ds_load_u8 v12, v99 offset:6176
	v_lshl_or_b32 v154, v10, 16, v9
	ds_load_u8 v9, v99 offset:7840
	ds_load_u8 v10, v99 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6560
	ds_load_u8 v13, v99 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	ds_load_u8 v10, v99 offset:8096
	ds_load_u8 v11, v99 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7328
	ds_load_u8 v12, v99 offset:7200
	v_lshl_or_b32 v156, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7584
	ds_load_u8 v13, v99 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v148, v9
	v_cvt_f32_i32_e32 v147, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:688
	ds_load_u8 v10, v99 offset:560
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v146, v11
	v_cvt_f32_i32_e32 v145, v12
	v_cvt_f32_i32_e32 v144, v13
	v_cvt_f32_i32_e32 v143, v14
	v_cvt_f32_i32_e32 v142, v15
	v_cvt_f32_i32_e32 v141, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:944
	ds_load_u8 v11, v99 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:48
	ds_load_u8 v12, v99 offset:176
	v_lshl_or_b32 v150, v10, 16, v9
	ds_load_u8 v9, v99 offset:1712
	ds_load_u8 v10, v99 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:432
	ds_load_u8 v13, v99 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	ds_load_u8 v10, v99 offset:1968
	ds_load_u8 v11, v99 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1200
	ds_load_u8 v12, v99 offset:1072
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v99 offset:2736
	ds_load_u8 v10, v99 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1456
	ds_load_u8 v13, v99 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v99 offset:2992
	ds_load_u8 v11, v99 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2224
	ds_load_u8 v12, v99 offset:2096
	v_lshl_or_b32 v154, v10, 16, v9
	ds_load_u8 v9, v99 offset:3760
	ds_load_u8 v10, v99 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2480
	ds_load_u8 v13, v99 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	ds_load_u8 v10, v99 offset:4016
	ds_load_u8 v11, v99 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3248
	ds_load_u8 v12, v99 offset:3120
	v_lshl_or_b32 v156, v10, 16, v9
	ds_load_u8 v9, v99 offset:4784
	ds_load_u8 v10, v99 offset:4656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3504
	ds_load_u8 v13, v99 offset:3376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	ds_load_u8 v10, v99 offset:5040
	ds_load_u8 v11, v99 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4272
	ds_load_u8 v12, v99 offset:4144
	v_lshl_or_b32 v158, v10, 16, v9
	ds_load_u8 v9, v99 offset:5808
	ds_load_u8 v10, v99 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4528
	ds_load_u8 v13, v99 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	ds_load_u8 v10, v99 offset:6064
	ds_load_u8 v11, v99 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5296
	ds_load_u8 v12, v99 offset:5168
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v99 offset:6832
	ds_load_u8 v10, v99 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5552
	ds_load_u8 v13, v99 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v99 offset:7088
	ds_load_u8 v11, v99 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6320
	ds_load_u8 v12, v99 offset:6192
	v_lshl_or_b32 v162, v10, 16, v9
	ds_load_u8 v9, v99 offset:7856
	ds_load_u8 v10, v99 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6576
	ds_load_u8 v13, v99 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	ds_load_u8 v10, v99 offset:8112
	ds_load_u8 v11, v99 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7344
	ds_load_u8 v12, v99 offset:7216
	v_lshl_or_b32 v164, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7600
	ds_load_u8 v13, v99 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v156, v9
	v_cvt_f32_i32_e32 v155, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:704
	ds_load_u8 v10, v99 offset:576
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v154, v11
	v_cvt_f32_i32_e32 v153, v12
	v_cvt_f32_i32_e32 v152, v13
	v_cvt_f32_i32_e32 v151, v14
	v_cvt_f32_i32_e32 v150, v15
	v_cvt_f32_i32_e32 v149, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:960
	ds_load_u8 v11, v99 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:192
	ds_load_u8 v12, v99 offset:64
	v_lshl_or_b32 v158, v10, 16, v9
	ds_load_u8 v9, v99 offset:1728
	ds_load_u8 v10, v99 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:448
	ds_load_u8 v13, v99 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	ds_load_u8 v10, v99 offset:1984
	ds_load_u8 v11, v99 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1216
	ds_load_u8 v12, v99 offset:1088
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v99 offset:2752
	ds_load_u8 v10, v99 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1472
	ds_load_u8 v13, v99 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v99 offset:3008
	ds_load_u8 v11, v99 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2240
	ds_load_u8 v12, v99 offset:2112
	v_lshl_or_b32 v162, v10, 16, v9
	ds_load_u8 v9, v99 offset:3776
	ds_load_u8 v10, v99 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2496
	ds_load_u8 v13, v99 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	ds_load_u8 v10, v99 offset:4032
	ds_load_u8 v11, v99 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3264
	ds_load_u8 v12, v99 offset:3136
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v99 offset:4800
	ds_load_u8 v10, v99 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3520
	ds_load_u8 v13, v99 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	ds_load_u8 v10, v99 offset:5056
	ds_load_u8 v11, v99 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4288
	ds_load_u8 v12, v99 offset:4160
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v99 offset:5824
	ds_load_u8 v10, v99 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4544
	ds_load_u8 v13, v99 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v99 offset:6080
	ds_load_u8 v11, v99 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5312
	ds_load_u8 v12, v99 offset:5184
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v99 offset:6848
	ds_load_u8 v10, v99 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5568
	ds_load_u8 v13, v99 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v99 offset:7104
	ds_load_u8 v11, v99 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6336
	ds_load_u8 v12, v99 offset:6208
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v99 offset:7872
	ds_load_u8 v10, v99 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6592
	ds_load_u8 v13, v99 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v99 offset:8128
	ds_load_u8 v11, v99 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7360
	ds_load_u8 v12, v99 offset:7232
	v_lshl_or_b32 v172, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7616
	ds_load_u8 v13, v99 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v164, v9
	v_cvt_f32_i32_e32 v163, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:720
	ds_load_u8 v10, v99 offset:592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v162, v11
	v_cvt_f32_i32_e32 v161, v12
	v_cvt_f32_i32_e32 v160, v13
	v_cvt_f32_i32_e32 v159, v14
	v_cvt_f32_i32_e32 v158, v15
	v_cvt_f32_i32_e32 v157, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:976
	ds_load_u8 v11, v99 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:208
	ds_load_u8 v12, v99 offset:80
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v99 offset:1744
	ds_load_u8 v10, v99 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:464
	ds_load_u8 v13, v99 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v99 offset:2000
	ds_load_u8 v11, v99 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1232
	ds_load_u8 v12, v99 offset:1104
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v99 offset:2768
	ds_load_u8 v10, v99 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1488
	ds_load_u8 v13, v99 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v99 offset:3024
	ds_load_u8 v11, v99 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2256
	ds_load_u8 v12, v99 offset:2128
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v99 offset:3792
	ds_load_u8 v10, v99 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2512
	ds_load_u8 v13, v99 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v99 offset:4048
	ds_load_u8 v11, v99 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3280
	ds_load_u8 v12, v99 offset:3152
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v99 offset:4816
	ds_load_u8 v10, v99 offset:4688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3536
	ds_load_u8 v13, v99 offset:3408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	ds_load_u8 v10, v99 offset:5072
	ds_load_u8 v11, v99 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4304
	ds_load_u8 v12, v99 offset:4176
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v99 offset:5840
	ds_load_u8 v10, v99 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4560
	ds_load_u8 v13, v99 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v99 offset:6096
	ds_load_u8 v11, v99 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5328
	ds_load_u8 v12, v99 offset:5200
	v_lshl_or_b32 v176, v10, 16, v9
	ds_load_u8 v9, v99 offset:6864
	ds_load_u8 v10, v99 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5584
	ds_load_u8 v13, v99 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v12, 16, v11
	ds_load_u8 v10, v99 offset:7120
	ds_load_u8 v11, v99 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6352
	ds_load_u8 v12, v99 offset:6224
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v9, v99 offset:7888
	ds_load_u8 v10, v99 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6608
	ds_load_u8 v13, v99 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	ds_load_u8 v10, v99 offset:8144
	ds_load_u8 v11, v99 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7376
	ds_load_u8 v12, v99 offset:7248
	v_lshl_or_b32 v180, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7632
	ds_load_u8 v13, v99 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v172, v9
	v_cvt_f32_i32_e32 v171, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:736
	ds_load_u8 v10, v99 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v170, v11
	v_cvt_f32_i32_e32 v169, v12
	v_cvt_f32_i32_e32 v168, v13
	v_cvt_f32_i32_e32 v167, v14
	v_cvt_f32_i32_e32 v166, v15
	v_cvt_f32_i32_e32 v165, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:992
	ds_load_u8 v11, v99 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:224
	ds_load_u8 v12, v99 offset:96
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v99 offset:1760
	ds_load_u8 v10, v99 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:480
	ds_load_u8 v13, v99 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v99 offset:2016
	ds_load_u8 v11, v99 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1248
	ds_load_u8 v12, v99 offset:1120
	v_lshl_or_b32 v176, v10, 16, v9
	ds_load_u8 v9, v99 offset:2784
	ds_load_u8 v10, v99 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1504
	ds_load_u8 v13, v99 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v12, 16, v11
	ds_load_u8 v10, v99 offset:3040
	ds_load_u8 v11, v99 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2272
	ds_load_u8 v12, v99 offset:2144
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v9, v99 offset:3808
	ds_load_u8 v10, v99 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2528
	ds_load_u8 v13, v99 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	ds_load_u8 v10, v99 offset:4064
	ds_load_u8 v11, v99 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3296
	ds_load_u8 v12, v99 offset:3168
	v_lshl_or_b32 v180, v10, 16, v9
	ds_load_u8 v9, v99 offset:4832
	ds_load_u8 v10, v99 offset:4704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3552
	ds_load_u8 v13, v99 offset:3424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v12, 16, v11
	ds_load_u8 v10, v99 offset:5088
	ds_load_u8 v11, v99 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4320
	ds_load_u8 v12, v99 offset:4192
	v_lshl_or_b32 v182, v10, 16, v9
	ds_load_u8 v9, v99 offset:5856
	ds_load_u8 v10, v99 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4576
	ds_load_u8 v13, v99 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v12, 16, v11
	ds_load_u8 v10, v99 offset:6112
	ds_load_u8 v11, v99 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5344
	ds_load_u8 v12, v99 offset:5216
	v_lshl_or_b32 v184, v10, 16, v9
	ds_load_u8 v9, v99 offset:6880
	ds_load_u8 v10, v99 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5600
	ds_load_u8 v13, v99 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v12, 16, v11
	ds_load_u8 v10, v99 offset:7136
	ds_load_u8 v11, v99 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6368
	ds_load_u8 v12, v99 offset:6240
	v_lshl_or_b32 v186, v10, 16, v9
	ds_load_u8 v9, v99 offset:7904
	ds_load_u8 v10, v99 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6624
	ds_load_u8 v13, v99 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v12, 16, v11
	ds_load_u8 v10, v99 offset:8160
	ds_load_u8 v11, v99 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7392
	ds_load_u8 v12, v99 offset:7264
	v_lshl_or_b32 v188, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7648
	ds_load_u8 v13, v99 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[187:188], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v180, v9
	v_cvt_f32_i32_e32 v179, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:240
	ds_load_u8 v10, v99 offset:112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v178, v11
	v_cvt_f32_i32_e32 v177, v12
	v_cvt_f32_i32_e32 v176, v13
	v_cvt_f32_i32_e32 v175, v14
	v_cvt_f32_i32_e32 v174, v15
	v_cvt_f32_i32_e32 v173, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:496
	ds_load_u8 v11, v99 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:752
	ds_load_u8 v12, v99 offset:624
	v_lshl_or_b32 v181, v10, 16, v9
	ds_load_u8 v9, v99 offset:1264
	ds_load_u8 v10, v99 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115
	ds_load_u8 v13, v99 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v12, 16, v11
	ds_load_u8 v10, v99 offset:1520
	ds_load_u8 v11, v99 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1776
	ds_load_u8 v12, v99 offset:1648
	v_lshl_or_b32 v183, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v116
	ds_load_u8 v13, v99 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v99 offset:2288
	ds_load_u8 v30, v99 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v99 offset:2544
	ds_load_u8 v31, v99 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v99 offset:2800
	ds_load_u8 v32, v99 offset:2672
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v117
	ds_load_u8 v181, v99 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v181, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v27, v99 offset:3312
	ds_load_u8 v28, v99 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v99 offset:3568
	ds_load_u8 v29, v99 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v99 offset:3824
	ds_load_u8 v30, v99 offset:3696
	v_lshl_or_b32 v27, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v118
	ds_load_u8 v31, v99 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v99 offset:4336
	ds_load_u8 v26, v99 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v99 offset:4592
	ds_load_u8 v27, v99 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v99 offset:4848
	ds_load_u8 v28, v99 offset:4720
	v_lshl_or_b32 v25, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v119
	ds_load_u8 v29, v99 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v23, v99 offset:5360
	ds_load_u8 v24, v99 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v99 offset:5616
	ds_load_u8 v25, v99 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v99 offset:5872
	ds_load_u8 v26, v99 offset:5744
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v120
	ds_load_u8 v27, v99 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v99 offset:6384
	ds_load_u8 v22, v99 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v99 offset:6640
	ds_load_u8 v23, v99 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v99 offset:6896
	ds_load_u8 v24, v99 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v121
	ds_load_u8 v25, v99 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v19, v99 offset:7408
	ds_load_u8 v20, v99 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:7664
	ds_load_u8 v21, v99 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v99 offset:7920
	ds_load_u8 v22, v99 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v122
	ds_load_u8 v23, v99 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v13, s45, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v20, v9
	v_cvt_f32_i32_e32 v19, v10
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1f
	buffer_load_u16 v220, v13, s[28:31], 0 offen
	buffer_load_u16 v221, v13, s[28:31], 0 offen offset:4
	buffer_load_u16 v222, v13, s[28:31], 0 offen offset:8
	buffer_load_u16 v223, v13, s[28:31], 0 offen offset:12
	buffer_load_u16 v224, v13, s[28:31], 0 offen offset:16
	buffer_load_u16 v225, v13, s[28:31], 0 offen offset:20
	buffer_load_u16 v226, v13, s[28:31], 0 offen offset:24
	buffer_load_u16 v227, v13, s[28:31], 0 offen offset:28
	buffer_load_u16 v228, v13, s[28:31], 0 offen offset:32
	buffer_load_u16 v229, v13, s[28:31], 0 offen offset:36
	buffer_load_u16 v230, v13, s[28:31], 0 offen offset:40
	buffer_load_u16 v231, v13, s[28:31], 0 offen offset:44
	buffer_load_u16 v232, v13, s[28:31], 0 offen offset:48
	buffer_load_u16 v215, v13, s[28:31], 0 offen offset:52
	buffer_load_u16 v214, v13, s[28:31], 0 offen offset:56
	buffer_load_u16 v213, v13, s[28:31], 0 offen offset:60
	buffer_load_u16 v212, v13, s[28:31], 0 offen offset:64
	buffer_load_u16 v211, v13, s[28:31], 0 offen offset:68
	buffer_load_u16 v210, v13, s[28:31], 0 offen offset:72
	buffer_load_u16 v209, v13, s[28:31], 0 offen offset:76
	buffer_load_u16 v208, v13, s[28:31], 0 offen offset:80
	buffer_load_u16 v207, v13, s[28:31], 0 offen offset:84
	buffer_load_u16 v206, v13, s[28:31], 0 offen offset:88
	buffer_load_u16 v205, v13, s[28:31], 0 offen offset:92
	buffer_load_u16 v204, v13, s[28:31], 0 offen offset:96
	buffer_load_u16 v203, v13, s[28:31], 0 offen offset:100
	buffer_load_u16 v202, v13, s[28:31], 0 offen offset:104
	buffer_load_u16 v201, v13, s[28:31], 0 offen offset:108
	buffer_load_u16 v200, v13, s[28:31], 0 offen offset:112
	buffer_load_u16 v199, v13, s[28:31], 0 offen offset:116
	buffer_load_u16 v198, v13, s[28:31], 0 offen offset:120
	buffer_load_u16 v197, v13, s[28:31], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v196, v13, s[28:31], 0 offen offset:128
	buffer_load_u16 v195, v13, s[28:31], 0 offen offset:132
	buffer_load_u16 v194, v13, s[28:31], 0 offen offset:136
	buffer_load_u16 v193, v13, s[28:31], 0 offen offset:140
	buffer_load_u16 v192, v13, s[28:31], 0 offen offset:144
	buffer_load_u16 v191, v13, s[28:31], 0 offen offset:148
	buffer_load_u16 v190, v13, s[28:31], 0 offen offset:152
	buffer_load_u16 v189, v13, s[28:31], 0 offen offset:156
	buffer_load_u16 v188, v13, s[28:31], 0 offen offset:160
	buffer_load_u16 v187, v13, s[28:31], 0 offen offset:164
	buffer_load_u16 v186, v13, s[28:31], 0 offen offset:168
	buffer_load_u16 v185, v13, s[28:31], 0 offen offset:172
	buffer_load_u16 v184, v13, s[28:31], 0 offen offset:176
	buffer_load_u16 v183, v13, s[28:31], 0 offen offset:180
	buffer_load_u16 v182, v13, s[28:31], 0 offen offset:184
	buffer_load_u16 v181, v13, s[28:31], 0 offen offset:188
	buffer_load_u16 v32, v13, s[28:31], 0 offen offset:192
	buffer_load_u16 v31, v13, s[28:31], 0 offen offset:196
	buffer_load_u16 v30, v13, s[28:31], 0 offen offset:200
	buffer_load_u16 v29, v13, s[28:31], 0 offen offset:204
	buffer_load_u16 v28, v13, s[28:31], 0 offen offset:208
	buffer_load_u16 v27, v13, s[28:31], 0 offen offset:212
	buffer_load_u16 v26, v13, s[28:31], 0 offen offset:216
	buffer_load_u16 v25, v13, s[28:31], 0 offen offset:220
	buffer_load_u16 v24, v13, s[28:31], 0 offen offset:224
	buffer_load_u16 v23, v13, s[28:31], 0 offen offset:228
	buffer_load_u16 v22, v13, s[28:31], 0 offen offset:232
	buffer_load_u16 v21, v13, s[28:31], 0 offen offset:236
	buffer_load_u16 v16, v13, s[28:31], 0 offen offset:240
	buffer_load_u16 v15, v13, s[28:31], 0 offen offset:244
	buffer_load_u16 v14, v13, s[28:31], 0 offen offset:248
	buffer_load_u16 v13, v13, s[28:31], 0 offen offset:252
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b128 v109, v[216:219]
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b16 v108, v123 offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s45, s45, s46
	s_cmp_lg_u32 s44, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v216, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v132, v216
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v132, 16, v221
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v97, v131, v132
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v131, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v96, v130, v131
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v130, 16, v223
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v95, v129, v130 :: v_dual_mul_f32 v128, v124, v128
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(59)
	v_dual_mul_f32 v126, v124, v126 :: v_dual_lshlrev_b32 v129, 16, v224
	v_mul_f32_e32 v127, v124, v127
	v_mul_f32_e32 v125, v124, v125
	v_mul_f32_e32 v20, v124, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v94, v128, v129
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(58)
	v_dual_mul_f32 v19, v124, v19 :: v_dual_lshlrev_b32 v128, 16, v225
	v_mul_f32_e32 v12, v124, v12
	v_mul_f32_e32 v17, v124, v17
	v_mul_f32_e32 v11, v124, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v93, v127, v128
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v127, 16, v226
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v124, v10
	v_mul_f32_e32 v18, v124, v18
	v_dual_mul_f32 v9, v124, v9 :: v_dual_fmac_f32 v92, v126, v127
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v126, 16, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v91, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v140
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v126, 16, v228
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v90, v125, v126 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v125, v124, v139 :: v_dual_lshlrev_b32 v126, 16, v229
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v89, v125, v126 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v138
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v230
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v41, v20, v24 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v88, v125, v126 :: v_dual_mul_f32 v125, v124, v137
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v231
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v40, v19, v20 :: v_dual_lshlrev_b32 v19, 16, v22
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v37, v12, v16 :: v_dual_lshlrev_b32 v12, 16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v232
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v36, v11, v12 :: v_dual_lshlrev_b32 v11, 16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v125, v126 :: v_dual_mul_f32 v125, v124, v135
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v215
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v10, v11
	v_dual_fmac_f32 v39, v18, v19 :: v_dual_lshlrev_b32 v18, 16, v21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v85, v125, v126 :: v_dual_lshlrev_b32 v10, 16, v13
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v134
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v214
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v38, v17, v18
	v_fmac_f32_e32 v34, v9, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v84, v125, v126 :: v_dual_mul_f32 v125, v124, v133
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v213
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v83, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v212
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v82, v125, v126 :: v_dual_mul_f32 v125, v124, v147
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v211
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v81, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v146
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v80, v125, v126 :: v_dual_mul_f32 v125, v124, v145
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v209
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v79, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v208
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v78, v125, v126 :: v_dual_mul_f32 v125, v124, v143
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v207
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v77, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v142
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v76, v125, v126 :: v_dual_mul_f32 v125, v124, v141
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v205
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v75, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v204
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v74, v125, v126 :: v_dual_mul_f32 v125, v124, v155
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v203
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v154
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v72, v125, v126 :: v_dual_mul_f32 v125, v124, v153
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v201
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v71, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v200
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v70, v125, v126 :: v_dual_mul_f32 v125, v124, v151
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v199
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v69, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v150
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v68, v125, v126 :: v_dual_mul_f32 v125, v124, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v197
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v67, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v196
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v66, v125, v126 :: v_dual_mul_f32 v125, v124, v163
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v195
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v65, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v162
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v64, v125, v126 :: v_dual_mul_f32 v125, v124, v161
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v193
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v63, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v192
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v125, v126 :: v_dual_mul_f32 v125, v124, v159
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v191
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v158
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v60, v125, v126 :: v_dual_mul_f32 v125, v124, v157
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v189
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v59, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v188
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v57, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v187
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v171
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v56, v125, v126
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v170
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v55, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v169
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v185
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v54, v125, v126 :: v_dual_mul_f32 v125, v124, v168
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v53, v125, v126 :: v_dual_lshlrev_b32 v126, 16, v183
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v167
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v52, v125, v126
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v166
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v51, v125, v126
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v165
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v181
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v50, v125, v126 :: v_dual_mul_f32 v125, v124, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v125, v32 :: v_dual_mul_f32 v32, v124, v179
	v_fmac_f32_e32 v48, v32, v31
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v31, v124, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v47, v31, v30 :: v_dual_mul_f32 v30, v124, v177
	v_dual_fmac_f32 v46, v30, v29 :: v_dual_mul_f32 v29, v124, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v45, v29, v28 :: v_dual_mul_f32 v28, v124, v175
	v_fmac_f32_e32 v44, v28, v27
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v27, v124, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v43, v27, v26 :: v_dual_mul_f32 v26, v124, v173
	v_fmac_f32_e32 v42, v26, v25
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow653
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s41, v33
	s_mul_i32 s4, s40, s41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s42, 0
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v108, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s4, v1, 1
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	buffer_load_u16 v109, v1, s[20:23], 0 offen
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v8, 0
	s_mov_b32 s12, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v1, v99 offset:8272
	ds_load_u8 v2, v99 offset:8256
	ds_load_u8 v3, v99 offset:8304
	ds_load_u8 v4, v99 offset:8288
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v106, 0, v106
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99 offset:8208
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:8192
	v_lshl_or_b32 v30, v3, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v99 offset:8240
	ds_load_u8 v5, v99 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v4, 16, v2
	ds_load_u8 v1, v99 offset:640
	ds_load_u8 v2, v99 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99 offset:896
	ds_load_u8 v3, v99 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:128
	ds_load_u8 v4, v99
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v99 offset:8400
	ds_load_u8 v2, v99 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:384
	ds_load_u8 v5, v99 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v4, 16, v3
	ds_load_u8 v2, v99 offset:8432
	ds_load_u8 v3, v99 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:8336
	ds_load_u8 v4, v99 offset:8320
	v_lshl_or_b32 v32, v2, 16, v1
	ds_load_u8 v1, v99 offset:1664
	ds_load_u8 v2, v99 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:8368
	ds_load_u8 v5, v99 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v4, 16, v3
	ds_load_u8 v2, v99 offset:1920
	ds_load_u8 v3, v99 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:1152
	ds_load_u8 v4, v99 offset:1024
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:1408
	ds_load_u8 v5, v99 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8528
	ds_load_u8 v18, v99 offset:8512
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8560
	ds_load_u8 v19, v99 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8464
	ds_load_u8 v20, v99 offset:8448
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v99 offset:2688
	ds_load_u8 v18, v99 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8496
	ds_load_u8 v21, v99 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	ds_load_u8 v18, v99 offset:2944
	ds_load_u8 v19, v99 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:2176
	ds_load_u8 v20, v99 offset:2048
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:2432
	ds_load_u8 v21, v99 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8656
	ds_load_u8 v18, v99 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8688
	ds_load_u8 v19, v99 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8592
	ds_load_u8 v20, v99 offset:8576
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v99 offset:3712
	ds_load_u8 v18, v99 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8624
	ds_load_u8 v21, v99 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v20, 16, v19
	ds_load_u8 v18, v99 offset:3968
	ds_load_u8 v19, v99 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:3200
	ds_load_u8 v20, v99 offset:3072
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:3456
	ds_load_u8 v21, v99 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8784
	ds_load_u8 v18, v99 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8816
	ds_load_u8 v19, v99 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8720
	ds_load_u8 v20, v99 offset:8704
	v_lshl_or_b32 v24, v18, 16, v17
	ds_load_u8 v17, v99 offset:4736
	ds_load_u8 v18, v99 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8752
	ds_load_u8 v21, v99 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v20, 16, v19
	ds_load_u8 v18, v99 offset:4992
	ds_load_u8 v19, v99 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:4224
	ds_load_u8 v20, v99 offset:4096
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:4480
	ds_load_u8 v21, v99 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8912
	ds_load_u8 v18, v99 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8944
	ds_load_u8 v19, v99 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8848
	ds_load_u8 v20, v99 offset:8832
	v_lshl_or_b32 v22, v18, 16, v17
	ds_load_u8 v17, v99 offset:5760
	ds_load_u8 v18, v99 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8880
	ds_load_u8 v21, v99 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v20, 16, v19
	ds_load_u8 v18, v99 offset:6016
	ds_load_u8 v19, v99 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:5248
	ds_load_u8 v20, v99 offset:5120
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:5504
	ds_load_u8 v110, v99 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v110, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:9040
	ds_load_u8 v18, v99 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9072
	ds_load_u8 v19, v99 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8976
	ds_load_u8 v20, v99 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:9008
	ds_load_u8 v110, v99 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v20, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	ds_load_u8 v17, v99 offset:6784
	ds_load_u8 v18, v99 offset:6656
	v_lshl_or_b32 v19, v110, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:7040
	ds_load_u8 v110, v99 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v110, v18, 0xc0c0004
	ds_load_u8 v110, v99 offset:6272
	ds_load_u8 v111, v99 offset:6144
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:6528
	ds_load_u8 v112, v99 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:9104
	ds_load_u8 v18, v99 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9136
	ds_load_u8 v110, v99 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v110, v18, 0xc0c0004
	ds_load_u8 v110, v99 offset:9168
	ds_load_u8 v111, v99 offset:9152
	v_lshl_or_b32 v17, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:9184
	ds_load_u8 v112, v107 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v111, 16, v110
	ds_load_u8 v110, v99 offset:7808
	ds_load_u8 v111, v99 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:8064
	ds_load_u8 v112, v99 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v99 offset:7296
	ds_load_u8 v113, v99 offset:7168
	v_lshl_or_b32 v111, v111, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v99 offset:7552
	ds_load_u8 v114, v99 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v113, 16, v112
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v110, v9
	v_cvt_f32_i32_e32 v111, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:656
	ds_load_u8 v10, v99 offset:528
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v112, v11
	v_cvt_f32_i32_e32 v113, v12
	v_cvt_f32_i32_e32 v114, v13
	v_cvt_f32_i32_e32 v115, v14
	v_cvt_f32_i32_e32 v116, v15
	v_cvt_f32_i32_e32 v117, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:912
	ds_load_u8 v11, v99 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:16
	ds_load_u8 v12, v99 offset:144
	v_lshl_or_b32 v119, v10, 16, v9
	ds_load_u8 v9, v99 offset:1680
	ds_load_u8 v10, v99 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:400
	ds_load_u8 v13, v99 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v12, 16, v11
	ds_load_u8 v10, v99 offset:1936
	ds_load_u8 v11, v99 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1168
	ds_load_u8 v12, v99 offset:1040
	v_lshl_or_b32 v121, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1424
	ds_load_u8 v13, v99 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:2704
	ds_load_u8 v119, v99 offset:2576
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:2960
	ds_load_u8 v120, v99 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:2192
	ds_load_u8 v121, v99 offset:2064
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:2448
	ds_load_u8 v122, v99 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:3728
	ds_load_u8 v119, v99 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:3984
	ds_load_u8 v120, v99 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:3216
	ds_load_u8 v121, v99 offset:3088
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:3472
	ds_load_u8 v122, v99 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:4752
	ds_load_u8 v119, v99 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:5008
	ds_load_u8 v120, v99 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:4240
	ds_load_u8 v121, v99 offset:4112
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:4496
	ds_load_u8 v122, v99 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:5776
	ds_load_u8 v119, v99 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:6032
	ds_load_u8 v120, v99 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:5264
	ds_load_u8 v121, v99 offset:5136
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:5520
	ds_load_u8 v122, v99 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:6800
	ds_load_u8 v119, v99 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:7056
	ds_load_u8 v120, v99 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:6288
	ds_load_u8 v121, v99 offset:6160
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:6544
	ds_load_u8 v122, v99 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:7824
	ds_load_u8 v119, v99 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:8080
	ds_load_u8 v120, v99 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:7312
	ds_load_u8 v121, v99 offset:7184
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:7568
	ds_load_u8 v122, v99 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v118, v9
	v_cvt_f32_i32_e32 v119, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:672
	ds_load_u8 v10, v99 offset:544
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v11
	v_cvt_f32_i32_e32 v121, v12
	v_cvt_f32_i32_e32 v122, v13
	v_cvt_f32_i32_e32 v123, v14
	v_cvt_f32_i32_e32 v124, v15
	v_cvt_f32_i32_e32 v125, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:928
	ds_load_u8 v11, v99 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:32
	ds_load_u8 v12, v99 offset:160
	v_lshl_or_b32 v127, v10, 16, v9
	ds_load_u8 v9, v99 offset:1696
	ds_load_u8 v10, v99 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:416
	ds_load_u8 v13, v99 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v12, 16, v11
	ds_load_u8 v10, v99 offset:1952
	ds_load_u8 v11, v99 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1184
	ds_load_u8 v12, v99 offset:1056
	v_lshl_or_b32 v129, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1440
	ds_load_u8 v13, v99 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:2720
	ds_load_u8 v127, v99 offset:2592
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:2976
	ds_load_u8 v128, v99 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:2208
	ds_load_u8 v129, v99 offset:2080
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:2464
	ds_load_u8 v130, v99 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:3744
	ds_load_u8 v127, v99 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:4000
	ds_load_u8 v128, v99 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:3232
	ds_load_u8 v129, v99 offset:3104
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:3488
	ds_load_u8 v130, v99 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:4768
	ds_load_u8 v127, v99 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:5024
	ds_load_u8 v128, v99 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:4256
	ds_load_u8 v129, v99 offset:4128
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:4512
	ds_load_u8 v130, v99 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:5792
	ds_load_u8 v127, v99 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:6048
	ds_load_u8 v128, v99 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:5280
	ds_load_u8 v129, v99 offset:5152
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:5536
	ds_load_u8 v130, v99 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:6816
	ds_load_u8 v127, v99 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:7072
	ds_load_u8 v128, v99 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:6304
	ds_load_u8 v129, v99 offset:6176
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:6560
	ds_load_u8 v130, v99 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:7840
	ds_load_u8 v127, v99 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:8096
	ds_load_u8 v128, v99 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:7328
	ds_load_u8 v129, v99 offset:7200
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:7584
	ds_load_u8 v130, v99 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v126, v9
	v_cvt_f32_i32_e32 v127, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:688
	ds_load_u8 v10, v99 offset:560
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v128, v11
	v_cvt_f32_i32_e32 v129, v12
	v_cvt_f32_i32_e32 v130, v13
	v_cvt_f32_i32_e32 v131, v14
	v_cvt_f32_i32_e32 v132, v15
	v_cvt_f32_i32_e32 v133, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:944
	ds_load_u8 v11, v99 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:48
	ds_load_u8 v12, v99 offset:176
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v99 offset:1712
	ds_load_u8 v10, v99 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:432
	ds_load_u8 v13, v99 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v12, 16, v11
	ds_load_u8 v10, v99 offset:1968
	ds_load_u8 v11, v99 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1200
	ds_load_u8 v12, v99 offset:1072
	v_lshl_or_b32 v137, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1456
	ds_load_u8 v13, v99 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:2736
	ds_load_u8 v135, v99 offset:2608
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:2992
	ds_load_u8 v136, v99 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:2224
	ds_load_u8 v137, v99 offset:2096
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:2480
	ds_load_u8 v138, v99 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:3760
	ds_load_u8 v135, v99 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:4016
	ds_load_u8 v136, v99 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:3248
	ds_load_u8 v137, v99 offset:3120
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:3504
	ds_load_u8 v138, v99 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:4784
	ds_load_u8 v135, v99 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:5040
	ds_load_u8 v136, v99 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:4272
	ds_load_u8 v137, v99 offset:4144
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:4528
	ds_load_u8 v138, v99 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:5808
	ds_load_u8 v135, v99 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:6064
	ds_load_u8 v136, v99 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:5296
	ds_load_u8 v137, v99 offset:5168
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:5552
	ds_load_u8 v138, v99 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:6832
	ds_load_u8 v135, v99 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:7088
	ds_load_u8 v136, v99 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:6320
	ds_load_u8 v137, v99 offset:6192
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:6576
	ds_load_u8 v138, v99 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:7856
	ds_load_u8 v135, v99 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:8112
	ds_load_u8 v136, v99 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:7344
	ds_load_u8 v137, v99 offset:7216
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:7600
	ds_load_u8 v138, v99 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v134, v9
	v_cvt_f32_i32_e32 v135, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:704
	ds_load_u8 v10, v99 offset:576
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v136, v11
	v_cvt_f32_i32_e32 v137, v12
	v_cvt_f32_i32_e32 v138, v13
	v_cvt_f32_i32_e32 v139, v14
	v_cvt_f32_i32_e32 v140, v15
	v_cvt_f32_i32_e32 v141, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:960
	ds_load_u8 v11, v99 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:192
	ds_load_u8 v12, v99 offset:64
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v99 offset:1728
	ds_load_u8 v10, v99 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:448
	ds_load_u8 v13, v99 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v12, 16, v11
	ds_load_u8 v10, v99 offset:1984
	ds_load_u8 v11, v99 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1216
	ds_load_u8 v12, v99 offset:1088
	v_lshl_or_b32 v145, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1472
	ds_load_u8 v13, v99 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:2752
	ds_load_u8 v143, v99 offset:2624
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:3008
	ds_load_u8 v144, v99 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:2240
	ds_load_u8 v145, v99 offset:2112
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:2496
	ds_load_u8 v146, v99 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:3776
	ds_load_u8 v143, v99 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:4032
	ds_load_u8 v144, v99 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:3264
	ds_load_u8 v145, v99 offset:3136
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:3520
	ds_load_u8 v146, v99 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:4800
	ds_load_u8 v143, v99 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:5056
	ds_load_u8 v144, v99 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:4288
	ds_load_u8 v145, v99 offset:4160
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:4544
	ds_load_u8 v146, v99 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:5824
	ds_load_u8 v143, v99 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:6080
	ds_load_u8 v144, v99 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:5312
	ds_load_u8 v145, v99 offset:5184
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:5568
	ds_load_u8 v146, v99 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:6848
	ds_load_u8 v143, v99 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:7104
	ds_load_u8 v144, v99 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:6336
	ds_load_u8 v145, v99 offset:6208
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:6592
	ds_load_u8 v146, v99 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:7872
	ds_load_u8 v143, v99 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:8128
	ds_load_u8 v144, v99 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:7360
	ds_load_u8 v145, v99 offset:7232
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:7616
	ds_load_u8 v146, v99 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v142, v9
	v_cvt_f32_i32_e32 v143, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:720
	ds_load_u8 v10, v99 offset:592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v144, v11
	v_cvt_f32_i32_e32 v145, v12
	v_cvt_f32_i32_e32 v146, v13
	v_cvt_f32_i32_e32 v147, v14
	v_cvt_f32_i32_e32 v148, v15
	v_cvt_f32_i32_e32 v149, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:976
	ds_load_u8 v11, v99 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:208
	ds_load_u8 v12, v99 offset:80
	v_lshl_or_b32 v151, v10, 16, v9
	ds_load_u8 v9, v99 offset:1744
	ds_load_u8 v10, v99 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:464
	ds_load_u8 v13, v99 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v12, 16, v11
	ds_load_u8 v10, v99 offset:2000
	ds_load_u8 v11, v99 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1232
	ds_load_u8 v12, v99 offset:1104
	v_lshl_or_b32 v153, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1488
	ds_load_u8 v13, v99 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:2768
	ds_load_u8 v151, v99 offset:2640
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:3024
	ds_load_u8 v152, v99 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:2256
	ds_load_u8 v153, v99 offset:2128
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:2512
	ds_load_u8 v154, v99 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:3792
	ds_load_u8 v151, v99 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:4048
	ds_load_u8 v152, v99 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:3280
	ds_load_u8 v153, v99 offset:3152
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:3536
	ds_load_u8 v154, v99 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:4816
	ds_load_u8 v151, v99 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:5072
	ds_load_u8 v152, v99 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:4304
	ds_load_u8 v153, v99 offset:4176
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:4560
	ds_load_u8 v154, v99 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:5840
	ds_load_u8 v151, v99 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:6096
	ds_load_u8 v152, v99 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:5328
	ds_load_u8 v153, v99 offset:5200
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:5584
	ds_load_u8 v154, v99 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:6864
	ds_load_u8 v151, v99 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:7120
	ds_load_u8 v152, v99 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:6352
	ds_load_u8 v153, v99 offset:6224
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:6608
	ds_load_u8 v154, v99 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:7888
	ds_load_u8 v151, v99 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:8144
	ds_load_u8 v152, v99 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:7376
	ds_load_u8 v153, v99 offset:7248
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:7632
	ds_load_u8 v154, v99 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v150, v9
	v_cvt_f32_i32_e32 v151, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:736
	ds_load_u8 v10, v99 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v152, v11
	v_cvt_f32_i32_e32 v153, v12
	v_cvt_f32_i32_e32 v154, v13
	v_cvt_f32_i32_e32 v155, v14
	v_cvt_f32_i32_e32 v156, v15
	v_cvt_f32_i32_e32 v157, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:992
	ds_load_u8 v11, v99 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:224
	ds_load_u8 v12, v99 offset:96
	v_lshl_or_b32 v159, v10, 16, v9
	ds_load_u8 v9, v99 offset:1760
	ds_load_u8 v10, v99 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:480
	ds_load_u8 v13, v99 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v12, 16, v11
	ds_load_u8 v10, v99 offset:2016
	ds_load_u8 v11, v99 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1248
	ds_load_u8 v12, v99 offset:1120
	v_lshl_or_b32 v161, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1504
	ds_load_u8 v13, v99 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:2784
	ds_load_u8 v159, v99 offset:2656
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:3040
	ds_load_u8 v160, v99 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:2272
	ds_load_u8 v161, v99 offset:2144
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:2528
	ds_load_u8 v162, v99 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:3808
	ds_load_u8 v159, v99 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:4064
	ds_load_u8 v160, v99 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:3296
	ds_load_u8 v161, v99 offset:3168
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:3552
	ds_load_u8 v162, v99 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:4832
	ds_load_u8 v159, v99 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:5088
	ds_load_u8 v160, v99 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:4320
	ds_load_u8 v161, v99 offset:4192
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:4576
	ds_load_u8 v162, v99 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:5856
	ds_load_u8 v159, v99 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:6112
	ds_load_u8 v160, v99 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:5344
	ds_load_u8 v161, v99 offset:5216
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:5600
	ds_load_u8 v162, v99 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:6880
	ds_load_u8 v159, v99 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:7136
	ds_load_u8 v160, v99 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:6368
	ds_load_u8 v161, v99 offset:6240
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:6624
	ds_load_u8 v162, v99 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:7904
	ds_load_u8 v159, v99 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:8160
	ds_load_u8 v160, v99 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:7392
	ds_load_u8 v161, v99 offset:7264
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:7648
	ds_load_u8 v162, v99 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:240
	ds_load_u8 v159, v99 offset:112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:496
	ds_load_u8 v160, v99 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:752
	ds_load_u8 v161, v99 offset:624
	v_lshl_or_b32 v158, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v107, v107
	ds_load_u8 v161, v99 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v161, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v107, 16, v160
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v99 offset:1264
	ds_load_u8 v30, v99 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v99 offset:1520
	ds_load_u8 v107, v99 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v107, v30, 0xc0c0004
	ds_load_u8 v107, v99 offset:1776
	ds_load_u8 v158, v99 offset:1648
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v158, v107, 0xc0c0004
	ds_load_u8 v106, v106
	ds_load_u8 v158, v99 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v158, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v106, 16, v107
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[31:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v99 offset:2288
	ds_load_u8 v30, v99 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v99 offset:2544
	ds_load_u8 v31, v99 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v99 offset:2800
	ds_load_u8 v32, v99 offset:2672
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v32, 0, v105
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v32, v32
	ds_load_u8 v105, v99 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v105, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[27:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v99 offset:3312
	ds_load_u8 v28, v99 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v99 offset:3568
	ds_load_u8 v29, v99 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v99 offset:3824
	ds_load_u8 v30, v99 offset:3696
	v_lshl_or_b32 v27, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v30, 0, v104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v30, v30
	ds_load_u8 v31, v99 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v99 offset:4336
	ds_load_u8 v26, v99 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v99 offset:4592
	ds_load_u8 v27, v99 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v99 offset:4848
	ds_load_u8 v28, v99 offset:4720
	v_lshl_or_b32 v25, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v28, 0, v103
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v28, v28
	ds_load_u8 v29, v99 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v99 offset:5360
	ds_load_u8 v24, v99 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v99 offset:5616
	ds_load_u8 v25, v99 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v99 offset:5872
	ds_load_u8 v26, v99 offset:5744
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v26, 0, v102
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v26, v26
	ds_load_u8 v27, v99 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v99 offset:6384
	ds_load_u8 v22, v99 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v99 offset:6640
	ds_load_u8 v23, v99 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v99 offset:6896
	ds_load_u8 v24, v99 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v24, 0, v101
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v24, v24
	ds_load_u8 v25, v99 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v19, v99 offset:7408
	ds_load_u8 v20, v99 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:7664
	ds_load_u8 v21, v99 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v99 offset:7920
	ds_load_u8 v22, v99 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v22, 0, v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v23, v99 offset:8048
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v1
	v_cvt_f32_i32_e32 v18, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s35
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s3, s33, s3
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v1, s3, v98, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s10
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v108
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	s_mul_i32 s40, s40, s35
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v19, 4, v1
	v_add_nc_u32_e32 v20, 8, v1
	v_add_nc_u32_e32 v21, 12, v1
	v_add_nc_u32_e32 v22, 16, v1
	v_add_nc_u32_e32 v23, 20, v1
	v_add_nc_u32_e32 v24, 24, v1
	v_add_nc_u32_e32 v25, 28, v1
	v_cndmask_b32_e64 v2, 0x80000000, v1, s2
	v_add_nc_u32_e32 v26, 32, v1
	v_add_nc_u32_e32 v27, 36, v1
	v_add_nc_u32_e32 v28, 40, v1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	s_clause 0x7
	buffer_load_u16 v29, v2, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v26, s2
	v_cndmask_b32_e64 v26, 0x80000000, v27, s2
	v_cndmask_b32_e64 v27, 0x80000000, v28, s2
	v_add_nc_u32_e32 v28, 44, v1
	v_add_nc_u32_e32 v30, 48, v1
	v_add_nc_u32_e32 v31, 52, v1
	v_add_nc_u32_e32 v32, 56, v1
	v_add_nc_u32_e32 v98, 60, v1
	v_add_nc_u32_e32 v99, 64, v1
	v_add_nc_u32_e32 v100, 0x44, v1
	v_add_nc_u32_e32 v101, 0x48, v1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	s_clause 0x7
	buffer_load_u16 v102, v2, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v99, s2
	v_cndmask_b32_e64 v99, 0x80000000, v100, s2
	v_cndmask_b32_e64 v100, 0x80000000, v101, s2
	v_add_nc_u32_e32 v101, 0x4c, v1
	v_add_nc_u32_e32 v103, 0x50, v1
	v_add_nc_u32_e32 v104, 0x54, v1
	v_add_nc_u32_e32 v105, 0x58, v1
	v_add_nc_u32_e32 v106, 0x5c, v1
	v_add_nc_u32_e32 v107, 0x60, v1
	v_add_nc_u32_e32 v158, 0x64, v1
	v_add_nc_u32_e32 v159, 0x68, v1
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	s_clause 0x7
	buffer_load_u16 v160, v2, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v100, s[4:7], 0 offen
	buffer_load_u16 v101, v101, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	buffer_load_u16 v104, v104, s[4:7], 0 offen
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	buffer_load_u16 v106, v106, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v107, s2
	v_cndmask_b32_e64 v107, 0x80000000, v158, s2
	v_cndmask_b32_e64 v158, 0x80000000, v159, s2
	v_add_nc_u32_e32 v159, 0x6c, v1
	v_add_nc_u32_e32 v161, 0x70, v1
	v_add_nc_u32_e32 v162, 0x74, v1
	v_add_nc_u32_e32 v163, 0x78, v1
	v_add_nc_u32_e32 v164, 0x7c, v1
	v_add_nc_u32_e32 v165, 0x80, v1
	v_add_nc_u32_e32 v166, 0x84, v1
	v_add_nc_u32_e32 v167, 0x88, v1
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	s_clause 0x7
	buffer_load_u16 v168, v2, s[4:7], 0 offen
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v165, s2
	v_cndmask_b32_e64 v165, 0x80000000, v166, s2
	v_cndmask_b32_e64 v166, 0x80000000, v167, s2
	v_add_nc_u32_e32 v167, 0x8c, v1
	v_add_nc_u32_e32 v169, 0x90, v1
	v_add_nc_u32_e32 v170, 0x94, v1
	v_add_nc_u32_e32 v171, 0x98, v1
	v_add_nc_u32_e32 v172, 0x9c, v1
	v_add_nc_u32_e32 v173, 0xa0, v1
	v_add_nc_u32_e32 v174, 0xa4, v1
	v_add_nc_u32_e32 v175, 0xa8, v1
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	s_clause 0x7
	buffer_load_u16 v176, v2, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v173, s2
	v_cndmask_b32_e64 v173, 0x80000000, v174, s2
	v_cndmask_b32_e64 v174, 0x80000000, v175, s2
	v_add_nc_u32_e32 v175, 0xac, v1
	v_add_nc_u32_e32 v177, 0xb0, v1
	v_add_nc_u32_e32 v178, 0xb4, v1
	v_add_nc_u32_e32 v179, 0xb8, v1
	v_add_nc_u32_e32 v180, 0xbc, v1
	v_add_nc_u32_e32 v181, 0xc0, v1
	v_add_nc_u32_e32 v182, 0xc4, v1
	v_add_nc_u32_e32 v183, 0xc8, v1
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	s_clause 0x7
	buffer_load_u16 v184, v2, s[4:7], 0 offen
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v181, s2
	v_cndmask_b32_e64 v181, 0x80000000, v182, s2
	v_cndmask_b32_e64 v182, 0x80000000, v183, s2
	v_add_nc_u32_e32 v183, 0xcc, v1
	v_add_nc_u32_e32 v185, 0xd0, v1
	v_add_nc_u32_e32 v186, 0xd4, v1
	v_add_nc_u32_e32 v187, 0xd8, v1
	v_add_nc_u32_e32 v188, 0xdc, v1
	v_add_nc_u32_e32 v189, 0xe0, v1
	v_add_nc_u32_e32 v190, 0xe4, v1
	v_add_nc_u32_e32 v191, 0xe8, v1
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	s_clause 0x7
	buffer_load_u16 v192, v2, s[4:7], 0 offen
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v189, s2
	v_cndmask_b32_e64 v189, 0x80000000, v190, s2
	v_cndmask_b32_e64 v190, 0x80000000, v191, s2
	v_add_nc_u32_e32 v191, 0xec, v1
	v_add_nc_u32_e32 v193, 0xf0, v1
	v_add_nc_u32_e32 v194, 0xf4, v1
	v_add_nc_u32_e32 v195, 0xf8, v1
	v_add_nc_u32_e32 v1, 0xfc, v1
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x7
	buffer_load_u16 v196, v2, s[4:7], 0 offen
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v197, v1, s[4:7], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v2.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(62)
	v_mov_b16_e32 v2.h, v109.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v108
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v109, v110, v2
	v_mul_f32_e32 v18, v18, v2
	v_mul_f32_e32 v110, v111, v2
	v_mul_f32_e32 v111, v112, v2
	v_mul_f32_e32 v112, v113, v2
	v_mul_f32_e32 v113, v114, v2
	v_mul_f32_e32 v114, v115, v2
	v_mul_f32_e32 v115, v116, v2
	v_mul_f32_e32 v116, v117, v2
	v_mul_f32_e32 v117, v118, v2
	v_mul_f32_e32 v118, v119, v2
	v_mul_f32_e32 v119, v120, v2
	v_mul_f32_e32 v13, v13, v2
	v_mul_f32_e32 v120, v121, v2
	v_mul_f32_e32 v121, v122, v2
	v_mul_f32_e32 v122, v123, v2
	v_mul_f32_e32 v123, v124, v2
	v_mul_f32_e32 v124, v125, v2
	v_mul_f32_e32 v125, v126, v2
	v_mul_f32_e32 v126, v127, v2
	v_mul_f32_e32 v127, v128, v2
	v_mul_f32_e32 v128, v129, v2
	v_mul_f32_e32 v129, v130, v2
	v_mul_f32_e32 v130, v131, v2
	v_mul_f32_e32 v131, v132, v2
	v_mul_f32_e32 v132, v133, v2
	v_mul_f32_e32 v133, v134, v2
	v_mul_f32_e32 v134, v135, v2
	v_mul_f32_e32 v135, v136, v2
	v_mul_f32_e32 v136, v137, v2
	v_mul_f32_e32 v137, v138, v2
	v_mul_f32_e32 v138, v139, v2
	v_mul_f32_e32 v139, v140, v2
	v_mul_f32_e32 v140, v141, v2
	v_mul_f32_e32 v141, v142, v2
	v_mul_f32_e32 v142, v143, v2
	v_mul_f32_e32 v143, v144, v2
	v_mul_f32_e32 v144, v145, v2
	v_mul_f32_e32 v145, v146, v2
	v_mul_f32_e32 v146, v147, v2
	v_mul_f32_e32 v147, v148, v2
	v_mul_f32_e32 v148, v149, v2
	v_mul_f32_e32 v149, v150, v2
	v_mul_f32_e32 v150, v151, v2
	v_mul_f32_e32 v151, v152, v2
	v_mul_f32_e32 v152, v153, v2
	v_mul_f32_e32 v153, v154, v2
	v_mul_f32_e32 v154, v155, v2
	v_mul_f32_e32 v155, v156, v2
	v_mul_f32_e32 v156, v157, v2
	v_mul_f32_e32 v8, v8, v2
	v_mul_f32_e32 v7, v7, v2
	v_mul_f32_e32 v15, v15, v2
	v_mul_f32_e32 v6, v6, v2
	v_mul_f32_e32 v17, v17, v2
	v_mul_f32_e32 v4, v4, v2
	v_mul_f32_e32 v3, v3, v2
	v_mul_f32_e32 v5, v5, v2
	v_mul_f32_e32 v16, v16, v2
	v_mul_f32_e32 v12, v12, v2
	v_mul_f32_e32 v14, v14, v2
	v_mul_f32_e32 v10, v10, v2
	v_mul_f32_e32 v11, v11, v2
	v_mul_f32_e32 v9, v9, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v109, v29, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v111, v20, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v58, v29, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v96, v20, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v115, v24, v92
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v92, v24, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v28, 16, v28
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v119, v27, v88
	v_fma_f32 v28, v120, v28, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, v123, v32, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v88, v27, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v87, v28, s2
	v_cndmask_b32_e64 v32, v84, v32, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v157, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v112, v21, v95
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v95, v21, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v100, v127, v100, v80
	v_fma_f32 v104, v130, v104, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v80, v80, v100, s2
	v_cndmask_b32_e64 v77, v77, v104, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v183, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v183, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v46, v12, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v191, 16, v191
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v189, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v191, v38
	v_fma_f32 v3, v3, v190, v39
	v_fma_f32 v6, v6, v194, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v18, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v18, v29, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v110, v19, v97
	v_fma_f32 v7, v7, v195, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v36, v6, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v193, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v38, v4, s2
	v_cndmask_b32_e64 v19, v97, v19, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v35, v7, s2
	v_cndmask_b32_e64 v3, v39, v3, s2
	v_cndmask_b32_e64 v5, v37, v5, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v19, v19, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v113, v22, v94
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v35, 0, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v94, v22, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v160, 16, v168
	v_lshlrev_b32_e32 v168, 16, v176
	v_lshlrev_b32_e32 v176, 16, v184
	v_lshlrev_b32_e32 v184, 16, v192
	v_lshlrev_b32_e32 v192, 16, v196
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v196, 16, v197
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v102, v117, v102, v90
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v19, v22, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v110, v133, v160, v74
	v_fma_f32 v8, v8, v196, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v90, v102, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v37, 0, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v121, v30, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v74, v74, v110, s2
	v_cndmask_b32_e64 v34, v34, v8, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v20, v20
	v_max_f32_e32 v20, 0, v18
	v_max_f32_e32 v18, v21, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v114, v23, v93
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v21, v24, v24
	v_max_f32_e32 v36, 0, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v118, v26, v89
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v93, v23, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v39, 0, v21 :: v_dual_lshlrev_b32 v188, 16, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v89, v26, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v21, v28, v28 :: v_dual_max_f32 v8, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v16, v16, v188, v42
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v86, v30, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v19, v26, v26 :: v_dual_max_f32 v38, 0, v8
	v_dual_max_f32 v8, v58, v58 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v117, v141, v168, v66
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v23, 0, v18 :: v_dual_lshlrev_b32 v164, 16, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v28, 0, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v116, v25, v91
	v_fma_f32 v98, v124, v98, v83
	v_fma_f32 v17, v17, v192, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v117, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v91, v25, s2
	v_cndmask_b32_e64 v16, v42, v16, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v42, 0, v19
	v_max_f32_e32 v8, v30, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v122, v31, v85
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v18, v25, v25 :: v_dual_max_f32 v19, v32, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v111, v135, v158, v72
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v15, v187, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v85, v31, s2
	v_cndmask_b32_e64 v83, v83, v98, s2
	v_cndmask_b32_e64 v72, v72, v111, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v41, v17, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v41, 0, v18 :: v_dual_max_f32 v18, v27, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v101, 16, v101
	v_lshlrev_b32_e32 v105, 16, v105
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v14, v186, v44
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v43, v15, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v43, 0, v18 :: v_dual_max_f32 v18, v31, v31
	v_dual_max_f32 v31, 0, v8 :: v_dual_max_f32 v8, v83, v83
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v44, v14, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v44, 0, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v99, v126, v99, v81
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v46, 0, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v112, v136, v159, v71
	v_fma_f32 v109, v125, v157, v82
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v32, 0, v18 :: v_dual_lshlrev_b32 v103, 16, v103
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v81, v81, v99, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, v71, v112, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v82, v82, v109, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v18, v81, v81 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v181, v48
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v80, v80
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v21, v82, v82 :: v_dual_lshlrev_b32 v180, 16, v180
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v48, v10, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v48, 0, v18
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v115, v139, v163, v68
	v_fma_f32 v11, v11, v182, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v101, v128, v101, v79
	v_fma_f32 v103, v129, v103, v78
	v_fma_f32 v105, v131, v105, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v68, v115, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v47, v11, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v47, 0, v21
	v_max_f32_e32 v21, v77, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v106, v132, v106, v75
	v_fma_f32 v107, v134, v107, v73
	v_fma_f32 v13, v13, v185, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v79, v79, v101, s2
	v_cndmask_b32_e64 v78, v78, v103, s2
	v_cndmask_b32_e64 v76, v76, v105, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v77, 0, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v184, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v18, v78, v78 :: v_dual_lshlrev_b32 v165, 16, v165
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v113, v137, v161, v70
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v75, v75, v106, s2
	v_cndmask_b32_e64 v73, v73, v107, s2
	v_cndmask_b32_e64 v9, v49, v9, s2
	v_cndmask_b32_e64 v13, v45, v13, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v45, 0, v19
	v_max_f32_e32 v19, v79, v79
	v_max_f32_e32 v49, 0, v8
	v_dual_max_f32 v8, v76, v76 :: v_dual_lshlrev_b32 v169, 16, v169
	v_dual_max_f32 v76, 0, v18 :: v_dual_lshlrev_b32 v171, 16, v171
	v_dual_max_f32 v18, v75, v75 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v114, v138, v162, v69
	v_fma_f32 v116, v140, v164, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v70, v113, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v58, 0, v19 :: v_dual_max_f32 v19, v74, v74
	v_max_f32_e32 v74, 0, v8
	v_max_f32_e32 v8, v73, v73
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v118, v142, v165, v65
	v_fma_f32 v119, v143, v166, v64
	v_fma_f32 v120, v144, v167, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v69, v114, s2
	v_cndmask_b32_e64 v67, v67, v116, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v21, v72, v72 :: v_dual_max_f32 v72, 0, v18
	v_dual_max_f32 v18, v71, v71 :: v_dual_max_f32 v71, 0, v8
	v_max_f32_e32 v8, v70, v70
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v121, v145, v169, v62
	v_fma_f32 v122, v146, v170, v61
	v_fma_f32 v123, v147, v171, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v65, v65, v118, s2
	v_cndmask_b32_e64 v64, v64, v119, s2
	v_cndmask_b32_e64 v63, v63, v120, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v73, 0, v19
	v_max_f32_e32 v75, 0, v21
	v_max_f32_e32 v19, v69, v69
	v_dual_max_f32 v69, 0, v18 :: v_dual_max_f32 v18, v68, v68
	v_max_f32_e32 v21, v67, v67
	v_dual_max_f32 v67, 0, v8 :: v_dual_max_f32 v8, v66, v66
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v124, v148, v172, v59
	v_fma_f32 v125, v149, v176, v57
	v_fma_f32 v126, v150, v173, v56
	v_fma_f32 v127, v151, v174, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v62, v121, s2
	v_cndmask_b32_e64 v61, v61, v122, s2
	v_cndmask_b32_e64 v60, v60, v123, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v68, 0, v19
	v_max_f32_e32 v66, 0, v18
	v_dual_max_f32 v18, v65, v65 :: v_dual_max_f32 v19, v64, v64
	v_max_f32_e32 v64, 0, v8
	v_max_f32_e32 v8, v63, v63
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v128, v152, v175, v54
	v_fma_f32 v129, v153, v177, v53
	v_fma_f32 v130, v154, v178, v52
	v_fma_f32 v131, v155, v179, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v59, v59, v124, s2
	v_cndmask_b32_e64 v57, v57, v125, s2
	v_cndmask_b32_e64 v56, v56, v126, s2
	v_cndmask_b32_e64 v55, v55, v127, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v70, 0, v21 :: v_dual_max_f32 v21, v62, v62
	v_max_f32_e32 v62, 0, v18
	v_dual_max_f32 v18, v61, v61 :: v_dual_max_f32 v61, 0, v8
	v_max_f32_e32 v8, v60, v60
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v132, v156, v180, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v128, s2
	v_cndmask_b32_e64 v53, v53, v129, s2
	v_cndmask_b32_e64 v52, v52, v130, s2
	v_cndmask_b32_e64 v51, v51, v131, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v63, 0, v19
	v_max_f32_e32 v65, 0, v21
	v_max_f32_e32 v21, v56, v56
	v_max_f32_e32 v19, v59, v59
	v_dual_max_f32 v59, 0, v18 :: v_dual_max_f32 v18, v57, v57
	v_max_f32_e32 v56, 0, v8
	v_max_f32_e32 v8, v55, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v132, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v55, 0, v18
	v_max_f32_e32 v18, v54, v54
	v_dual_max_f32 v60, 0, v21 :: v_dual_max_f32 v57, 0, v19
	v_max_f32_e32 v19, v53, v53
	v_max_f32_e32 v21, v51, v51
	v_max_f32_e32 v53, 0, v8
	v_dual_max_f32 v8, v52, v52 :: v_dual_max_f32 v5, v5, v5
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v23, v23, v23 :: v_dual_mul_f32 v28, v28, v28
	v_mul_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v30, 0, v8
	v_dual_max_f32 v8, v9, v9 :: v_dual_max_f32 v9, v10, v10
	v_dual_max_f32 v10, v11, v11 :: v_dual_max_f32 v11, v12, v12
	v_dual_max_f32 v51, 0, v18 :: v_dual_max_f32 v24, 0, v8
	v_dual_max_f32 v29, 0, v19 :: v_dual_max_f32 v8, v13, v13
	v_max_f32_e32 v18, v50, v50
	v_max_f32_e32 v26, 0, v21
	v_max_f32_e32 v22, 0, v10
	v_dual_max_f32 v10, v15, v15 :: v_dual_max_f32 v25, 0, v9
	v_max_f32_e32 v21, 0, v11
	v_max_f32_e32 v11, v17, v17
	v_max_f32_e32 v9, v14, v14
	v_dual_max_f32 v27, 0, v18 :: v_dual_max_f32 v18, 0, v8
	v_max_f32_e32 v8, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, 0, v11 :: v_dual_max_f32 v19, 0, v9
	v_dual_max_f32 v9, v40, v40 :: v_dual_max_f32 v16, 0, v10
	v_dual_max_f32 v10, 0, v3 :: v_dual_max_f32 v15, 0, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v7, v7 :: v_dual_max_f32 v14, 0, v9
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v9, v20, v20
	v_dual_mul_f32 v13, v35, v35 :: v_dual_mul_f32 v20, v36, v36
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v11, 0, v4 :: v_dual_max_f32 v4, v34, v34
	v_max_f32_e32 v7, 0, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v17.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v34, v37, v37 :: v_dual_max_f32 v5, 0, v4
	v_mul_f32_e32 v36, v43, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v9.h
	v_mov_b16_e32 v4.h, v2.l
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v8, 0, v6 :: v_dual_and_b32 v17, 1, v17
	v_max_f32_e32 v6, 0, v3
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v3, s35, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v4, 1, v4
	v_mov_b16_e32 v33.l, v20.h
	v_mov_b16_e32 v33.h, v2.l
	v_mov_b16_e32 v35.h, v2.l
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v31, v31, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v9, v4, 0x7fff
	v_add3_u32 v4, v13, v17, 0x7fff
	v_mov_b16_e32 v13.l, v23.h
	v_mov_b16_e32 v13.h, v2.l
	v_and_b32_e32 v17, 1, v33
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v33, v38, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v9.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v37, v47, v47
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v9, 1, v13
	v_add3_u32 v13, v20, v17, 0x7fff
	v_mov_b16_e32 v17.l, v33.h
	v_mov_b16_e32 v20.l, v34.h
	v_mov_b16_e32 v20.h, v2.l
	v_mov_b16_e32 v17.h, v2.l
	v_add3_u32 v9, v23, v9, 0x7fff
	v_mov_b16_e32 v9.l, v13.h
	v_mov_b16_e32 v38.h, v2.l
	v_and_b32_e32 v13, 1, v20
	v_and_b32_e32 v17, 1, v17
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v20, v41, v41
	v_mul_f32_e32 v24, v24, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v40.h, v2.l
	v_add3_u32 v34, v34, v13, 0x7fff
	v_add3_u32 v13, v33, v17, 0x7fff
	v_mov_b16_e32 v17.l, v20.h
	v_mov_b16_e32 v17.h, v2.l
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v13.l, v34.h
	v_mov_b16_e32 v34.h, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v17, 1, v17
	v_mul_f32_e32 v26, v26, v26
	v_dual_mul_f32 v16, v16, v16 :: v_dual_mul_f32 v43, v67, v67
	v_mul_f32_e32 v22, v22, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v17, v20, v17, 0x7fff
	v_and_b32_e32 v20, 1, v34
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v23, v39, v39
	v_mul_f32_e32 v39, v76, v76
	v_mul_f32_e32 v12, v12, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v28, v28, v20, 0x7fff
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v35.l, v23.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v18, v18, v18
	v_mul_f32_e32 v14, v14, v14
	v_mul_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v33, 1, v35
	v_mul_f32_e32 v35, v42, v42
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v47, v65, v65 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v23, v23, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e32 v33.h, v2.l
	v_mov_b16_e32 v50.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v29, v29
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.l, v23.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v27, v27, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v23, 1, v33
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v25, v25, v25
	v_mul_f32_e32 v15, v15, v15
	v_mul_f32_e32 v11, v11, v11
	v_mul_f32_e32 v7, v7, v7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v20, v35, v23, 0x7fff
	v_mov_b16_e32 v20.l, v28.h
	v_add3_u32 v28, v36, v34, 0x7fff
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v34.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v33, v44, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.h, v2.l
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v35.h, v2.l
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v23.l, v33.h
	v_mov_b16_e32 v36.h, v2.l
	v_mov_b16_e32 v44.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v5, v5, v5
	s_mov_b32 s2, 0x76543210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add3_u32 v3, s40, s33, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v23, v33, v23, 0x7fff
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v33, v45, v45
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v28.h
	v_and_b32_e32 v28, 1, v35
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v35, v46, v46
	v_mul_f32_e32 v45, v64, v64
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e32 v46.h, v2.l
	v_add3_u32 v31, v31, v28, 0x7fff
	v_add3_u32 v28, v32, v34, 0x7fff
	v_mov_b16_e32 v32.l, v35.h
	v_mov_b16_e32 v32.h, v2.l
	v_and_b32_e32 v34, 1, v36
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v36, v48, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v28.l, v31.h
	v_mov_b16_e32 v48.h, v2.l
	v_and_b32_e32 v31, 1, v32
	v_add3_u32 v32, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v36.h
	v_mov_b16_e32 v34.l, v37.h
	v_mov_b16_e32 v34.h, v2.l
	v_mov_b16_e32 v33.h, v2.l
	v_add3_u32 v31, v35, v31, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v35, v49, v49
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v31.l, v32.h
	v_and_b32_e32 v32, 1, v34
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v34, v58, v58 :: v_dual_and_b32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.l, v35.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v49, v55, v55
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v37, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v33, v36, v33, 0x7fff
	v_mov_b16_e32 v36.l, v34.h
	v_mov_b16_e32 v36.h, v2.l
	v_and_b32_e32 v37, 1, v38
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v38, v77, v77
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v33.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v32, 1, v36
	v_add3_u32 v35, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v37.l, v39.h
	v_mov_b16_e32 v37.h, v2.l
	v_add3_u32 v32, v34, v32, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v34, v74, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v32.l, v35.h
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v35, 1, v37
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v37, v72, v72
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v40.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v38, v36, 0x7fff
	v_add3_u32 v35, v39, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v2.l
	v_and_b32_e32 v39, 1, v40
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v40, v71, v71
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v36.l, v35.h
	v_and_b32_e32 v35, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v39, 0x7fff
	v_mov_b16_e32 v38.l, v40.h
	v_mov_b16_e32 v39.h, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v37, v35, 0x7fff
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v40, v38, 0x7fff
	v_mov_b16_e32 v40.h, v2.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v73, v73
	v_mul_f32_e32 v37, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v34, 1, v39
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v39, v69, v69
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v34, v41, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v39.h
	v_and_b32_e32 v41, 1, v42
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v42, v68, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v34, 1, v40
	v_mov_b16_e32 v40.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v39, v34, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v39, v66, v66 :: v_dual_and_b32 v40, 1, v40
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v37, v37, v41, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v39.h
	v_add3_u32 v40, v42, v40, 0x7fff
	v_mov_b16_e32 v34.l, v37.h
	v_mov_b16_e32 v42.h, v2.l
	v_and_b32_e32 v37, 1, v41
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v37, v43, v37, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_and_b32_e32 v43, 1, v44
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v44, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v40.l, v37.h
	v_and_b32_e32 v37, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v39, v39, v43, 0x7fff
	v_mov_b16_e32 v42.l, v44.h
	v_mov_b16_e32 v43.l, v45.h
	v_mov_b16_e32 v43.h, v2.l
	v_add3_u32 v37, v41, v37, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v63, v63
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v37.l, v39.h
	v_and_b32_e32 v42, 1, v42
	v_and_b32_e32 v39, 1, v43
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v43, v61, v61
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.l, v41.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v42, v44, v42, 0x7fff
	v_add3_u32 v39, v45, v39, 0x7fff
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e32 v44.h, v2.l
	v_and_b32_e32 v45, 1, v46
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v46, v59, v59
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v44
	v_add3_u32 v41, v41, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v45.l, v47.h
	v_mov_b16_e32 v45.h, v2.l
	v_add3_u32 v39, v43, v39, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v43, v56, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.l, v41.h
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v41, 1, v45
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v45, v57, v57
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v48.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v46, v44, 0x7fff
	v_add3_u32 v41, v47, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v46.l, v45.h
	v_mov_b16_e32 v46.h, v2.l
	v_and_b32_e32 v47, 1, v48
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v48, v60, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v44.l, v41.h
	v_and_b32_e32 v41, 1, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v43, v47, 0x7fff
	v_mov_b16_e32 v46.l, v48.h
	v_mov_b16_e32 v47.l, v49.h
	v_mov_b16_e32 v47.h, v2.l
	v_add3_u32 v41, v45, v41, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v45, v53, v53
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v41.l, v43.h
	v_and_b32_e32 v46, 1, v46
	v_and_b32_e32 v43, 1, v47
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v47, v51, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v50.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v48, v46, 0x7fff
	v_add3_u32 v43, v49, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v47.h
	v_mov_b16_e32 v48.h, v2.l
	v_and_b32_e32 v49, 1, v50
	v_mov_b16_e32 v46.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 1, v48
	v_add3_u32 v45, v45, v49, 0x7fff
	v_mov_b16_e32 v49.l, v29.h
	v_mov_b16_e32 v49.h, v2.l
	v_mov_b16_e32 v48.l, v30.h
	v_add3_u32 v43, v47, v43, 0x7fff
	v_mov_b16_e32 v43.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v45, 1, v49
	v_and_b32_e32 v47, 1, v48
	v_mov_b16_e32 v48.l, v26.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v29, v29, v45, 0x7fff
	v_mov_b16_e32 v45.l, v27.h
	v_mov_b16_e32 v45.h, v2.l
	v_add3_u32 v30, v30, v47, 0x7fff
	v_and_b32_e32 v47, 1, v48
	v_mov_b16_e32 v30.l, v29.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v29, 1, v45
	v_mov_b16_e32 v45.l, v25.h
	v_add3_u32 v26, v26, v47, 0x7fff
	v_mov_b16_e32 v47.l, v24.h
	v_mov_b16_e32 v47.h, v2.l
	v_add3_u32 v27, v27, v29, 0x7fff
	v_and_b32_e32 v29, 1, v45
	v_mov_b16_e32 v27.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v21, v21, v21 :: v_dual_and_b32 v26, 1, v47
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v45.l, v22.h
	v_add3_u32 v25, v25, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v24, v26, 0x7fff
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v2.l
	v_and_b32_e32 v29, 1, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v25.l, v24.h
	v_and_b32_e32 v24, 1, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v22, v22, v29, 0x7fff
	v_mov_b16_e32 v26.l, v19.h
	v_mov_b16_e32 v29.l, v18.h
	v_mov_b16_e32 v29.h, v2.l
	v_add3_u32 v21, v21, v24, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_and_b32_e32 v24, 1, v26
	v_mov_b16_e32 v26.l, v16.h
	v_and_b32_e32 v22, 1, v29
	v_cndmask_b32_e32 v29, v42, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v19, v24, 0x7fff
	v_and_b32_e32 v24, 1, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v18, v18, v22, 0x7fff
	v_mov_b16_e32 v22.l, v15.h
	v_mov_b16_e32 v22.h, v2.l
	v_mov_b16_e32 v26.l, v10.h
	v_add3_u32 v16, v16, v24, 0x7fff
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e32 v24.l, v12.h
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e32 v22.l, v14.h
	v_mov_b16_e32 v24.h, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v15, v18, 0x7fff
	v_and_b32_e32 v18, 1, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v22, 1, v24
	v_mov_b16_e32 v24.l, v11.h
	v_mov_b16_e32 v15.l, v16.h
	v_and_b32_e32 v16, 1, v26
	v_add3_u32 v14, v14, v18, 0x7fff
	v_add3_u32 v12, v12, v22, 0x7fff
	v_and_b32_e32 v18, 1, v24
	v_mov_b16_e32 v12.l, v8.h
	v_add3_u32 v10, v10, v16, 0x7fff
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v16.h, v2.l
	v_mov_b16_e32 v14.l, v12.h
	v_add3_u32 v11, v11, v18, 0x7fff
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v2.l
	v_mov_b16_e32 v12.h, v2.l
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v22.l, v5.h
	v_mov_b16_e32 v22.h, v2.l
	v_and_b32_e32 v2, 1, v18
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v7, v7, v16, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_and_b32_e32 v10, 1, v22
	v_add3_u32 v2, v6, v2, 0x7fff
	v_add3_u32 v6, v8, v12, 0x7fff
	v_mov_b16_e32 v6.l, v7.h
	v_cndmask_b32_e32 v7, v17, v9, vcc_lo
	v_add3_u32 v5, v5, v10, 0x7fff
	v_mov_b16_e32 v5.l, v2.h
	v_cndmask_b32_e32 v2, v13, v4, vcc_lo
	v_cndmask_b32_e32 v4, v4, v13, vcc_lo
	v_cndmask_b32_e32 v8, v9, v17, vcc_lo
	v_dual_cndmask_b32 v16, v36, v33 :: v_dual_cndmask_b32 v17, v33, v36
	v_cndmask_b32_e32 v36, v15, v21, vcc_lo
	v_cndmask_b32_e32 v24, v37, v34, vcc_lo
	v_dual_cndmask_b32 v26, v34, v37 :: v_dual_cndmask_b32 v15, v21, v15
	v_cndmask_b32_e32 v37, v6, v14, vcc_lo
	v_cndmask_b32_e32 v6, v14, v6, vcc_lo
	v_mov_b32_e32 v14, 0x5410
	v_dual_mov_b32 v21, 0x7632 :: v_dual_cndmask_b32 v12, v31, v23
	v_dual_cndmask_b32 v13, v23, v31 :: v_dual_cndmask_b32 v22, v40, v38
	v_dual_cndmask_b32 v23, v38, v40 :: v_dual_cndmask_b32 v38, v5, v11
	v_cndmask_b32_e32 v5, v11, v5, vcc_lo
	v_permlanex16_b32 v11, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v4, 0x1054, v14, vcc_lo
	v_dual_cndmask_b32 v14, 0x3276, v21 :: v_dual_cndmask_b32 v9, v28, v20
	v_cndmask_b32_e32 v10, v20, v28, vcc_lo
	v_cndmask_b32_e32 v18, v35, v32, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e32 v20, v32, v35, vcc_lo
	v_dual_cndmask_b32 v32, v39, v41 :: v_dual_cndmask_b32 v33, v30, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v14, 0x760076, v14
	v_cndmask_b32_e32 v30, v46, v30, vcc_lo
	v_cndmask_b32_e32 v34, v27, v43, vcc_lo
	v_cndmask_b32_e32 v27, v43, v27, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v14, v14, 4, v14
	v_dual_cndmask_b32 v28, v44, v42 :: v_dual_cndmask_b32 v31, v41, v39
	v_cndmask_b32_e32 v35, v19, v25, vcc_lo
	v_cndmask_b32_e32 v19, v25, v19, vcc_lo
	v_permlanex16_b32 v8, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v23, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v32, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v4
	v_permlanex16_b32 v13, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x7060706, v14
	v_permlanex16_b32 v27, v27, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v11, v2, v32
	v_perm_b32 v5, v11, v2, v39
	v_perm_b32 v6, v8, v7, v32
	v_perm_b32 v7, v8, v7, v39
	v_perm_b32 v8, v10, v9, v32
	v_perm_b32 v9, v10, v9, v39
	v_perm_b32 v10, v13, v12, v32
	v_perm_b32 v11, v13, v12, v39
	v_perm_b32 v12, v17, v16, v32
	v_perm_b32 v13, v17, v16, v39
	v_perm_b32 v14, v20, v18, v32
	v_perm_b32 v15, v20, v18, v39
	v_perm_b32 v16, v21, v22, v32
	v_perm_b32 v17, v21, v22, v39
	v_perm_b32 v18, v23, v24, v32
	v_perm_b32 v19, v23, v24, v39
	v_perm_b32 v20, v25, v28, v32
	v_perm_b32 v21, v25, v28, v39
	v_perm_b32 v24, v29, v33, v32
	v_perm_b32 v25, v29, v33, v39
	v_and_b32_e32 v33, 0x1e0, v0
	v_perm_b32 v22, v26, v31, v32
	v_perm_b32 v23, v26, v31, v39
	v_perm_b32 v26, v27, v34, v32
	v_perm_b32 v27, v27, v34, v39
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v34, v3, v1, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_perm_b32 v28, v30, v35, v32
	v_perm_b32 v29, v30, v35, v39
	v_perm_b32 v30, v40, v36, v32
	v_add_nc_u32_e32 v3, 32, v34
	v_perm_b32 v0, v41, v37, v32
	v_perm_b32 v2, v42, v38, v32
	v_add_nc_u32_e32 v32, 64, v34
	v_cndmask_b32_e32 v33, 0x80000000, v34, vcc_lo
	v_cndmask_b32_e32 v35, 0x80000000, v3, vcc_lo
	s_mov_b32 s2, s6
	v_perm_b32 v31, v40, v36, v39
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[4:7], v33, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v35, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v32, s[0:3], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v34
	v_add_nc_u32_e32 v5, 0x80, v34
	v_add_nc_u32_e32 v6, 0xa0, v34
	v_add_nc_u32_e32 v7, 0xc0, v34
	v_add_nc_u32_e32 v8, 0xe0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_perm_b32 v3, v42, v38, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_perm_b32 v1, v41, v37, v39
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[0:3], 0 offen
	buffer_store_b128 v[20:23], v5, s[0:3], 0 offen
	buffer_store_b128 v[24:27], v6, s[0:3], 0 offen
	buffer_store_b128 v[28:31], v7, s[0:3], 0 offen
	buffer_store_b128 v[0:3], v8, s[0:3], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 233
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 233
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33568
; TotalNumSgprs: 50
; NumVgprs: 233
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 233
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     233
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
