	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v27, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v17, 31, v0
	s_load_b64 s[40:41], s[0:1], 0x20
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v28, 0x180, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v7, 3, v0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v8, 4, v28
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v40, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v8, v8, v0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s7, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s8, s9, s7
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s8, 4
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s16
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s18
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v34, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v96, 1, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s17, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v27
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v102, 0, v7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s35, v3, v[1:2]
	.loc	1 166 26 is_stmt 0              ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v95, v0, 4, 1
	v_or_b32_e32 v101, 0x3f0, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s17, s17, s10
	v_or_b32_e32 v99, 0x7f0, v0
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s16
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s6, s18
	s_cmp_ge_u32 s6, s18
	v_or_b32_e32 v98, 0xbf0, v0
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s6, s18
	v_or_b32_e32 v97, 0xff0, v0
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s6, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s18, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s42, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s16
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s19, s3, 5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s19, v3
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s19, v17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s42, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v6
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_or_b32_e32 v6, s34, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s6, s20, s3
.Ltmp19:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s42, v5
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 32, v5
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s6, s6, 6
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, v6, s42, v[5:6]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s20, 64
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s35, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s7, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s21, s33, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[4:5], v4, s[24:27], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v94, 62, v3
	v_or_b32_e32 v93, 0x7e, v3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v103, 0, v8
	v_add_nc_u32_e32 v100, 0, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s6, -1
	s_mov_b32 s16, 0
	s_mov_b64 s[4:5], s[14:15]
	s_cmpk_lt_i32 s20, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v103, v6 offset:4096
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v102, v[4:5]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s43, s19, 32
	v_sub_nc_u32_e32 v104, s42, v3
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v3, s43, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v4, 24, v4
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v5, 1, v93
	v_mul_lo_u32 v3, s35, v3
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v9, s34, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v27, 5, v4
	s_lshl_b32 s0, s17, 8
	s_lshl_b32 s15, s18, 8
	v_subrev_nc_u32_e32 v105, s0, v5
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v5, 1, v95
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v10, 1, v94
	v_mul_lo_u32 v9, s6, v9
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, s34, v2
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_add3_u32 v1, v3, s18, v1
	v_subrev_nc_u32_e32 v106, s0, v5
	v_subrev_nc_u32_e32 v107, s0, v10
	s_lshl_b32 s0, s17, 7
	v_mad_u64_u32 v[18:19], null, s42, v2, v[17:18]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_subrev_nc_u32_e32 v109, s0, v1
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v110, 0, v4
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v111, 0, v6
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v112, 0, v7
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v113, 0, v8
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v108, 1, v9
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v114, 0, v101
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v115, 0, v99
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v116, 0, v98
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v117, 0, v97
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_max_i32 s14, s1, 1
	s_lshl_b32 s44, s35, 1
	s_lshl_b32 s45, s35, 5
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v9, s43, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s14, -1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s42, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, s43, v18
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s43, v104
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s43, s43, 32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v118, v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:640
	ds_load_u8 v10, v100 offset:512
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[23:24], v110 offset:4096
	ds_load_b64 v[25:26], v111 offset:4096
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s14, 0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v231, 0x80000000, v109, s0
	buffer_load_b64 v[231:232], v231, s[24:27], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v233, v108, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v108, 2, v108
	v_add_nc_u32_e32 v109, s45, v109
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:896
	ds_load_u8 v11, v100 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:128
	ds_load_u8 v12, v100
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v100 offset:1664
	ds_load_u8 v10, v100 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:384
	ds_load_u8 v13, v100 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v100 offset:1920
	ds_load_u8 v11, v100 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1152
	ds_load_u8 v12, v100 offset:1024
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v100 offset:2688
	ds_load_u8 v10, v100 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1408
	ds_load_u8 v13, v100 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v100 offset:2944
	ds_load_u8 v11, v100 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2176
	ds_load_u8 v12, v100 offset:2048
	v_lshl_or_b32 v120, v10, 16, v9
	ds_load_u8 v9, v100 offset:3712
	ds_load_u8 v10, v100 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2432
	ds_load_u8 v13, v100 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	ds_load_u8 v10, v100 offset:3968
	ds_load_u8 v11, v100 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3200
	ds_load_u8 v12, v100 offset:3072
	v_lshl_or_b32 v122, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3456
	ds_load_u8 v13, v100 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[19:20], v113 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[25:26], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[21:22], v112 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[121:122], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v126, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v125, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:656
	ds_load_u8 v10, v100 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v124, v11
	v_cvt_f32_i32_e32 v123, v12
	v_cvt_f32_i32_e32 v122, v13
	v_cvt_f32_i32_e32 v121, v14
	v_cvt_f32_i32_e32 v120, v15
	v_cvt_f32_i32_e32 v119, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v229, s15, v105
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v105, s44, v105
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v229, v229, s[36:39], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:912
	ds_load_u8 v11, v100 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:16
	ds_load_u8 v12, v100 offset:144
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v100 offset:1680
	ds_load_u8 v10, v100 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v100 offset:400
	ds_load_u8 v13, v100 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v12, 16, v11
	ds_load_u8 v10, v100 offset:1936
	ds_load_u8 v11, v100 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1168
	ds_load_u8 v12, v100 offset:1040
	v_lshl_or_b32 v130, v10, 16, v9
	ds_load_u8 v9, v100 offset:2704
	ds_load_u8 v10, v100 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1424
	ds_load_u8 v13, v100 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v12, 16, v11
	ds_load_u8 v10, v100 offset:2960
	ds_load_u8 v11, v100 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2192
	ds_load_u8 v12, v100 offset:2064
	v_lshl_or_b32 v132, v10, 16, v9
	ds_load_u8 v9, v100 offset:3728
	ds_load_u8 v10, v100 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2448
	ds_load_u8 v13, v100 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v11
	ds_load_u8 v10, v100 offset:3984
	ds_load_u8 v11, v100 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3216
	ds_load_u8 v12, v100 offset:3088
	v_lshl_or_b32 v134, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3472
	ds_load_u8 v13, v100 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v134, v9
	v_cvt_f32_i32_e32 v133, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:672
	ds_load_u8 v10, v100 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v132, v11
	v_cvt_f32_i32_e32 v131, v12
	v_cvt_f32_i32_e32 v130, v13
	v_cvt_f32_i32_e32 v129, v14
	v_cvt_f32_i32_e32 v128, v15
	v_cvt_f32_i32_e32 v127, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:928
	ds_load_u8 v11, v100 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:32
	ds_load_u8 v12, v100 offset:160
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v100 offset:1696
	ds_load_u8 v10, v100 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v100 offset:416
	ds_load_u8 v13, v100 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v100 offset:1952
	ds_load_u8 v11, v100 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1184
	ds_load_u8 v12, v100 offset:1056
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v100 offset:2720
	ds_load_u8 v10, v100 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1440
	ds_load_u8 v13, v100 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	ds_load_u8 v10, v100 offset:2976
	ds_load_u8 v11, v100 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2208
	ds_load_u8 v12, v100 offset:2080
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v100 offset:3744
	ds_load_u8 v10, v100 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2464
	ds_load_u8 v13, v100 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	ds_load_u8 v10, v100 offset:4000
	ds_load_u8 v11, v100 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3232
	ds_load_u8 v12, v100 offset:3104
	v_lshl_or_b32 v142, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3488
	ds_load_u8 v13, v100 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v142, v9
	v_cvt_f32_i32_e32 v141, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:688
	ds_load_u8 v10, v100 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v11
	v_cvt_f32_i32_e32 v139, v12
	v_cvt_f32_i32_e32 v138, v13
	v_cvt_f32_i32_e32 v137, v14
	v_cvt_f32_i32_e32 v136, v15
	v_cvt_f32_i32_e32 v135, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:944
	ds_load_u8 v11, v100 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:48
	ds_load_u8 v12, v100 offset:176
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v100 offset:1712
	ds_load_u8 v10, v100 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v100 offset:432
	ds_load_u8 v13, v100 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v100 offset:1968
	ds_load_u8 v11, v100 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1200
	ds_load_u8 v12, v100 offset:1072
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v100 offset:2736
	ds_load_u8 v10, v100 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1456
	ds_load_u8 v13, v100 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	ds_load_u8 v10, v100 offset:2992
	ds_load_u8 v11, v100 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2224
	ds_load_u8 v12, v100 offset:2096
	v_lshl_or_b32 v148, v10, 16, v9
	ds_load_u8 v9, v100 offset:3760
	ds_load_u8 v10, v100 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2480
	ds_load_u8 v13, v100 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	ds_load_u8 v10, v100 offset:4016
	ds_load_u8 v11, v100 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3248
	ds_load_u8 v12, v100 offset:3120
	v_lshl_or_b32 v150, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3504
	ds_load_u8 v13, v100 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v150, v9
	v_cvt_f32_i32_e32 v149, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:704
	ds_load_u8 v10, v100 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v148, v11
	v_cvt_f32_i32_e32 v147, v12
	v_cvt_f32_i32_e32 v146, v13
	v_cvt_f32_i32_e32 v145, v14
	v_cvt_f32_i32_e32 v144, v15
	v_cvt_f32_i32_e32 v143, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:960
	ds_load_u8 v11, v100 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:192
	ds_load_u8 v12, v100 offset:64
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v100 offset:1728
	ds_load_u8 v10, v100 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:448
	ds_load_u8 v13, v100 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v100 offset:1984
	ds_load_u8 v11, v100 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1216
	ds_load_u8 v12, v100 offset:1088
	v_lshl_or_b32 v154, v10, 16, v9
	ds_load_u8 v9, v100 offset:2752
	ds_load_u8 v10, v100 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1472
	ds_load_u8 v13, v100 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	ds_load_u8 v10, v100 offset:3008
	ds_load_u8 v11, v100 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2240
	ds_load_u8 v12, v100 offset:2112
	v_lshl_or_b32 v156, v10, 16, v9
	ds_load_u8 v9, v100 offset:3776
	ds_load_u8 v10, v100 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2496
	ds_load_u8 v13, v100 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	ds_load_u8 v10, v100 offset:4032
	ds_load_u8 v11, v100 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3264
	ds_load_u8 v12, v100 offset:3136
	v_lshl_or_b32 v158, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3520
	ds_load_u8 v13, v100 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v158, v9
	v_cvt_f32_i32_e32 v157, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:720
	ds_load_u8 v10, v100 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v156, v11
	v_cvt_f32_i32_e32 v155, v12
	v_cvt_f32_i32_e32 v154, v13
	v_cvt_f32_i32_e32 v153, v14
	v_cvt_f32_i32_e32 v152, v15
	v_cvt_f32_i32_e32 v151, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:976
	ds_load_u8 v11, v100 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:208
	ds_load_u8 v12, v100 offset:80
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v100 offset:1744
	ds_load_u8 v10, v100 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:464
	ds_load_u8 v13, v100 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v100 offset:2000
	ds_load_u8 v11, v100 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1232
	ds_load_u8 v12, v100 offset:1104
	v_lshl_or_b32 v162, v10, 16, v9
	ds_load_u8 v9, v100 offset:2768
	ds_load_u8 v10, v100 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1488
	ds_load_u8 v13, v100 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	ds_load_u8 v10, v100 offset:3024
	ds_load_u8 v11, v100 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2256
	ds_load_u8 v12, v100 offset:2128
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v100 offset:3792
	ds_load_u8 v10, v100 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2512
	ds_load_u8 v13, v100 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	ds_load_u8 v10, v100 offset:4048
	ds_load_u8 v11, v100 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3280
	ds_load_u8 v12, v100 offset:3152
	v_lshl_or_b32 v166, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3536
	ds_load_u8 v13, v100 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v166, v9
	v_cvt_f32_i32_e32 v165, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:736
	ds_load_u8 v10, v100 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v164, v11
	v_cvt_f32_i32_e32 v163, v12
	v_cvt_f32_i32_e32 v162, v13
	v_cvt_f32_i32_e32 v161, v14
	v_cvt_f32_i32_e32 v160, v15
	v_cvt_f32_i32_e32 v159, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:992
	ds_load_u8 v11, v100 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:224
	ds_load_u8 v12, v100 offset:96
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v100 offset:1760
	ds_load_u8 v10, v100 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:480
	ds_load_u8 v13, v100 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v100 offset:2016
	ds_load_u8 v11, v100 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1248
	ds_load_u8 v12, v100 offset:1120
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v100 offset:2784
	ds_load_u8 v10, v100 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:1504
	ds_load_u8 v13, v100 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v100 offset:3040
	ds_load_u8 v11, v100 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:2272
	ds_load_u8 v12, v100 offset:2144
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v100 offset:3808
	ds_load_u8 v10, v100 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:2528
	ds_load_u8 v13, v100 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	ds_load_u8 v10, v100 offset:4064
	ds_load_u8 v11, v100 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:3296
	ds_load_u8 v12, v100 offset:3168
	v_lshl_or_b32 v174, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v100 offset:3552
	ds_load_u8 v13, v100 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v174, v9
	v_cvt_f32_i32_e32 v173, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v100 offset:240
	ds_load_u8 v10, v100 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v172, v11
	v_cvt_f32_i32_e32 v171, v12
	v_cvt_f32_i32_e32 v170, v13
	v_cvt_f32_i32_e32 v169, v14
	v_cvt_f32_i32_e32 v168, v15
	v_cvt_f32_i32_e32 v167, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v100 offset:496
	ds_load_u8 v11, v100 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:752
	ds_load_u8 v12, v100 offset:624
	v_lshl_or_b32 v175, v10, 16, v9
	ds_load_u8 v9, v100 offset:1264
	ds_load_u8 v10, v100 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v114
	ds_load_u8 v13, v100 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v12, 16, v11
	ds_load_u8 v10, v100 offset:1520
	ds_load_u8 v11, v100 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v100 offset:1776
	ds_load_u8 v12, v100 offset:1648
	v_lshl_or_b32 v177, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115
	ds_load_u8 v13, v100 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v100 offset:2288
	ds_load_u8 v24, v100 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v100 offset:2544
	ds_load_u8 v25, v100 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v100 offset:2800
	ds_load_u8 v26, v100 offset:2672
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v116
	ds_load_u8 v175, v100 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v175, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v100 offset:3312
	ds_load_u8 v22, v100 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v100 offset:3568
	ds_load_u8 v23, v100 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v100 offset:3824
	ds_load_u8 v24, v100 offset:3696
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v117
	ds_load_u8 v25, v100 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, s15, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v9
	v_cvt_f32_i32_e32 v21, v10
	v_cvt_f32_i32_e32 v20, v11
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v182, v13, s[36:39], 0 offen
	v_add_nc_u32_e32 v13, s15, v106
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v230, v13, s[36:39], 0 offen
	buffer_load_u16 v228, v13, s[36:39], 0 offen offset:4
	buffer_load_u16 v227, v13, s[36:39], 0 offen offset:8
	buffer_load_u16 v226, v13, s[36:39], 0 offen offset:12
	buffer_load_u16 v225, v13, s[36:39], 0 offen offset:16
	buffer_load_u16 v224, v13, s[36:39], 0 offen offset:20
	buffer_load_u16 v223, v13, s[36:39], 0 offen offset:24
	buffer_load_u16 v222, v13, s[36:39], 0 offen offset:28
	buffer_load_u16 v221, v13, s[36:39], 0 offen offset:32
	buffer_load_u16 v220, v13, s[36:39], 0 offen offset:36
	buffer_load_u16 v219, v13, s[36:39], 0 offen offset:40
	buffer_load_u16 v218, v13, s[36:39], 0 offen offset:44
	buffer_load_u16 v217, v13, s[36:39], 0 offen offset:48
	buffer_load_u16 v216, v13, s[36:39], 0 offen offset:52
	buffer_load_u16 v215, v13, s[36:39], 0 offen offset:56
	buffer_load_u16 v214, v13, s[36:39], 0 offen offset:60
	buffer_load_u16 v213, v13, s[36:39], 0 offen offset:64
	buffer_load_u16 v212, v13, s[36:39], 0 offen offset:68
	buffer_load_u16 v211, v13, s[36:39], 0 offen offset:72
	buffer_load_u16 v210, v13, s[36:39], 0 offen offset:76
	buffer_load_u16 v209, v13, s[36:39], 0 offen offset:80
	buffer_load_u16 v208, v13, s[36:39], 0 offen offset:84
	buffer_load_u16 v207, v13, s[36:39], 0 offen offset:88
	buffer_load_u16 v206, v13, s[36:39], 0 offen offset:92
	buffer_load_u16 v205, v13, s[36:39], 0 offen offset:96
	buffer_load_u16 v204, v13, s[36:39], 0 offen offset:100
	buffer_load_u16 v203, v13, s[36:39], 0 offen offset:104
	buffer_load_u16 v202, v13, s[36:39], 0 offen offset:108
	buffer_load_u16 v201, v13, s[36:39], 0 offen offset:112
	buffer_load_u16 v200, v13, s[36:39], 0 offen offset:116
	buffer_load_u16 v199, v13, s[36:39], 0 offen offset:120
	buffer_load_u16 v198, v13, s[36:39], 0 offen offset:128
	s_clause 0x1d
	buffer_load_u16 v197, v13, s[36:39], 0 offen offset:132
	buffer_load_u16 v196, v13, s[36:39], 0 offen offset:136
	buffer_load_u16 v195, v13, s[36:39], 0 offen offset:140
	buffer_load_u16 v194, v13, s[36:39], 0 offen offset:144
	buffer_load_u16 v193, v13, s[36:39], 0 offen offset:148
	buffer_load_u16 v192, v13, s[36:39], 0 offen offset:152
	buffer_load_u16 v191, v13, s[36:39], 0 offen offset:156
	buffer_load_u16 v190, v13, s[36:39], 0 offen offset:160
	buffer_load_u16 v189, v13, s[36:39], 0 offen offset:164
	buffer_load_u16 v188, v13, s[36:39], 0 offen offset:168
	buffer_load_u16 v187, v13, s[36:39], 0 offen offset:172
	buffer_load_u16 v186, v13, s[36:39], 0 offen offset:176
	buffer_load_u16 v185, v13, s[36:39], 0 offen offset:180
	buffer_load_u16 v184, v13, s[36:39], 0 offen offset:184
	buffer_load_u16 v183, v13, s[36:39], 0 offen offset:188
	buffer_load_u16 v181, v13, s[36:39], 0 offen offset:192
	buffer_load_u16 v180, v13, s[36:39], 0 offen offset:196
	buffer_load_u16 v179, v13, s[36:39], 0 offen offset:200
	buffer_load_u16 v178, v13, s[36:39], 0 offen offset:204
	buffer_load_u16 v177, v13, s[36:39], 0 offen offset:208
	buffer_load_u16 v176, v13, s[36:39], 0 offen offset:212
	buffer_load_u16 v175, v13, s[36:39], 0 offen offset:216
	buffer_load_u16 v26, v13, s[36:39], 0 offen offset:220
	buffer_load_u16 v25, v13, s[36:39], 0 offen offset:224
	buffer_load_u16 v24, v13, s[36:39], 0 offen offset:228
	buffer_load_u16 v23, v13, s[36:39], 0 offen offset:232
	buffer_load_u16 v16, v13, s[36:39], 0 offen offset:236
	buffer_load_u16 v15, v13, s[36:39], 0 offen offset:240
	buffer_load_u16 v14, v13, s[36:39], 0 offen offset:244
	buffer_load_u16 v13, v13, s[36:39], 0 offen offset:248
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b64 v102, v[231:232]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b8 v103, v118 offset:4096
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v231, 16, v233
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v106, s44, v106
	v_add_nc_u32_e32 v107, s44, v107
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v126, v126, v231
	v_mul_f32_e32 v125, v125, v231
	v_mul_f32_e32 v124, v124, v231
	v_mul_f32_e32 v123, v123, v231
	v_mul_f32_e32 v122, v122, v231
	s_waitcnt vmcnt(61)
	v_dual_mul_f32 v121, v121, v231 :: v_dual_lshlrev_b32 v230, 16, v230
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(60)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v53, v126, v230 :: v_dual_lshlrev_b32 v126, 16, v228
	s_waitcnt vmcnt(59)
	v_dual_fmac_f32 v92, v125, v126 :: v_dual_lshlrev_b32 v125, 16, v227
	s_waitcnt vmcnt(58)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v91, v124, v125 :: v_dual_lshlrev_b32 v124, 16, v226
	s_waitcnt vmcnt(57)
	v_dual_fmac_f32 v90, v123, v124 :: v_dual_lshlrev_b32 v123, 16, v225
	s_waitcnt vmcnt(56)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v89, v122, v123 :: v_dual_lshlrev_b32 v122, 16, v224
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v88, v121, v122
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v120, v120, v231 :: v_dual_lshlrev_b32 v25, 16, v25
	v_mul_f32_e32 v22, v22, v231
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v121, 16, v223
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v119, v119, v231
	v_mul_f32_e32 v21, v21, v231
	v_mul_f32_e32 v20, v20, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v22, v25
	v_dual_fmac_f32 v87, v120, v121 :: v_dual_lshlrev_b32 v120, 16, v222
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v24
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v12, v231
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v86, v119, v120 :: v_dual_lshlrev_b32 v119, 16, v221
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v134, v231 :: v_dual_fmac_f32 v35, v21, v22
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v21, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v19, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v32, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v133, v231 :: v_dual_lshlrev_b32 v119, 16, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v20, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v11, v231 :: v_dual_lshlrev_b32 v12, 16, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v33, v19, v16 :: v_dual_fmac_f32 v84, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v132, v231 :: v_dual_fmac_f32 v31, v11, v12
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v10, v231 :: v_dual_lshlrev_b32 v11, 16, v13
	v_mul_f32_e32 v9, v9, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v83, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v131, v231 :: v_dual_lshlrev_b32 v119, 16, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v30, v10, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v229
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v82, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v130, v231 :: v_dual_fmac_f32 v29, v9, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v81, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v129, v231 :: v_dual_lshlrev_b32 v119, 16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v128, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v79, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v127, v231 :: v_dual_lshlrev_b32 v119, 16, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v78, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v213
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v142, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v77, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v141, v231 :: v_dual_lshlrev_b32 v119, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v140, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v139, v231 :: v_dual_lshlrev_b32 v119, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v74, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v138, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v137, v231 :: v_dual_lshlrev_b32 v119, 16, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v207
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v136, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v135, v231 :: v_dual_lshlrev_b32 v119, 16, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v70, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v205
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v150, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v149, v231 :: v_dual_lshlrev_b32 v119, 16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v148, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v67, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v147, v231 :: v_dual_lshlrev_b32 v119, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v201
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v146, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v145, v231 :: v_dual_lshlrev_b32 v119, 16, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v199
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v144, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v63, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v143, v231 :: v_dual_lshlrev_b32 v119, 16, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v62, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v198
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v158, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v157, v231 :: v_dual_lshlrev_b32 v119, 16, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v196
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v156, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v59, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v195
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v155, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v194
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v154, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v57, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v153, v231 :: v_dual_lshlrev_b32 v119, 16, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v56, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v192
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v152, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v55, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v191
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v151, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v54, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v190
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v166, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v52, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v189
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v165, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v51, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v164, v231 :: v_dual_lshlrev_b32 v119, 16, v188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v187
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v163, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v162, v231 :: v_dual_lshlrev_b32 v119, 16, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v48, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v185
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v161, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v47, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v160, v231 :: v_dual_lshlrev_b32 v119, 16, v184
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v183
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v159, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v174, v231 :: v_dual_lshlrev_b32 v119, 16, v181
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v44, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v180
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v173, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v43, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v179
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v172, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v42, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v178
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v171, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v170, v231 :: v_dual_lshlrev_b32 v119, 16, v177
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v40, v120, v119 :: v_dual_lshlrev_b32 v119, 16, v176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v169, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v39, v120, v119
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v119, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v168, v231
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v120, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v119, v167, v231
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v119, v26
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow360
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v11, 0x1e0, v0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %._crit_edge._crit_edge
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s0, 0
	s_branch .LBB0_6
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr4
.LBB0_6:                                ; %Flow
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v100 offset:640
	ds_load_u8 v3, v100 offset:512
	ds_load_u8 v2, v100 offset:896
	ds_load_u8 v4, v100 offset:768
	ds_load_u8 v5, v100 offset:128
	ds_load_u8 v6, v100
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s16, 0
	v_add_nc_u32_e32 v98, 0, v98
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 24, v96
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v148, v100 offset:880
	ds_load_u8 v98, v98
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v97, 0, v97
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v147, v100 offset:624
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v12, v27, 5, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v7, v100 offset:384
	ds_load_u8 v144, v100 offset:112
	ds_load_u8 v145, v100 offset:496
	ds_load_u8 v146, v100 offset:752
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v100 offset:256
	ds_load_u8 v149, v100 offset:240
	ds_load_u8 v150, v100 offset:368
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v8, 0, v12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v99, 0, v99
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v14, v2, 16, v1
	ds_load_u8 v1, v100 offset:1664
	ds_load_u8 v2, v100 offset:1536
	ds_load_u8 v26, v100 offset:1552
	ds_load_u8 v151, v100 offset:1520
	ds_load_u8 v102, v100 offset:1680
	ds_load_u8 v152, v100 offset:1648
	ds_load_u8 v97, v97
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v8 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v4, 16, v3
	ds_load_u8 v2, v100 offset:1920
	ds_load_u8 v3, v100 offset:1792
	ds_load_u8 v103, v100 offset:1808
	ds_load_u8 v153, v100 offset:1776
	ds_load_u8 v104, v100 offset:1936
	ds_load_u8 v154, v100 offset:1904
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v100 offset:1152
	ds_load_u8 v4, v100 offset:1024
	ds_load_u8 v105, v100 offset:1040
	ds_load_u8 v138, v100 offset:992
	ds_load_u8 v106, v100 offset:1168
	ds_load_u8 v155, v100 offset:1136
	v_lshl_or_b32 v16, v2, 16, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v1, v12, 8, 0
	ds_load_b64 v[156:157], v1 offset:4096
	v_xad_u32 v1, v12, 16, 0
	v_xad_u32 v12, v12, 24, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v100 offset:1408
	ds_load_u8 v5, v100 offset:1280
	ds_load_u8 v107, v100 offset:1296
	ds_load_u8 v164, v100 offset:1264
	ds_load_u8 v108, v100 offset:1424
	ds_load_u8 v165, v100 offset:1392
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[158:159], v1 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v4, 16, v3
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[9:10], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v100 offset:2688
	ds_load_u8 v14, v100 offset:2560
	ds_load_u8 v109, v100 offset:2576
	ds_load_u8 v116, v100 offset:2592
	ds_load_u8 v166, v100 offset:2544
	ds_load_u8 v110, v100 offset:2704
	ds_load_u8 v117, v100 offset:2720
	ds_load_u8 v167, v100 offset:2672
	v_wmma_i32_16x16x16_iu4 v[18:25], v[15:16], v[156:157], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v100 offset:2944
	ds_load_u8 v15, v100 offset:2816
	ds_load_u8 v111, v100 offset:2832
	ds_load_u8 v118, v100 offset:2848
	ds_load_u8 v168, v100 offset:2800
	ds_load_u8 v112, v100 offset:2960
	ds_load_u8 v119, v100 offset:2976
	ds_load_u8 v169, v100 offset:2928
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v100 offset:2176
	ds_load_u8 v16, v100 offset:2048
	ds_load_u8 v113, v100 offset:2064
	ds_load_u8 v120, v100 offset:2080
	ds_load_u8 v139, v100 offset:2016
	ds_load_u8 v114, v100 offset:2192
	ds_load_u8 v121, v100 offset:2208
	ds_load_u8 v170, v100 offset:2160
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v169, v98, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v100 offset:2432
	ds_load_u8 v115, v100 offset:2304
	ds_load_u8 v122, v100 offset:2320
	ds_load_u8 v123, v100 offset:2336
	ds_load_u8 v171, v100 offset:2288
	ds_load_u8 v124, v100 offset:2448
	ds_load_u8 v125, v100 offset:2464
	ds_load_u8 v172, v100 offset:2416
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v115, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[158:159], v[18:25] neg_lo:[1,1,0]
	ds_load_u8 v13, v100 offset:3712
	ds_load_u8 v14, v100 offset:3584
	ds_load_u8 v115, v100 offset:3600
	ds_load_u8 v126, v100 offset:3616
	ds_load_u8 v127, v100 offset:3632
	ds_load_u8 v173, v100 offset:3568
	ds_load_u8 v128, v100 offset:3728
	ds_load_u8 v129, v100 offset:3744
	ds_load_u8 v130, v100 offset:3760
	ds_load_u8 v174, v100 offset:3696
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v100 offset:3968
	ds_load_u8 v15, v100 offset:3840
	ds_load_u8 v131, v100 offset:3856
	ds_load_u8 v132, v100 offset:3872
	ds_load_u8 v133, v100 offset:3888
	ds_load_u8 v175, v100 offset:3824
	ds_load_u8 v134, v100 offset:3984
	ds_load_u8 v135, v100 offset:4000
	ds_load_u8 v136, v100 offset:4016
	ds_load_u8 v176, v100 offset:3952
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v100 offset:3200
	ds_load_u8 v16, v100 offset:3072
	ds_load_u8 v137, v100 offset:3088
	ds_load_u8 v140, v100 offset:3104
	ds_load_u8 v141, v100 offset:3120
	ds_load_u8 v177, v100 offset:3040
	ds_load_u8 v142, v100 offset:3216
	ds_load_u8 v143, v100 offset:3232
	ds_load_u8 v162, v100 offset:3248
	ds_load_u8 v178, v100 offset:3184
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v97, v176, v97, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v100 offset:3456
	ds_load_u8 v160, v100 offset:3328
	ds_load_u8 v163, v100 offset:3344
	ds_load_u8 v179, v100 offset:3360
	ds_load_u8 v180, v100 offset:3376
	ds_load_u8 v181, v100 offset:3312
	ds_load_u8 v182, v100 offset:3472
	ds_load_u8 v183, v100 offset:3488
	ds_load_u8 v184, v100 offset:3504
	ds_load_u8 v185, v100 offset:3440
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v160, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0, v101
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v186, v15
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[160:161], v12 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[160:161], v[18:25] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v15, v21
	v_cvt_f32_i32_e32 v16, v22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v100 offset:528
	ds_load_u8 v22, v100 offset:656
	ds_load_u8 v187, v100 offset:672
	ds_load_u8 v188, v100 offset:688
	ds_load_u8 v189, v100 offset:704
	ds_load_u8 v190, v100 offset:720
	ds_load_u8 v191, v100 offset:736
	ds_load_u8 v192, v100 offset:544
	ds_load_u8 v193, v100 offset:560
	ds_load_u8 v194, v100 offset:576
	ds_load_u8 v195, v100 offset:592
	ds_load_u8 v196, v100 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v18
	v_cvt_f32_i32_e32 v18, v23
	v_cvt_f32_i32_e32 v13, v19
	v_cvt_f32_i32_e32 v19, v24
	v_cvt_f32_i32_e32 v14, v20
	v_cvt_f32_i32_e32 v20, v25
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	ds_load_u8 v22, v100 offset:784
	ds_load_u8 v23, v100 offset:912
	ds_load_u8 v197, v100 offset:928
	ds_load_u8 v198, v100 offset:944
	ds_load_u8 v199, v100 offset:960
	ds_load_u8 v200, v100 offset:976
	ds_load_u8 v201, v100 offset:800
	ds_load_u8 v202, v100 offset:816
	ds_load_u8 v203, v100 offset:832
	ds_load_u8 v204, v100 offset:848
	ds_load_u8 v205, v100 offset:864
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	ds_load_u8 v23, v100 offset:16
	ds_load_u8 v24, v100 offset:144
	ds_load_u8 v206, v100 offset:160
	ds_load_u8 v207, v100 offset:176
	ds_load_u8 v208, v100 offset:192
	ds_load_u8 v209, v100 offset:208
	ds_load_u8 v210, v100 offset:224
	ds_load_u8 v211, v100 offset:32
	ds_load_u8 v212, v100 offset:48
	ds_load_u8 v213, v100 offset:64
	ds_load_u8 v214, v100 offset:80
	ds_load_u8 v215, v100 offset:96
	v_lshl_or_b32 v22, v22, 16, v21
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	ds_load_u8 v24, v100 offset:272
	ds_load_u8 v25, v100 offset:400
	ds_load_u8 v216, v100 offset:416
	ds_load_u8 v217, v100 offset:432
	ds_load_u8 v218, v100 offset:448
	ds_load_u8 v219, v100 offset:464
	ds_load_u8 v220, v100 offset:480
	ds_load_u8 v221, v100 offset:288
	ds_load_u8 v222, v100 offset:304
	ds_load_u8 v223, v100 offset:320
	ds_load_u8 v224, v100 offset:336
	ds_load_u8 v225, v100 offset:352
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v24, v24, v25, 0xc0c0004
	v_perm_b32 v25, v105, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v21, v24, 16, v23
	v_perm_b32 v23, v26, v102, 0xc0c0004
	v_perm_b32 v24, v103, v104, 0xc0c0004
	v_perm_b32 v26, v107, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[101:108], v[21:22], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v24, v24, 16, v23
	v_lshl_or_b32 v23, v26, 16, v25
	v_perm_b32 v21, v109, v110, 0xc0c0004
	v_perm_b32 v22, v111, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[23:24], v[156:157], v[101:108] neg_lo:[1,1,0]
	v_perm_b32 v23, v113, v114, 0xc0c0004
	v_perm_b32 v24, v122, v124, 0xc0c0004
	v_lshl_or_b32 v22, v22, 16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v21, v24, 16, v23
	v_perm_b32 v23, v137, v142, 0xc0c0004
	v_perm_b32 v24, v163, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[101:108], v[21:22], v[158:159], v[101:108] neg_lo:[1,1,0]
	v_perm_b32 v21, v115, v128, 0xc0c0004
	v_perm_b32 v22, v131, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[101:108], v[21:22], v[160:161], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v21, v101
	v_cvt_f32_i32_e32 v24, v104
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v101, v192, v187, 0xc0c0004
	v_perm_b32 v104, v201, v197, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v105
	v_cvt_f32_i32_e32 v26, v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v105, v211, v206, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v221, v216, 0xc0c0004
	v_lshl_or_b32 v113, v104, 16, v101
	ds_load_u8 v101, v100 offset:1568
	ds_load_u8 v104, v100 offset:1696
	ds_load_u8 v122, v100 offset:1712
	ds_load_u8 v124, v100 offset:1728
	ds_load_u8 v134, v100 offset:1744
	ds_load_u8 v142, v100 offset:1760
	ds_load_u8 v128, v100 offset:1584
	ds_load_u8 v131, v100 offset:1600
	ds_load_u8 v137, v100 offset:1616
	ds_load_u8 v163, v100 offset:1632
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v102
	v_cvt_f32_i32_e32 v102, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v112, v106, 16, v105
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v103
	v_cvt_f32_i32_e32 v103, v108
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v101, v101, v104, 0xc0c0004
	ds_load_u8 v104, v100 offset:1824
	ds_load_u8 v105, v100 offset:1952
	ds_load_u8 v182, v100 offset:1968
	ds_load_u8 v187, v100 offset:1984
	ds_load_u8 v192, v100 offset:2000
	ds_load_u8 v197, v100 offset:1840
	ds_load_u8 v201, v100 offset:1856
	ds_load_u8 v206, v100 offset:1872
	ds_load_u8 v211, v100 offset:1888
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v104, v104, v105, 0xc0c0004
	ds_load_u8 v105, v100 offset:1056
	ds_load_u8 v106, v100 offset:1184
	ds_load_u8 v216, v100 offset:1200
	ds_load_u8 v221, v100 offset:1216
	ds_load_u8 v226, v100 offset:1232
	ds_load_u8 v227, v100 offset:1248
	ds_load_u8 v228, v100 offset:1072
	ds_load_u8 v229, v100 offset:1088
	ds_load_u8 v230, v100 offset:1104
	ds_load_u8 v231, v100 offset:1120
	v_lshl_or_b32 v115, v104, 16, v101
	v_perm_b32 v101, v116, v117, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v105, v106, 0xc0c0004
	ds_load_u8 v106, v100 offset:1312
	ds_load_u8 v107, v100 offset:1440
	ds_load_u8 v232, v100 offset:1456
	ds_load_u8 v233, v100 offset:1472
	ds_load_u8 v234, v100 offset:1488
	ds_load_u8 v235, v100 offset:1504
	ds_load_u8 v236, v100 offset:1328
	ds_load_u8 v237, v100 offset:1344
	ds_load_u8 v238, v100 offset:1360
	ds_load_u8 v239, v100 offset:1376
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v106, v106, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v114, v106, 16, v105
	v_wmma_i32_16x16x16_iu4 v[104:111], v[112:113], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v112, v118, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[104:111], v[114:115], v[156:157], v[104:111] neg_lo:[1,1,0]
	v_perm_b32 v114, v120, v121, 0xc0c0004
	v_perm_b32 v115, v123, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v113, v112, 16, v101
	v_perm_b32 v101, v126, v129, 0xc0c0004
	v_lshl_or_b32 v112, v115, 16, v114
	v_perm_b32 v114, v140, v143, 0xc0c0004
	v_perm_b32 v115, v179, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[112:113], v[158:159], v[104:111] neg_lo:[1,1,0]
	v_perm_b32 v112, v132, v135, 0xc0c0004
	v_lshl_or_b32 v113, v112, 16, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v112, v115, 16, v114
	v_perm_b32 v101, v193, v188, 0xc0c0004
	v_perm_b32 v114, v222, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[104:111], v[112:113], v[160:161], v[104:111] neg_lo:[1,1,0]
	v_perm_b32 v112, v202, v198, 0xc0c0004
	v_perm_b32 v113, v212, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v121, v112, 16, v101
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v120, v114, 16, v113
	v_perm_b32 v101, v128, v122, 0xc0c0004
	v_perm_b32 v112, v197, v182, 0xc0c0004
	v_perm_b32 v113, v228, v216, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v114, v236, v232, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v123, v112, 16, v101
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v122, v114, 16, v113
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[9:10], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v101, v100 offset:2608
	ds_load_u8 v120, v100 offset:2736
	ds_load_u8 v132, v100 offset:2752
	ds_load_u8 v140, v100 offset:2768
	ds_load_u8 v179, v100 offset:2784
	ds_load_u8 v135, v100 offset:2624
	ds_load_u8 v143, v100 offset:2640
	ds_load_u8 v182, v100 offset:2656
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[156:157], v[112:119] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v101, v101, v120, 0xc0c0004
	ds_load_u8 v120, v100 offset:2864
	ds_load_u8 v121, v100 offset:2992
	ds_load_u8 v183, v100 offset:3008
	ds_load_u8 v188, v100 offset:3024
	ds_load_u8 v193, v100 offset:2880
	ds_load_u8 v197, v100 offset:2896
	ds_load_u8 v198, v100 offset:2912
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v120, v120, v121, 0xc0c0004
	ds_load_u8 v121, v100 offset:2096
	ds_load_u8 v122, v100 offset:2224
	ds_load_u8 v202, v100 offset:2240
	ds_load_u8 v207, v100 offset:2256
	ds_load_u8 v212, v100 offset:2272
	ds_load_u8 v216, v100 offset:2112
	ds_load_u8 v217, v100 offset:2128
	ds_load_u8 v222, v100 offset:2144
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v122, v121, v122, 0xc0c0004
	ds_load_u8 v121, v100 offset:2352
	ds_load_u8 v123, v100 offset:2480
	ds_load_u8 v228, v100 offset:2496
	ds_load_u8 v232, v100 offset:2512
	ds_load_u8 v236, v100 offset:2528
	ds_load_u8 v240, v100 offset:2368
	ds_load_u8 v241, v100 offset:2384
	ds_load_u8 v242, v100 offset:2400
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v123, v121, v123, 0xc0c0004
	v_lshl_or_b32 v121, v120, 16, v101
	v_perm_b32 v101, v127, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v120, v123, 16, v122
	v_perm_b32 v122, v141, v162, 0xc0c0004
	v_perm_b32 v123, v180, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[158:159], v[112:119] neg_lo:[1,1,0]
	v_perm_b32 v120, v133, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v121, v120, 16, v101
	v_lshl_or_b32 v120, v123, 16, v122
	v_perm_b32 v101, v194, v189, 0xc0c0004
	v_perm_b32 v122, v223, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[160:161], v[112:119] neg_lo:[1,1,0]
	v_perm_b32 v120, v203, v199, 0xc0c0004
	v_perm_b32 v121, v213, v208, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v129, v120, 16, v101
	v_lshl_or_b32 v128, v122, 16, v121
	v_perm_b32 v101, v131, v124, 0xc0c0004
	v_perm_b32 v120, v201, v187, 0xc0c0004
	v_perm_b32 v121, v229, v221, 0xc0c0004
	v_perm_b32 v122, v237, v233, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v131, v120, 16, v101
	v_perm_b32 v101, v135, v132, 0xc0c0004
	v_lshl_or_b32 v130, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[120:127], v[128:129], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v128, v193, v183, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[120:127], v[130:131], v[156:157], v[120:127] neg_lo:[1,1,0]
	v_perm_b32 v130, v216, v202, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v240, v228, 0xc0c0004
	v_lshl_or_b32 v129, v128, 16, v101
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v128, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[128:129], v[158:159], v[120:127] neg_lo:[1,1,0]
	ds_load_u8 v101, v100 offset:3648
	ds_load_u8 v128, v100 offset:3776
	ds_load_u8 v141, v100 offset:3792
	ds_load_u8 v180, v100 offset:3808
	ds_load_u8 v162, v100 offset:3664
	ds_load_u8 v183, v100 offset:3680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v101, v128, 0xc0c0004
	ds_load_u8 v128, v100 offset:4032
	ds_load_u8 v129, v100 offset:3904
	ds_load_u8 v184, v100 offset:3920
	ds_load_u8 v187, v100 offset:3936
	ds_load_u8 v189, v100 offset:4048
	ds_load_u8 v193, v100 offset:4064
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v100 offset:3136
	ds_load_u8 v130, v100 offset:3264
	ds_load_u8 v194, v100 offset:3280
	ds_load_u8 v199, v100 offset:3296
	ds_load_u8 v201, v100 offset:3152
	ds_load_u8 v202, v100 offset:3168
	v_lshl_or_b32 v101, v128, 16, v101
	v_perm_b32 v128, v214, v209, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v129, v129, v130, 0xc0c0004
	ds_load_u8 v130, v100 offset:3392
	ds_load_u8 v131, v100 offset:3520
	ds_load_u8 v203, v100 offset:3536
	ds_load_u8 v208, v100 offset:3552
	ds_load_u8 v213, v100 offset:3408
	ds_load_u8 v216, v100 offset:3424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v130, v131, 0xc0c0004
	v_perm_b32 v130, v230, v226, 0xc0c0004
	v_perm_b32 v131, v238, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v100, v100, 16, v129
	v_perm_b32 v129, v224, v219, 0xc0c0004
	v_lshl_or_b32 v136, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[100:101], v[160:161], v[120:127] neg_lo:[1,1,0]
	v_perm_b32 v100, v195, v190, 0xc0c0004
	v_perm_b32 v101, v204, v200, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v120, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v101, v101, 16, v100
	v_lshl_or_b32 v100, v129, 16, v128
	v_perm_b32 v128, v137, v134, 0xc0c0004
	v_perm_b32 v129, v206, v192, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v137, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[128:135], v[100:101], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v100, v143, v140, 0xc0c0004
	v_perm_b32 v101, v197, v188, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[128:135], v[136:137], v[156:157], v[128:135] neg_lo:[1,1,0]
	v_perm_b32 v136, v217, v207, 0xc0c0004
	v_perm_b32 v137, v241, v232, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v100
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v100, v137, 16, v136
	v_perm_b32 v136, v201, v194, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v137, v213, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[128:135], v[100:101], v[158:159], v[128:135] neg_lo:[1,1,0]
	v_perm_b32 v100, v162, v141, 0xc0c0004
	v_perm_b32 v101, v184, v189, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v100
	v_lshl_or_b32 v100, v137, 16, v136
	v_perm_b32 v136, v215, v210, 0xc0c0004
	v_perm_b32 v137, v225, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[128:135], v[100:101], v[160:161], v[128:135] neg_lo:[1,1,0]
	v_perm_b32 v100, v196, v191, 0xc0c0004
	v_perm_b32 v101, v205, v138, 0xc0c0004
	v_perm_b32 v138, v231, v227, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v101, v101, 16, v100
	v_lshl_or_b32 v100, v137, 16, v136
	v_perm_b32 v136, v163, v142, 0xc0c0004
	v_perm_b32 v137, v211, v139, 0xc0c0004
	v_perm_b32 v139, v239, v235, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v163, v137, 16, v136
	v_lshl_or_b32 v162, v139, 16, v138
	v_wmma_i32_16x16x16_iu4 v[136:143], v[100:101], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v100, v182, v179, 0xc0c0004
	v_perm_b32 v101, v198, v177, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v133, v133
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[136:143], v[162:163], v[156:157], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v162, v222, v212, 0xc0c0004
	v_perm_b32 v163, v242, v236, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v100
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v100, v163, 16, v162
	v_perm_b32 v162, v202, v199, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v216, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[136:143], v[100:101], v[158:159], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v100, v183, v180, 0xc0c0004
	v_perm_b32 v101, v187, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v101, 16, v100
	v_lshl_or_b32 v100, v163, 16, v162
	v_wmma_i32_16x16x16_iu4 v[136:143], v[100:101], v[160:161], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v101, v150, v145, 0xc0c0004
	ds_load_u8 v145, v99
	v_perm_b32 v100, v144, v149, 0xc0c0004
	v_perm_b32 v144, v147, v146, 0xc0c0004
	v_perm_b32 v146, v148, v186, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v99, v101, 16, v100
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v100, v146, 16, v144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v155, v164, 0xc0c0004
	v_perm_b32 v10, v165, v151, 0xc0c0004
	v_perm_b32 v99, v152, v153, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v154, v145, 0xc0c0004
	v_lshl_or_b32 v9, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v100, 16, v99
	v_perm_b32 v99, v167, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[156:157], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v170, v171, 0xc0c0004
	v_perm_b32 v10, v172, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v98, 16, v99
	v_perm_b32 v98, v174, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[158:159], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v178, v181, 0xc0c0004
	v_perm_b32 v10, v185, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v97, 16, v98
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v9, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_mov_b32_e32 v4, v96
.LBB0_8:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v10, s6, v27
	s_mul_i32 s0, s34, s6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s35
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s0, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v10, s1, v10, 1
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s3
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s5, s5, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v95, s0, v95, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v93, s0, v93, 1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_cndmask_b32_e64 v98, 0x80000000, v95, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v94, s0, v94, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v17, 2, v17
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v200, 7, v28
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s34, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v4, 60, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v17, v27, 9, v17
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v4, v11, 2, v4
	v_add_nc_u32_e32 v27, 0, v17
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v193, 0xe0, v95
	v_add_nc_u32_e32 v194, 0xe4, v95
	v_add_nc_u32_e32 v96, 4, v95
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v142, v142, v10 :: v_dual_add_nc_u32 v195, 0xe8, v95
	v_dual_mul_f32 v12, v12, v10 :: v_dual_add_nc_u32 v97, 8, v95
	v_dual_mul_f32 v105, v105, v10 :: v_dual_add_nc_u32 v154, 64, v95
	v_dual_mul_f32 v3, v3, v10 :: v_dual_add_nc_u32 v196, 0xec, v95
	v_dual_mul_f32 v14, v14, v10 :: v_dual_add_nc_u32 v99, 12, v95
	v_dual_mul_f32 v15, v15, v10 :: v_dual_add_nc_u32 v100, 16, v95
	v_dual_mul_f32 v16, v16, v10 :: v_dual_add_nc_u32 v101, 20, v95
	v_dual_mul_f32 v19, v19, v10 :: v_dual_add_nc_u32 v144, 24, v95
	v_dual_mul_f32 v18, v18, v10 :: v_dual_add_nc_u32 v145, 28, v95
	v_dual_mul_f32 v21, v21, v10 :: v_dual_add_nc_u32 v146, 32, v95
	v_dual_mul_f32 v20, v20, v10 :: v_dual_add_nc_u32 v147, 36, v95
	v_dual_mul_f32 v23, v23, v10 :: v_dual_add_nc_u32 v148, 40, v95
	v_dual_mul_f32 v22, v22, v10 :: v_dual_add_nc_u32 v149, 44, v95
	v_dual_mul_f32 v25, v25, v10 :: v_dual_add_nc_u32 v150, 48, v95
	v_dual_mul_f32 v24, v24, v10 :: v_dual_add_nc_u32 v151, 52, v95
	v_dual_mul_f32 v103, v103, v10 :: v_dual_add_nc_u32 v152, 56, v95
	v_dual_mul_f32 v26, v26, v10 :: v_dual_add_nc_u32 v153, 60, v95
	v_dual_mul_f32 v102, v102, v10 :: v_dual_add_nc_u32 v155, 0x44, v95
	v_dual_mul_f32 v107, v107, v10 :: v_dual_add_nc_u32 v156, 0x48, v95
	v_dual_mul_f32 v104, v104, v10 :: v_dual_add_nc_u32 v157, 0x4c, v95
	v_dual_mul_f32 v109, v109, v10 :: v_dual_add_nc_u32 v158, 0x50, v95
	v_dual_mul_f32 v106, v106, v10 :: v_dual_add_nc_u32 v159, 0x54, v95
	v_dual_mul_f32 v111, v111, v10 :: v_dual_add_nc_u32 v160, 0x58, v95
	v_dual_mul_f32 v108, v108, v10 :: v_dual_add_nc_u32 v161, 0x5c, v95
	v_dual_mul_f32 v113, v113, v10 :: v_dual_add_nc_u32 v162, 0x60, v95
	v_dual_mul_f32 v110, v110, v10 :: v_dual_add_nc_u32 v163, 0x64, v95
	v_dual_mul_f32 v115, v115, v10 :: v_dual_add_nc_u32 v164, 0x68, v95
	v_dual_mul_f32 v112, v112, v10 :: v_dual_add_nc_u32 v165, 0x6c, v95
	v_dual_mul_f32 v117, v117, v10 :: v_dual_add_nc_u32 v166, 0x70, v95
	v_dual_mul_f32 v114, v114, v10 :: v_dual_add_nc_u32 v167, 0x74, v95
	v_dual_mul_f32 v119, v119, v10 :: v_dual_add_nc_u32 v168, 0x78, v95
	v_dual_mul_f32 v116, v116, v10 :: v_dual_add_nc_u32 v169, 0x80, v95
	v_dual_mul_f32 v121, v121, v10 :: v_dual_add_nc_u32 v170, 0x84, v95
	v_dual_mul_f32 v118, v118, v10 :: v_dual_add_nc_u32 v171, 0x88, v95
	v_dual_mul_f32 v123, v123, v10 :: v_dual_add_nc_u32 v172, 0x8c, v95
	v_dual_mul_f32 v120, v120, v10 :: v_dual_add_nc_u32 v173, 0x90, v95
	v_dual_mul_f32 v125, v125, v10 :: v_dual_add_nc_u32 v174, 0x94, v95
	v_dual_mul_f32 v122, v122, v10 :: v_dual_add_nc_u32 v175, 0x98, v95
	v_dual_mul_f32 v127, v127, v10 :: v_dual_add_nc_u32 v176, 0x9c, v95
	v_dual_mul_f32 v124, v124, v10 :: v_dual_add_nc_u32 v177, 0xa0, v95
	v_dual_mul_f32 v129, v129, v10 :: v_dual_add_nc_u32 v178, 0xa4, v95
	v_dual_mul_f32 v126, v126, v10 :: v_dual_add_nc_u32 v179, 0xa8, v95
	v_dual_mul_f32 v131, v131, v10 :: v_dual_add_nc_u32 v180, 0xac, v95
	v_dual_mul_f32 v128, v128, v10 :: v_dual_add_nc_u32 v181, 0xb0, v95
	v_dual_mul_f32 v133, v133, v10 :: v_dual_add_nc_u32 v182, 0xb4, v95
	v_dual_mul_f32 v130, v130, v10 :: v_dual_add_nc_u32 v183, 0xb8, v95
	v_dual_mul_f32 v135, v135, v10 :: v_dual_add_nc_u32 v184, 0xbc, v95
	v_dual_mul_f32 v132, v132, v10 :: v_dual_add_nc_u32 v185, 0xc0, v95
	v_dual_mul_f32 v137, v137, v10 :: v_dual_add_nc_u32 v186, 0xc4, v95
	v_dual_mul_f32 v134, v134, v10 :: v_dual_add_nc_u32 v187, 0xc8, v95
	v_dual_mul_f32 v139, v139, v10 :: v_dual_add_nc_u32 v188, 0xcc, v95
	v_dual_mul_f32 v136, v136, v10 :: v_dual_add_nc_u32 v189, 0xd0, v95
	v_dual_mul_f32 v141, v141, v10 :: v_dual_add_nc_u32 v190, 0xd4, v95
	v_dual_mul_f32 v138, v138, v10 :: v_dual_add_nc_u32 v191, 0xd8, v95
	v_dual_mul_f32 v143, v143, v10 :: v_dual_add_nc_u32 v192, 0xdc, v95
	v_dual_mul_f32 v2, v2, v10 :: v_dual_add_nc_u32 v197, 0xf0, v95
	v_dual_mul_f32 v9, v9, v10 :: v_dual_add_nc_u32 v198, 0xf4, v95
	v_dual_mul_f32 v6, v6, v10 :: v_dual_add_nc_u32 v95, 0xf8, v95
	v_mul_f32_e32 v140, v140, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v1, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v13, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v196, 0x80000000, v196, s2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v198, 0x80000000, v198, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0xf
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v196, v196, s[4:7], 0 offen
	buffer_load_u16 v197, v197, s[4:7], 0 offen
	buffer_load_u16 v198, v198, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v96, v96, s[4:7], 0 offen
	buffer_load_u16 v97, v97, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v100, s[4:7], 0 offen
	buffer_load_u16 v101, v101, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	s_clause 0x7
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v160, v160, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	s_clause 0x1f
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
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
	buffer_load_u16 v184, v184, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	buffer_load_u16 v192, v192, s[4:7], 0 offen
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	s_clause 0x7
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v152, v152, s[4:7], 0 offen
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v8, v8, v10 :: v_dual_and_b32 v199, 0x7f, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v10 :: v_dual_lshlrev_b32 v0, 6, v0
	v_mul_f32_e32 v7, v7, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v98, 16, v98
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v97, 16, v97
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v99, 16, v99
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v12, v98, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v13, v96, v92
	v_fma_f32 v13, v14, v97, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v15, v99, v90
	v_fma_f32 v8, v8, v93, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v53, v10, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v97, v104, v154, v77
	v_fma_f32 v98, v105, v155, v76
	v_fma_f32 v99, v106, v156, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v77, v77, v97, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v16, v100, v89
	v_fma_f32 v100, v107, v157, v74
	v_fma_f32 v16, v18, v101, v88
	v_fma_f32 v101, v108, v158, v73
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v92, v12, s2
	v_cndmask_b32_e64 v76, v76, v98, s2
	v_cndmask_b32_e64 v8, v29, v8, s2
	v_xad_u32 v29, v17, 4, 0
	v_cndmask_b32_e64 v13, v91, v13, s2
	v_cndmask_b32_e64 v75, v75, v99, s2
	ds_store_2addr_b32 v27, v10, v77 offset1:32
	v_xad_u32 v10, v17, 8, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v19, v144, v87
	v_fma_f32 v19, v20, v145, v86
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v90, v14, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v185, 16, v185
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v105, v112, v162, v69
	v_fma_f32 v112, v120, v169, v61
	v_fma_f32 v120, v128, v177, v52
	v_fma_f32 v128, v136, v185, v44
	v_fma_f32 v106, v113, v163, v68
	v_fma_f32 v113, v121, v170, v60
	v_fma_f32 v121, v129, v178, v51
	v_fma_f32 v129, v137, v186, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v153, 16, v153
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v190, 16, v190
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v107, v114, v164, v67
	v_fma_f32 v114, v122, v171, v59
	v_fma_f32 v122, v130, v179, v50
	v_fma_f32 v130, v138, v187, v42
	v_fma_f32 v108, v115, v165, v66
	v_fma_f32 v115, v123, v172, v58
	v_fma_f32 v123, v131, v180, v49
	v_fma_f32 v131, v139, v188, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v112, s2
	v_cndmask_b32_e64 v44, v44, v128, s2
	v_cndmask_b32_e64 v60, v60, v113, s2
	v_cndmask_b32_e64 v43, v43, v129, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v21, v146, v85
	v_fma_f32 v21, v22, v147, v84
	v_fma_f32 v22, v23, v148, v83
	v_fma_f32 v23, v24, v149, v82
	v_fma_f32 v24, v25, v150, v81
	v_fma_f32 v25, v26, v151, v80
	v_fma_f32 v26, v102, v152, v79
	v_fma_f32 v96, v103, v153, v78
	v_fma_f32 v102, v109, v159, v72
	v_fma_f32 v103, v110, v160, v71
	v_fma_f32 v109, v116, v166, v65
	v_fma_f32 v110, v117, v167, v64
	v_fma_f32 v116, v124, v173, v57
	v_fma_f32 v117, v125, v174, v56
	v_fma_f32 v124, v132, v181, v48
	v_fma_f32 v125, v133, v182, v47
	v_fma_f32 v132, v140, v189, v40
	v_fma_f32 v133, v141, v190, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v114, s2
	v_cndmask_b32_e64 v42, v42, v130, s2
	v_cndmask_b32_e64 v74, v74, v100, s2
	v_cndmask_b32_e64 v58, v58, v115, s2
	v_cndmask_b32_e64 v41, v41, v131, s2
	ds_store_2addr_b32 v27, v61, v44 offset0:64 offset1:96
	ds_store_2addr_b32 v29, v12, v76 offset1:32
	v_xad_u32 v12, v17, 12, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v89, v15, s2
	v_cndmask_b32_e64 v73, v73, v101, s2
	ds_store_2addr_b32 v29, v60, v43 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v13, v75 offset1:32
	v_xad_u32 v13, v17, 16, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v104, v111, v161, v70
	v_fma_f32 v111, v118, v168, v63
	v_fma_f32 v118, v126, v175, v55
	v_fma_f32 v126, v134, v183, v46
	v_fma_f32 v134, v142, v191, v38
	v_fma_f32 v1, v1, v193, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v116, s2
	v_cndmask_b32_e64 v56, v56, v117, s2
	v_cndmask_b32_e64 v40, v40, v132, s2
	v_cndmask_b32_e64 v39, v39, v133, s2
	ds_store_2addr_b32 v10, v59, v42 offset0:64 offset1:96
	ds_store_2addr_b32 v12, v14, v74 offset1:32
	v_xad_u32 v10, v17, 20, 0
	v_cndmask_b32_e64 v16, v88, v16, s2
	v_cndmask_b32_e64 v18, v87, v18, s2
	v_cndmask_b32_e64 v72, v72, v102, s2
	v_cndmask_b32_e64 v71, v71, v103, s2
	ds_store_2addr_b32 v12, v58, v41 offset0:64 offset1:96
	ds_store_2addr_b32 v13, v15, v73 offset1:32
	v_xad_u32 v12, v17, 24, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v94, v119, v94, v62
	v_fma_f32 v119, v127, v176, v54
	v_fma_f32 v127, v135, v184, v45
	v_fma_f32 v135, v143, v192, v37
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v118, s2
	v_cndmask_b32_e64 v52, v52, v120, s2
	v_cndmask_b32_e64 v38, v38, v134, s2
	v_cndmask_b32_e64 v1, v36, v1, s2
	ds_store_2addr_b32 v13, v57, v40 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v16, v72 offset1:32
	ds_store_2addr_b32 v10, v56, v39 offset0:64 offset1:96
	ds_store_2addr_b32 v12, v18, v71 offset1:32
	v_xad_u32 v10, v17, 32, 0
	v_cndmask_b32_e64 v19, v86, v19, s2
	v_cndmask_b32_e64 v70, v70, v104, s2
	v_xad_u32 v13, v17, 28, 0
	v_cndmask_b32_e64 v54, v54, v119, s2
	v_cndmask_b32_e64 v37, v37, v135, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v196, 16, v196
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v194, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v12, v55, v38 offset0:64 offset1:96
	ds_store_2addr_b32 v13, v19, v70 offset1:32
	ds_store_2addr_b32 v13, v54, v37 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v52, v1 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s35, v200
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v197, 16, v197
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v195, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v85, v20, s2
	v_cndmask_b32_e64 v21, v84, v21, s2
	v_cndmask_b32_e64 v69, v69, v105, s2
	v_cndmask_b32_e64 v68, v68, v106, s2
	v_xad_u32 v12, v17, 36, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v196, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v121, s2
	v_cndmask_b32_e64 v2, v35, v2, s2
	v_cndmask_b32_e64 v22, v83, v22, s2
	v_cndmask_b32_e64 v67, v67, v107, s2
	v_xad_u32 v13, v17, 40, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v197, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v82, v23, s2
	v_cndmask_b32_e64 v66, v66, v108, s2
	v_cndmask_b32_e64 v50, v50, v122, s2
	v_cndmask_b32_e64 v3, v34, v3, s2
	ds_store_2addr_b32 v10, v20, v69 offset1:32
	ds_store_2addr_b32 v12, v21, v68 offset1:32
	ds_store_2addr_b32 v12, v51, v2 offset0:64 offset1:96
	ds_store_2addr_b32 v13, v22, v67 offset1:32
	v_xad_u32 v2, v17, 44, 0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v199, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v49, v123, s2
	v_cndmask_b32_e64 v9, v33, v9, s2
	v_cndmask_b32_e64 v24, v81, v24, s2
	v_cndmask_b32_e64 v65, v65, v109, s2
	v_cndmask_b32_e64 v48, v48, v124, s2
	v_cndmask_b32_e64 v5, v32, v5, s2
	ds_store_2addr_b32 v13, v50, v3 offset0:64 offset1:96
	v_xad_u32 v3, v17, 48, 0
	ds_store_2addr_b32 v2, v23, v66 offset1:32
	ds_store_2addr_b32 v2, v49, v9 offset0:64 offset1:96
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v80, v25, s2
	v_cndmask_b32_e64 v64, v64, v110, s2
	v_xad_u32 v9, v17, 52, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v198, 16, v198
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v3, v24, v65 offset1:32
	ds_store_2addr_b32 v3, v48, v5 offset0:64 offset1:96
	ds_store_2addr_b32 v9, v25, v64 offset1:32
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v198, v31
	v_fma_f32 v7, v7, v95, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v78, v96, s2
	v_cndmask_b32_e64 v62, v62, v94, s2
	v_cndmask_b32_e64 v47, v47, v125, s2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s40, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v31, v6, s2
	v_xad_u32 v5, v17, 60, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v79, v26, s2
	v_cndmask_b32_e64 v63, v63, v111, s2
	v_cndmask_b32_e64 v45, v45, v127, s2
	v_xad_u32 v10, v17, 56, 0
	v_cndmask_b32_e64 v46, v46, v126, s2
	v_cndmask_b32_e64 v7, v30, v7, s2
	ds_store_2addr_b32 v9, v47, v6 offset0:64 offset1:96
	ds_store_2addr_b32 v10, v26, v63 offset1:32
	ds_store_2addr_b32 v10, v46, v7 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v53, v62 offset1:32
	ds_store_2addr_b32 v5, v45, v8 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v6, 5, v28
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v4, v6
	v_and_or_b32 v0, v0, 64, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x810, v0, 0
	v_xad_u32 v9, 0x1020, v0, 0
	v_xad_u32 v10, 0x1830, v0, 0
	ds_load_b32 v8, v4
	ds_load_b32 v7, v6
	ds_load_b32 v0, v9
	ds_load_b32 v6, v10
.LBB0_9:                                ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end13
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s40, v2
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_11:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s40, v2
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_13:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_15:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 243
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.num_vgpr, 243
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18380
; TotalNumSgprs: 48
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 243
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
