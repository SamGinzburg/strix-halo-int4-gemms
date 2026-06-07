	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 28
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s18, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s33, s12, s18
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s33
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 16, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v75, 15, v0
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s12, 2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v73, 2, v0
	v_lshrrev_b32_e32 v2, 1, v4
	v_lshlrev_b32_e32 v5, 4, v0
	v_bfe_i32 v6, v0, 7, 1
	v_bfe_i32 v7, v0, 3, 1
	v_and_b32_e32 v8, 0x7f, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_bfe_u32 v72, v0, 4, 4
	v_and_b32_e32 v5, 0x70, v5
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_u32 v74, v0, 4, 1
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_and_or_b32 v116, 0x88, v7, v5
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_xor_b32_e32 v5, v6, v8
	s_add_i32 s0, s13, s0
	v_or_b32_e32 v7, 0x3f0, v0
	s_ashr_i32 s35, s0, 1
	v_or_b32_e32 v8, 0x7f0, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s35, 15
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
	s_mov_b32 s24, s4
	s_lshr_b32 s1, s1, 28
	v_xor_b32_e32 v6, 8, v116
	s_add_i32 s0, s0, s1
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v76, 48, v74
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s14, s0, 4
	s_cmp_gt_i32 s13, 1
	v_cmp_eq_u32_e64 s0, 0, v4
	s_cselect_b32 s13, -1, 0
	v_mov_b32_e32 v4, 0x7632
	v_mad_u64_u32 v[64:65], null, s19, v75, v[2:3]
	v_mov_b32_e32 v2, 0x5410
	s_abs_i32 s44, s34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v4, 0x3276, v4, s0
	s_cvt_f32_u32 s1, s44
.Ltmp14:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 4
	v_cndmask_b32_e64 v2, 0x1054, v2, s0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7c, v73
	v_rcp_iflag_f32_e32 v9, s1
	v_lshl_or_b32 v4, v4, 8, v4
	s_and_b32 s25, s5, 0xffff
	v_lshl_or_b32 v2, v2, 8, v2
	s_sub_i32 s5, 0, s44
	v_or_b32_e32 v77, 50, v74
	v_and_b32_e32 v4, 0x760076, v4
	v_or_b32_e32 v78, 52, v74
	v_and_b32_e32 v2, 0x540054, v2
	v_or_b32_e32 v79, 54, v74
	v_readfirstlane_b32 s1, v9
	v_lshl_or_b32 v4, v4, 4, v4
	v_or_b32_e32 v80, 56, v74
	v_lshl_or_b32 v2, v2, 4, v2
	v_or_b32_e32 v81, 58, v74
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_or_b32_e32 v82, 60, v74
	v_or_b32_e32 v83, 62, v74
	v_and_b32_e32 v125, 0x5040504, v2
	s_cvt_u32_f32 s4, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v0, s3, v3
	v_cndmask_b32_e64 v2, 0, 1, s13
	s_mul_i32 s5, s5, s4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v84, 64, v74
	v_or_b32_e32 v85, 0x42, v74
	v_or_b32_e32 v86, 0x44, v74
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_mad_u64_u32 v[65:66], null, s19, v0, v[1:2]
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v87, 0x46, v74
	v_or_b32_e32 v88, 0x48, v74
	v_or_b32_e32 v89, 0x4a, v74
	v_or_b32_e32 v90, 0x4c, v74
	v_or_b32_e32 v91, 0x4e, v74
	v_or_b32_e32 v92, 0x50, v74
	v_or_b32_e32 v93, 0x52, v74
	v_or_b32_e32 v94, 0x54, v74
	v_or_b32_e32 v95, 0x56, v74
	v_or_b32_e32 v96, 0x58, v74
	v_or_b32_e32 v97, 0x5a, v74
	v_or_b32_e32 v98, 0x5c, v74
	v_or_b32_e32 v99, 0x5e, v74
	v_or_b32_e32 v100, 0x60, v74
	v_or_b32_e32 v101, 0x62, v74
	v_or_b32_e32 v102, 0x64, v74
	v_or_b32_e32 v103, 0x66, v74
	v_or_b32_e32 v104, 0x68, v74
	v_or_b32_e32 v105, 0x6a, v74
	v_or_b32_e32 v106, 0x6c, v74
	v_or_b32_e32 v107, 0x6e, v74
	v_or_b32_e32 v108, 0x70, v74
	v_or_b32_e32 v109, 0x72, v74
	v_or_b32_e32 v110, 0x74, v74
	v_or_b32_e32 v111, 0x76, v74
	v_or_b32_e32 v112, 0x78, v74
	v_or_b32_e32 v113, 0x7a, v74
	v_or_b32_e32 v114, 0x7c, v74
	v_or_b32_e32 v115, 0x7e, v74
	v_add_nc_u32_e32 v117, 0, v75
	v_add_nc_u32_e32 v118, 16, v64
	v_add_nc_u32_e32 v119, 32, v64
	v_add_nc_u32_e32 v120, 48, v64
	v_add_nc_u32_e32 v121, 64, v64
	v_add_nc_u32_e32 v122, 0x50, v64
	v_add_nc_u32_e32 v123, 0x60, v64
	v_add_nc_u32_e32 v124, 0x70, v64
	v_and_b32_e32 v126, 0x7060706, v4
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_or_b32_e32 v66, s3, v75
	v_cmp_ne_u32_e64 s3, 1, v2
	v_add_nc_u32_e32 v127, 0, v5
	v_add_nc_u32_e32 v128, 0, v6
	v_add_nc_u32_e32 v129, 0, v7
	v_add_nc_u32_e32 v130, 0, v8
	s_and_b32 s9, s9, 0xffff
	s_mul_hi_u32 s5, s4, s5
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s45, s14, 1
	s_bfe_i32 s46, s12, 0x1001d
	s_add_i32 s47, s4, s5
	s_lshl_b32 s48, s19, 4
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s10
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s30, s4, 7
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v32, s50, v75
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s30, v74
	v_or_b32_e32 v34, s30, v76
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v53, 22, v74
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v37, s30, v79
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v53, s30, v53
	v_or_b32_e32 v38, s30, v80
	.loc	1 242 18 is_stmt 1              ; generate_amdgcn.py:242:18
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v35, v33, s[40:43], 0 offen
	buffer_load_u16 v36, v34, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s30, v77
	v_or_b32_e32 v34, s30, v78
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v52, 20, v74
	v_or_b32_e32 v43, 14, v74
	v_or_b32_e32 v50, 16, v74
	v_or_b32_e32 v51, 18, v74
	v_or_b32_e32 v54, 24, v74
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v52, s30, v52
	v_or_b32_e32 v43, s30, v43
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v55, 26, v74
	v_or_b32_e32 v56, 28, v74
	v_or_b32_e32 v61, 40, v74
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v52, 1, v52
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v52, v52, s[40:43], 0 offen
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	v_lshlrev_b32_e32 v53, 1, v53
	v_lshlrev_b32_e32 v37, 1, v37
	v_lshlrev_b32_e32 v35, 16, v35
	buffer_load_u16 v40, v33, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v36, v32, v36
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v34, 1, v34
	s_clause 0x1
	buffer_load_u16 v53, v53, s[40:43], 0 offen
	buffer_load_u16 v42, v37, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v35, v32, v35
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v41, v34, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s30, v81
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 2, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s30, v34
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v39, 1, v34
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v40, v32, v40 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v41, v32, v41 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	buffer_load_u16 v46, v33, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v37, s30, v82
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 4, v74
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v37, 1, v37
	s_clause 0x1
	buffer_load_u16 v34, v37, s[40:43], 0 offen
	buffer_load_u16 v47, v38, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s30, v33
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v37, 8, v74
	v_or_b32_e32 v38, 10, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v37, s30, v37
	v_or_b32_e32 v44, s30, v38
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v47, v32, v47
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	s_clause 0x1
	buffer_load_u16 v48, v39, s[40:43], 0 offen
	buffer_load_u16 v49, v33, s[40:43], 0 offen
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 6, v74
	v_or_b32_e32 v39, 12, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s30, v33
	v_or_b32_e32 v39, s30, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v39, 1, v39
	buffer_load_u16 v38, v33, s[40:43], 0 offen
	v_lshlrev_b32_e32 v33, 1, v37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v37, 1, v44
	s_clause 0x3
	buffer_load_u16 v45, v33, s[40:43], 0 offen
	buffer_load_u16 v44, v37, s[40:43], 0 offen
	buffer_load_u16 v33, v39, s[40:43], 0 offen
	buffer_load_u16 v43, v43, s[40:43], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v39, s30, v50
	v_or_b32_e32 v50, s30, v51
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v37, v35, v157
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 30, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v51, 1, v39
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v39, v36, v156
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v36, 32, v74
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v50, 1, v50
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s30, v35
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v57, v51, s[40:43], 0 offen
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v36, s30, v36
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v50, v50, s[40:43], 0 offen
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v39, v39
	v_cmp_o_f32_e64 s13, v37, v37
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v36, 1, v36
	buffer_load_u16 v59, v36, s[40:43], 0 offen
	v_lshlrev_b32_e32 v36, 16, v46
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v46, v32, v42
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v42, v41, v154
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v41, 36, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v36, v32, v36
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v60, s30, v41
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v41, v36, v152
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v36, 16, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v48, 1, v60
	buffer_load_u16 v62, v48, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v51, s30, v54
	v_or_b32_e32 v54, s30, v55
	v_or_b32_e32 v55, s30, v56
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v54, 1, v54
	v_lshlrev_b32_e32 v55, 1, v55
	s_clause 0x2
	buffer_load_u16 v54, v54, s[40:43], 0 offen
	buffer_load_u16 v55, v55, s[40:43], 0 offen
	buffer_load_u16 v58, v35, s[40:43], 0 offen
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v35, v40, v155
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v40, 34, v74
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v56, v51, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v38, v32, v38 :: v_dual_lshlrev_b32 v43, 16, v43
	v_mul_f32_e32 v45, v32, v45
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v51, s30, v40
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v40, v46, v153
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v46, 38, v74
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v43, v32, v43
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v147, v45, v147
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v34, v32, v34 :: v_dual_lshlrev_b32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v46, s30, v46
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s16, v147, v147
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v60, v51, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v51, v32, v36 :: v_dual_lshlrev_b32 v46, 1, v46
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v36, v47, v151
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v47, 42, v74
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v67, v34, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v63, v51, v150
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v51, s30, v61
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	buffer_load_u16 v150, v46, s[40:43], 0 offen
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v48, v32, v49
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v49, 44, v74
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v47, s30, v47
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v51, 1, v51
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s14, v63, v63
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v149, v48, v149
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v48, 46, v74
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v47, 1, v47
	buffer_load_u16 v151, v51, s[40:43], 0 offen
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v51, v38, v148
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v38, s30, v83
	v_or_b32_e32 v48, s30, v48
	v_or_b32_e32 v148, s30, v99
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s15, v149, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v38, 1, v38
	v_lshlrev_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v148, 1, v148
	buffer_load_u16 v38, v38, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v46, s30, v49
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v49, 16, v52
	v_lshlrev_b32_e32 v46, 1, v46
	s_clause 0x2
	buffer_load_u16 v152, v47, s[40:43], 0 offen
	buffer_load_u16 v153, v46, s[40:43], 0 offen
	buffer_load_u16 v154, v48, s[40:43], 0 offen
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v49, v32, v49 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v141, v49, v141 :: v_dual_mul_f32 v44, v32, v44
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s9, v141, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v61, v44, v146
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v55, 16, v55
	v_lshlrev_b32_e32 v44, 16, v57
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v57, s30, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v55, v32, v55
	v_mul_f32_e32 v48, v32, v44
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v44, v43, v144
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v43, s30, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v137, v55, v137
	v_mul_f32_e32 v143, v48, v143
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v55, s30, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s12, v137, v137
	v_cmp_o_f32_e64 s8, v143, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v55, 1, v55
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v38, v32, v38
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v49, 16, v54
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v54, s30, v90
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v146, 16, v154
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v38, v38, v68
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v49, v32, v49 :: v_dual_lshlrev_b32 v52, 16, v56
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v48, 16, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v146, v32, v146
	v_dual_mul_f32 v52, v32, v52 :: v_dual_lshlrev_b32 v47, 16, v50
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v46, 16, v33
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v53, s30, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v146, v146, v69 :: v_dual_mul_f32 v47, v32, v47
	v_mul_f32_e32 v139, v52, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v45, v32, v46 :: v_dual_lshlrev_b32 v52, 16, v59
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v56, 16, v58
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v46, s30, v85
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v50, v47, v142 :: v_dual_mul_f32 v145, v45, v145
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v45, s30, v84
	v_or_b32_e32 v47, s30, v88
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v59, v32, v52
	v_mul_f32_e32 v56, v32, v56
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v58, s30, v91
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v46, 1, v46
	v_lshlrev_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v135, v59, v135 :: v_dual_mul_f32 v52, v56, v136
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v136, 1, v45
	v_lshlrev_b32_e32 v45, 1, v57
	v_lshlrev_b32_e32 v57, 1, v43
	v_lshlrev_b32_e32 v43, 1, v47
	v_lshlrev_b32_e32 v47, 16, v60
	v_lshlrev_b32_e32 v60, 1, v54
	v_lshlrev_b32_e32 v58, 1, v58
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.h, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v49, v49, v138 :: v_dual_mul_f32 v142, v32, v47
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x7
	buffer_load_u16 v59, v46, s[40:43], 0 offen
	buffer_load_u16 v54, v45, s[40:43], 0 offen
	buffer_load_u16 v46, v43, s[40:43], 0 offen
	buffer_load_u16 v47, v53, s[40:43], 0 offen
	buffer_load_u16 v43, v60, s[40:43], 0 offen
	buffer_load_u16 v45, v58, s[40:43], 0 offen
	buffer_load_u16 v53, v57, s[40:43], 0 offen
	buffer_load_u16 v60, v136, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v58, v32, v62
	v_mul_f32_e32 v48, v32, v48
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v63.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v142, v142, v134
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v138, s30, v92
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v133, v58, v133
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v58, s30, v97
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v48, v48, v140
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v140, s30, v95
	v_or_b32_e32 v56, s30, v94
	v_or_b32_e32 v62, s30, v96
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s17, v145, v145
	v_cmp_o_f32_e64 s10, v135, v135
	v_cmp_o_f32_e64 s11, v139, v139
	v_cmp_o_f32_e64 s7, v133, v133
	v_mov_b16_e32 v68.l, v36.h
	v_mov_b16_e32 v68.h, v33.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v36, v68, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v59, 16, v59
	v_lshlrev_b32_e32 v136, 16, v152
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v57, 16, v150
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v32, v59 :: v_dual_lshlrev_b32 v60, 16, v60
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v134, 16, v151
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v57, v32, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v59, v59, v30 :: v_dual_mul_f32 v30, v32, v60
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v134, v32, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, v32, v53 :: v_dual_mul_f32 v144, v57, v132
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v31, v30, v31 :: v_dual_lshlrev_b32 v132, 16, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v134, v134, v131
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v131.h, v33.h
	v_mov_b16_e64 v131.l, v37.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v132, v32, v132
	v_mul_f32_e32 v136, v32, v136
	v_dual_mul_f32 v43, v32, v43 :: v_dual_lshlrev_b32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v132, v132, v70 :: v_dual_and_b32 v69, 1, v131
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v70.h, v33.h
	v_mov_b16_e32 v70.l, v39.h
	v_mov_b16_e64 v131.l, v42.h
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v57, s30, v98
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v46, v32, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v71, v136, v71 :: v_dual_and_b32 v70, 1, v70
	v_dual_mul_f32 v24, v43, v24 :: v_dual_and_b32 v131, 1, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v27, v46, v27
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_add3_u32 v37, v37, v69, 0x7fff
	v_add3_u32 v150, v39, v70, 0x7fff
	v_and_b32_e32 v39, 1, v33
	v_add3_u32 v136, v42, v131, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v131, 1, v138
	v_lshlrev_b32_e32 v138, 1, v56
	v_lshlrev_b32_e32 v56, 1, v62
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v39, v63, v39, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v63, 1, v140
	v_lshlrev_b32_e32 v140, 1, v57
	s_clause 0x7
	buffer_load_u16 v70, v55, s[40:43], 0 offen
	buffer_load_u16 v62, v63, s[40:43], 0 offen
	buffer_load_u16 v57, v56, s[40:43], 0 offen
	buffer_load_u16 v58, v58, s[40:43], 0 offen
	buffer_load_u16 v55, v140, s[40:43], 0 offen
	buffer_load_u16 v56, v148, s[40:43], 0 offen
	buffer_load_u16 v63, v138, s[40:43], 0 offen
	buffer_load_u16 v131, v131, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v69.h, v33.h
	v_mov_b16_e64 v69.l, v149.h
	v_mov_b16_e64 v140.h, v33.h
	v_mov_b16_e64 v140.l, v141.h
	v_mov_b16_e32 v42.h, v33.h
	v_mov_b16_e64 v42.l, v147.h
	v_and_b32_e32 v69, 1, v69
	v_mov_b16_e64 v151.h, v33.h
	v_and_b32_e32 v140, 1, v140
	v_mov_b16_e64 v151.l, v145.h
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v69, v149, v69, 0x7fff
	v_mov_b16_e64 v149.h, v33.h
	v_mov_b16_e64 v149.l, v143.h
	v_add3_u32 v140, v141, v140, 0x7fff
	v_mov_b16_e64 v141.h, v33.h
	v_mov_b16_e64 v141.l, v135.h
	v_and_b32_e32 v138, 1, v151
	v_add3_u32 v42, v147, v42, 0x7fff
	v_and_b32_e32 v147, 1, v149
	v_mov_b16_e32 v33.l, v51.h
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v138, v145, v138, 0x7fff
	v_mov_b16_e64 v145.h, v33.h
	v_mov_b16_e64 v145.l, v139.h
	v_add3_u32 v143, v143, v147, 0x7fff
	v_mov_b16_e64 v147.h, v33.h
	v_mov_b16_e64 v147.l, v137.h
	v_add3_u32 v141, v135, v141, 0x7fff
	v_mov_b16_e64 v135.h, v33.h
	v_mov_b16_e64 v135.l, v132.h
	v_and_b32_e32 v145, 1, v145
	v_and_b32_e32 v147, 1, v147
	v_cmp_o_f32_e64 s5, v132, v132
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s13
	v_and_b32_e32 v135, 1, v135
	v_add3_u32 v139, v139, v145, 0x7fff
	v_mov_b16_e64 v145.h, v33.h
	v_mov_b16_e64 v145.l, v133.h
	v_add3_u32 v147, v137, v147, 0x7fff
	v_mov_b16_e64 v137.h, v33.h
	v_mov_b16_e64 v137.l, v134.h
	v_add3_u32 v149, v132, v135, 0x7fff
	v_and_b32_e32 v132, 1, v33
	v_mov_b16_e32 v33.l, v61.h
	v_and_b32_e32 v145, 1, v145
	v_and_b32_e32 v137, 1, v137
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s14
	v_cmp_o_f32_e64 s13, v51, v51
	v_add3_u32 v39, v51, v132, 0x7fff
	v_and_b32_e32 v51, 1, v33
	v_mov_b16_e32 v33.l, v44.h
	v_add3_u32 v145, v133, v145, 0x7fff
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v133, s30, v100
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v134, v134
	v_add3_u32 v148, v134, v137, 0x7fff
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v134, s30, v101
	v_or_b32_e32 v135, s30, v102
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s14, v61, v61
	v_add3_u32 v51, v61, v51, 0x7fff
	v_and_b32_e32 v61, 1, v33
	v_mov_b16_e32 v33.l, v50.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v132, 1, v133
	v_lshlrev_b32_e32 v133, 1, v134
	v_lshlrev_b32_e32 v134, 1, v135
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v39.l, 0x7fff, v69.h, s15
	v_and_b32_e32 v135, 1, v33
	v_mov_b16_e32 v33.l, v48.h
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v69, s30, v103
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s13
	v_cmp_o_f32_e64 s13, v44, v44
	v_add3_u32 v44, v44, v61, 0x7fff
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v61, s30, v104
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s16
	v_cndmask_b16 v42.h, 0x7fff, v51.h, s14
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v51, s30, v105
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v151, 1, v33
	v_mov_b16_e32 v33.l, v49.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v69, 1, v69
	v_lshlrev_b32_e32 v61, 1, v61
	v_lshlrev_b32_e32 v51, 1, v51
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v44.l, 0x7fff, v138.h, s17
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s13
	v_cmp_o_f32_e64 s13, v50, v50
	v_add3_u32 v50, v50, v135, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x3
	buffer_load_u16 v137, v134, s[40:43], 0 offen
	buffer_load_u16 v138, v69, s[40:43], 0 offen
	buffer_load_u16 v134, v61, s[40:43], 0 offen
	buffer_load_u16 v135, v51, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v61, 1, v33
	v_mov_b16_e32 v33.l, v52.h
	v_cmp_o_f32_e64 s14, v48, v48
	v_add3_u32 v51, v48, v151, 0x7fff
	v_cmp_o_f32_e64 s15, v49, v49
	v_cmp_o_f32_e64 s16, v52, v52
	v_and_b32_e32 v69, 1, v33
	v_mov_b16_e64 v33.l, v142.h
	v_add3_u32 v61, v49, v61, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v139.h, s11
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s13
	v_add3_u32 v52, v52, v69, 0x7fff
	v_and_b32_e32 v69, 1, v33
	v_mov_b16_e64 v33.l, v144.h
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s14
	v_cndmask_b16 v51.h, 0x7fff, v61.h, s15
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s16
	v_add3_u32 v52, v142, v69, 0x7fff
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v61, s30, v107
	v_or_b32_e32 v69, s30, v106
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v139, 1, v33
	v_mov_b16_e32 v33.l, v71.h
	v_cndmask_b16 v48.l, 0x7fff, v143.h, s8
	v_cndmask_b16 v49.l, 0x7fff, v140.h, s9
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v61, 1, v61
	v_lshlrev_b32_e32 v69, 1, v69
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v140, 1, v33
	v_mov_b16_e64 v33.l, v146.h
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v143, s30, v109
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s8, v142, v142
	v_cndmask_b16 v52.l, 0x7fff, v141.h, s10
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v141, v61, s[40:43], 0 offen
	buffer_load_u16 v142, v69, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s9, v71, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v69, s30, v108
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v71, v71, v140, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v140, 1, v143
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v143, 1, v33
	v_mov_b16_e32 v33.l, v35.h
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s8
	v_cmp_o_f32_e64 s8, v144, v144
	v_add3_u32 v139, v144, v139, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v69, 1, v69
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v144, 1, v33
	v_mov_b16_e32 v33.l, v40.h
	v_cndmask_b16 v61.l, 0x7fff, v145.h, s7
	v_cndmask_b16 v61.h, 0x7fff, v139.h, s8
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v139, v69, s[40:43], 0 offen
	buffer_load_u16 v140, v140, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v69.l, 0x7fff, v148.h, s6
	v_cmp_o_f32_e64 s6, v35, v35
	v_add3_u32 v35, v35, v144, 0x7fff
	v_and_b32_e32 v144, 1, v33
	v_mov_b16_e32 v33.l, v41.h
	v_cmp_o_f32_e64 s7, v146, v146
	v_cndmask_b16 v69.h, 0x7fff, v71.h, s9
	v_add3_u32 v71, v146, v143, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v147.h, s12
	v_and_b32_e32 v146, 1, v33
	v_mov_b16_e32 v33.l, v38.h
	v_cndmask_b16 v35.l, 0x7fff, v150.h, s4
	v_cmp_o_f32_e64 s4, v40, v40
	v_add3_u32 v147, v40, v144, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v136.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_and_b32_e32 v36, 1, v33
	v_mov_b16_e32 v60.l, v67.h
	v_mov_b16_e32 v60.h, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v147.h, s4
	v_cmp_o_f32_e64 s4, v38, v38
	v_add3_u32 v36, v38, v36, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v38, 1, v60
	v_cndmask_b16 v30.l, 0x7fff, v68.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_mov_b16_e32 v33.l, v59.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v54, v32, v54
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v38, v67, v38, 0x7fff
	v_mov_b16_e32 v67.l, v31.h
	v_mov_b16_e32 v67.h, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v28, v53, v28 :: v_dual_mul_f32 v29, v54, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v71.l, 0x7fff, v149.h, s5
	v_cmp_o_f32_e64 s5, v41, v41
	v_and_b32_e32 v54, 1, v67
	v_add3_u32 v148, v41, v146, 0x7fff
	v_and_b32_e32 v60, 1, v33
	v_cndmask_b16 v36.l, 0x7fff, v38.h, vcc_lo
	v_mov_b16_e32 v33.l, v29.h
	v_add3_u32 v38, v31, v54, 0x7fff
	v_mov_b16_e32 v54.l, v28.h
	v_mov_b16_e32 v54.h, v33.h
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v31, v32, v47
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v30.h, 0x7fff, v148.h, s5
	v_add3_u32 v60, v59, v60, 0x7fff
	v_cmp_o_f32_e64 s5, v59, v59
	v_and_b32_e32 v59, 1, v33
	v_and_b32_e32 v47, 1, v54
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v26, v31, v26
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s4
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v54, v29, v59, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v29, v28, v47, 0x7fff
	v_mov_b16_e32 v33.l, v26.h
	v_mov_b16_e32 v38.l, v27.h
	v_mov_b16_e32 v38.h, v33.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v28, v32, v45
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v46, 1, v33
	v_cndmask_b16 v31.h, 0x7fff, v54.h, s4
	v_and_b32_e32 v38, 1, v38
	v_cmp_o_f32_e64 s4, v26, v26
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v25, v28, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v45, v26, v46, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v29.h, vcc_lo
	v_add3_u32 v26, v27, v38, 0x7fff
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v33.l, v25.h
	v_mov_b16_e32 v29.h, v33.h
	v_cndmask_b16 v28.h, 0x7fff, v45.h, s4
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cmp_o_f32_e64 s4, v25, v25
	v_and_b32_e32 v45, 1, v33
	v_and_b32_e32 v29, 1, v29
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v143, s30, v110
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v28.l, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v145, s30, v111
	v_or_b32_e32 v144, s30, v114
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v143, 1, v143
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v41, s30, v113
	v_or_b32_e32 v146, s30, v112
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v145, 1, v145
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s7
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v143, v143, s[40:43], 0 offen
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s6
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v40, v145, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v145, s30, v115
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cndmask_b16 v53.h, 0x7fff, v60.h, s5
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s8, s50, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s8, s8, s30
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v149, 1, v145
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s33
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v38, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v27, v32, v38
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v43, 16, v131
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v23, v27, v23
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v27.h, v33.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v38, v32, v43
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v43, v25, v45, 0x7fff
	v_add3_u32 v25, v24, v29, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v29, 16, v62
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v23.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v22, v38, v22
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v38, 16, v63
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v26.h, 0x7fff, v43.h, s4
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v24, v32, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v43, 1, v33
	v_mov_b16_e32 v27.l, v22.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v29, v32, v38
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v23, v23
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v21, v24, v21
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v38, v23, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v20, v29, v20 :: v_dual_and_b32 v27, 1, v27
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v33.l, v21.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v29, 16, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v23, v22, v27, 0x7fff
	v_mov_b16_e32 v25.l, v20.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v27, 16, v58
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v25.h, v33.h
	v_cndmask_b16 v24.h, 0x7fff, v38.h, s4
	v_and_b32_e32 v38, 1, v33
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v22, v32, v27
	v_mul_f32_e32 v27, v32, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v29, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v18, v27, v18
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v21, v20, v25, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v25, 16, v56
	v_lshlrev_b32_e32 v27, 16, v55
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v19, v22, v19
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v22.h, 0x7fff, v29.h, s4
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v20, v32, v25
	v_mul_f32_e32 v25, v32, v27
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	buffer_load_u16 v133, v133, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v19.h
	v_mov_b16_e32 v23.l, v18.h
	v_mov_b16_e32 v23.h, v33.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v17, v20, v17 :: v_dual_mul_f32 v16, v25, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v29, 1, v33
	v_cmp_o_f32_e64 s4, v19, v19
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v22.l, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v33.l, v17.h
	v_add3_u32 v27, v19, v29, 0x7fff
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v21.h, v33.h
	v_add3_u32 v19, v18, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cndmask_b16 v20.h, 0x7fff, v27.h, s4
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e64 s4, v17, v17
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_mov_b16_e32 v19.h, v33.h
	v_cndmask_b32_e64 v29, v34, v36, s0
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v132
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v133
	v_lshlrev_b32_e32 v144, 1, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v18, v32, v23
	v_mul_f32_e32 v23, v32, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v25, v17, v27, 0x7fff
	v_add3_u32 v17, v16, v21, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v21, 16, v138
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v15, v18, v15 :: v_dual_mul_f32 v14, v23, v14
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v23, 16, v137
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v18.h, 0x7fff, v25.h, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v16, v32, v21
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v146, 1, v146
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v15.h
	v_mov_b16_e32 v19.l, v14.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v21, v32, v23
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v13, v16, v13
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_clause 0x3
	buffer_load_u16 v145, v41, s[40:43], 0 offen
	buffer_load_u16 v144, v144, s[40:43], 0 offen
	buffer_load_u16 v41, v149, s[40:43], 0 offen
	buffer_load_u16 v146, v146, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v25, 1, v33
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v12, v21, v12 :: v_dual_and_b32 v19, 1, v19
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v15, v15
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v15, v25, 0x7fff
	v_add3_u32 v15, v14, v19, 0x7fff
	v_mov_b16_e32 v33.l, v13.h
	v_mov_b16_e32 v17.l, v12.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v19, 16, v135
	v_lshlrev_b32_e32 v21, 16, v134
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v17.h, v33.h
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s4
	v_and_b32_e32 v23, 1, v33
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v14, v32, v19
	v_mul_f32_e32 v19, v32, v21
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v21, v13, v23, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v10, v14, v10 :: v_dual_mul_f32 v11, v19, v11
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v13, v12, v17, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 16, v141
	v_lshlrev_b32_e32 v19, 16, v142
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v16.l, 0x7fff, v15.h, vcc_lo
	v_mov_b16_e32 v33.l, v10.h
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v33.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v12, v32, v17
	v_mul_f32_e32 v17, v32, v19
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v14.h, 0x7fff, v21.h, s4
	v_and_b32_e32 v21, 1, v33
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v8, v17, v8
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v140
	v_lshlrev_b32_e32 v17, 16, v139
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v19, v10, v21, 0x7fff
	v_cmp_o_f32_e64 s4, v10, v10
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v9, v12, v9
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v10, v11, v15, 0x7fff
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v13, v32, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v11, v32, v17
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v9.h
	v_mov_b16_e32 v15.l, v8.h
	v_mov_b16_e32 v15.h, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v7, v13, v7 :: v_dual_mul_f32 v6, v11, v6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v12.h, 0x7fff, v19.h, s4
	v_and_b32_e32 v19, 1, v33
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v7.h
	v_mov_b16_e32 v11.l, v6.h
	v_mov_b16_e32 v11.h, v33.h
	v_add3_u32 v17, v9, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v9, v9
	v_cndmask_b16 v12.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v9, v8, v15, 0x7fff
	v_and_b32_e32 v15, 1, v33
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v8, 16, v40
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s4
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v143
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v15, v7, v15, 0x7fff
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v7, v32, v8
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v8, v6, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v13, v32, v13 :: v_dual_mul_f32 v4, v7, v4
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v7.h, v33.h
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s4
	v_cndmask_b16 v9.l, 0x7fff, v8.h, vcc_lo
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v5, v13, v5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cndmask_b32_e64 v21, v61, v71, s0
	v_cndmask_b32_e64 v17, v52, v69, s0
	v_mov_b16_e32 v7.l, v5.h
	v_and_b32_e32 v8, 1, v33
	v_cndmask_b32_e64 v19, v71, v61, s0
	v_cndmask_b32_e64 v23, v30, v35, s0
	v_cndmask_b32_e64 v25, v35, v30, s0
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v8, v4, v8, 0x7fff
	v_cndmask_b32_e64 v27, v36, v34, s0
	v_cndmask_b32_e64 v30, v28, v53, s0
	v_cndmask_b32_e64 v28, v53, v28, s0
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b32_e64 v34, v10, v14, s0
	v_cndmask_b32_e64 v10, v14, v10, s0
	v_cndmask_b32_e64 v15, v69, v52, s0
	v_permlanex16_b32 v14, v25, s49, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v8.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b32_e64 v7, v48, v51, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_permlanex16_b32 v7, v7, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v6, 16, v145
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v144
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v146
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v6, v32, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v11, v32, v11
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v3, v6, v3 :: v_dual_lshlrev_b32 v6, 16, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v2, v11, v2 :: v_dual_mul_f32 v11, v32, v13
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v33.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v6, v32, v6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v13.h, v33.h
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v1, v11, v1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v4, 1, v33
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v0, v6, v0
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v11.h, v33.h
	v_and_b32_e32 v6, 1, v13
	v_mov_b16_e32 v11.l, v1.h
	v_add3_u32 v4, v3, v4, 0x7fff
	v_mov_b16_e32 v33.l, v0.h
	v_cmp_o_f32_e64 s4, v3, v3
	v_add3_u32 v5, v2, v6, 0x7fff
	v_and_b32_e32 v6, 1, v11
	v_cmp_o_f32_e64 s5, v2, v2
	v_and_b32_e32 v11, 1, v33
	v_cmp_o_f32_e64 s6, v0, v0
	v_cmp_o_f32_e64 s7, v1, v1
	v_add3_u32 v2, v1, v6, 0x7fff
	v_cndmask_b32_e64 v13, v49, v50, s0
	v_add3_u32 v3, v0, v11, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s4
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s7
	v_cndmask_b32_e64 v5, v39, v44, s0
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s6
	v_cndmask_b32_e64 v3, v37, v42, s0
	v_cndmask_b32_e64 v32, v26, v31, s0
	v_cndmask_b32_e64 v26, v31, v26, s0
	v_cndmask_b32_e64 v31, v20, v24, s0
	v_cndmask_b32_e64 v20, v24, v20, s0
	v_cndmask_b32_e64 v2, v42, v37, s0
	v_cndmask_b32_e64 v4, v44, v39, s0
	v_cndmask_b32_e64 v6, v51, v48, s0
	v_cndmask_b32_e64 v11, v50, v49, s0
	v_cndmask_b32_e64 v24, v18, v22, s0
	v_cndmask_b32_e64 v18, v22, v18, s0
	v_cndmask_b32_e64 v33, v12, v16, s0
	v_cndmask_b32_e64 v12, v16, v12, s0
	v_cndmask_b32_e64 v35, v0, v9, s0
	v_cndmask_b32_e64 v0, v9, v0, s0
	v_cndmask_b32_e64 v36, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	v_permlanex16_b32 v3, v3, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v21, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v26, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v20, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v17, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v29, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v28, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v18, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v12, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v10, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v0, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v1, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v125
	v_perm_b32 v1, v3, v2, v126
	v_perm_b32 v2, v5, v4, v125
	v_perm_b32 v3, v5, v4, v126
	v_perm_b32 v4, v7, v6, v125
	v_perm_b32 v5, v7, v6, v126
	v_perm_b32 v6, v8, v11, v125
	v_perm_b32 v7, v8, v11, v126
	v_perm_b32 v10, v13, v19, v125
	v_perm_b32 v11, v13, v19, v126
	v_perm_b32 v18, v21, v32, v125
	v_perm_b32 v19, v21, v32, v126
	v_perm_b32 v20, v22, v31, v125
	v_perm_b32 v21, v22, v31, v126
	v_add_lshl_u32 v31, s8, v64, 1
	v_perm_b32 v8, v9, v15, v125
	v_perm_b32 v9, v9, v15, v126
	v_perm_b32 v12, v14, v23, v125
	v_perm_b32 v13, v14, v23, v126
	v_perm_b32 v14, v16, v27, v125
	v_perm_b32 v15, v16, v27, v126
	v_perm_b32 v22, v25, v24, v125
	v_perm_b32 v23, v25, v24, v126
	v_perm_b32 v24, v26, v33, v125
	v_perm_b32 v25, v26, v33, v126
	v_perm_b32 v26, v28, v34, v125
	v_perm_b32 v27, v28, v34, v126
	v_cndmask_b32_e64 v34, 0x80000000, v31, s1
	v_add_lshl_u32 v32, v118, s8, 1
	v_add_lshl_u32 v33, v119, s8, 1
	v_perm_b32 v28, v29, v35, v125
	v_perm_b32 v29, v29, v35, v126
	v_add_lshl_u32 v35, v120, s8, 1
	buffer_store_b128 v[0:3], v34, s[20:23], 0 offen
	v_add_lshl_u32 v0, v121, s8, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_perm_b32 v16, v17, v30, v125
	v_perm_b32 v17, v17, v30, v126
	v_cndmask_b32_e64 v1, 0x80000000, v35, s1
	v_add_lshl_u32 v2, v122, s8, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v3, v123, s8, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v32, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v33, s[20:23], 0 offen
	v_add_lshl_u32 v4, v124, s8, 1
	buffer_store_b128 v[12:15], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	buffer_store_b128 v[16:19], v0, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	v_perm_b32 v30, v37, v36, v125
	v_perm_b32 v31, v37, v36, v126
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	s_clause 0x2
	buffer_store_b128 v[20:23], v1, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v0, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v2, s[20:23], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s6, s4, s47
	s_xor_b32 s5, s5, s46
	s_mul_i32 s7, s6, s44
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s6, 1
	s_sub_i32 s8, s4, s44
	s_cmp_ge_u32 s4, s44
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s44
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_cselect_b32 s4, s7, s6
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_xor_b32 s4, s4, s5
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	s_sub_i32 s4, s4, s5
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s34
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s18, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s10, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s8, s5, 4
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s8
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_cvt_f32_u32 s5, s6
	s_sub_i32 s9, 0, s6
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v22, s5
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v22
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	s_mul_i32 s9, s9, s5
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_mul_hi_u32 s4, s5, s9
	s_abs_i32 s9, s10
	s_add_i32 s5, s5, s4
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	s_mul_hi_u32 s4, s9, s5
	s_xor_b32 s5, s10, s8
	s_mul_i32 s11, s4, s6
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s9, s6
	s_cmp_ge_u32 s9, s6
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v134, 0
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s9, s6
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	s_cselect_b32 s4, s11, s4
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	s_xor_b32 s6, s4, s5
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	s_sub_i32 s4, s6, s5
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s8, s4, s8
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v144, 0
	s_sub_i32 s8, s10, s8
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_mov_b32_e32 v147, 0
	v_mov_b32_e32 v157, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s8, s8, s7
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s50, s8, 4
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v1, s6, 7, v65
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s50, v72
	s_lshl_b32 s5, s5, 7
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	v_subrev_nc_u32_e32 v131, s5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[67:68], null, s35, v2, v[66:67]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v41, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v49, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v57, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	s_mov_b32 s5, s45
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u8 v68, v67, s[24:27], 0 offen
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b32 v132, v131, s[28:31], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	v_add_nc_u32_e32 v133, 0, v73
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v67, 16, v67
	v_add_nc_u32_e32 v131, s48, v131
	s_add_i32 s5, s5, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s5, 0
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v127, v68
	v_add_nc_u32_e32 v68, 0, v116
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[70:71], v68
	ds_load_b64 v[68:69], v128
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v133, v132
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v132, v117 offset:512
	ds_load_u8 v133, v117 offset:640
	ds_load_u8 v134, v117 offset:656
	ds_load_u8 v135, v117 offset:672
	ds_load_u8 v136, v117 offset:688
	ds_load_u8 v137, v117 offset:704
	ds_load_u8 v142, v117 offset:720
	ds_load_u8 v144, v117 offset:736
	ds_load_u8 v146, v117 offset:752
	ds_load_u8 v138, v117 offset:528
	ds_load_u8 v140, v117 offset:544
	ds_load_u8 v141, v117 offset:560
	ds_load_u8 v143, v117 offset:576
	ds_load_u8 v145, v117 offset:592
	ds_load_u8 v147, v117 offset:608
	ds_load_u8 v148, v117 offset:624
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v132, v132, v133, 0xc0c0004
	ds_load_u8 v133, v117 offset:768
	ds_load_u8 v139, v117 offset:896
	ds_load_u8 v149, v117 offset:912
	ds_load_u8 v150, v117 offset:928
	ds_load_u8 v151, v117 offset:944
	ds_load_u8 v152, v117 offset:960
	ds_load_u8 v153, v117 offset:976
	ds_load_u8 v154, v117 offset:992
	ds_load_u8 v155, v117 offset:784
	ds_load_u8 v156, v117 offset:800
	ds_load_u8 v157, v117 offset:816
	ds_load_u8 v158, v117 offset:832
	ds_load_u8 v159, v117 offset:848
	ds_load_u8 v160, v117 offset:864
	ds_load_u8 v161, v117 offset:880
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v133, v133, v139, 0xc0c0004
	ds_load_u8 v139, v117
	ds_load_u8 v162, v117 offset:128
	ds_load_u8 v163, v117 offset:144
	ds_load_u8 v164, v117 offset:160
	ds_load_u8 v165, v117 offset:176
	ds_load_u8 v166, v117 offset:192
	ds_load_u8 v167, v117 offset:208
	ds_load_u8 v168, v117 offset:224
	ds_load_u8 v169, v117 offset:240
	ds_load_u8 v170, v117 offset:16
	ds_load_u8 v171, v117 offset:32
	ds_load_u8 v172, v117 offset:48
	ds_load_u8 v173, v117 offset:64
	ds_load_u8 v174, v117 offset:80
	ds_load_u8 v175, v117 offset:96
	ds_load_u8 v176, v117 offset:112
	v_perm_b32 v134, v138, v134, 0xc0c0004
	v_perm_b32 v136, v141, v136, 0xc0c0004
	v_perm_b32 v142, v145, v142, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_perm_b32 v148, v148, v146, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v139, v139, v162, 0xc0c0004
	ds_load_u8 v162, v117 offset:384
	ds_load_u8 v177, v117 offset:256
	ds_load_u8 v178, v117 offset:272
	ds_load_u8 v179, v117 offset:400
	ds_load_u8 v180, v117 offset:416
	ds_load_u8 v181, v117 offset:432
	ds_load_u8 v182, v117 offset:448
	ds_load_u8 v183, v117 offset:464
	ds_load_u8 v184, v117 offset:480
	ds_load_u8 v185, v117 offset:496
	ds_load_u8 v186, v117 offset:288
	ds_load_u8 v187, v117 offset:304
	ds_load_u8 v188, v117 offset:320
	ds_load_u8 v189, v117 offset:336
	ds_load_u8 v190, v117 offset:352
	ds_load_u8 v191, v117 offset:368
	v_perm_b32 v138, v155, v149, 0xc0c0004
	v_perm_b32 v144, v147, v144, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v162, v177, v162, 0xc0c0004
	v_perm_b32 v149, v170, v163, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v155, v178, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v132, v162, 16, v139
	v_lshl_or_b32 v139, v138, 16, v134
	v_lshl_or_b32 v138, v155, 16, v149
	v_perm_b32 v134, v140, v135, 0xc0c0004
	v_perm_b32 v135, v156, v150, 0xc0c0004
	v_perm_b32 v140, v171, v164, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v149, v186, v180, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v187, v181, 0xc0c0004
	v_perm_b32 v145, v174, v167, 0xc0c0004
	v_lshl_or_b32 v135, v135, 16, v134
	v_perm_b32 v147, v175, v168, 0xc0c0004
	v_lshl_or_b32 v134, v149, 16, v140
	v_perm_b32 v140, v157, v151, 0xc0c0004
	v_perm_b32 v149, v172, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[132:133], v[70:71], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[138:139], v[70:71], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[134:135], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v140, 16, v136
	v_lshl_or_b32 v140, v150, 16, v149
	ds_load_u8 v146, v129
	ds_load_u8 v150, v130
	v_perm_b32 v136, v143, v137, 0xc0c0004
	v_perm_b32 v137, v158, v152, 0xc0c0004
	v_perm_b32 v143, v173, v166, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v149, v188, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[24:31], v[140:141], v[70:71], v[24:31] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v137, 16, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v136, v149, 16, v143
	v_perm_b32 v143, v159, v153, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v149, v189, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[32:39], v[136:137], v[70:71], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v143, v143, 16, v142
	v_lshl_or_b32 v142, v149, 16, v145
	v_perm_b32 v145, v160, v154, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v149, v190, v184, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v151, v161, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[40:47], v[142:143], v[70:71], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v145, 16, v144
	v_lshl_or_b32 v144, v149, 16, v147
	v_perm_b32 v147, v176, v169, 0xc0c0004
	v_perm_b32 v149, v191, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[144:145], v[70:71], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v146, v149, 16, v147
	v_lshl_or_b32 v147, v151, 16, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[146:147], v[70:71], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v70, v117 offset:1664
	ds_load_u8 v71, v117 offset:1536
	ds_load_u8 v144, v117 offset:1520
	ds_load_u8 v145, v117 offset:1648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v117 offset:1920
	ds_load_u8 v132, v117 offset:1792
	ds_load_u8 v146, v117 offset:1776
	ds_load_u8 v147, v117 offset:1904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v132, v71, 0xc0c0004
	ds_load_u8 v132, v117 offset:1024
	ds_load_u8 v133, v117 offset:1152
	ds_load_u8 v148, v117 offset:1136
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v145, v146, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v146, v147, v150, 0xc0c0004
	v_lshl_or_b32 v71, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v145, v146, 16, v145
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v132, v132, v133, 0xc0c0004
	ds_load_u8 v133, v117 offset:1408
	ds_load_u8 v134, v117 offset:1280
	ds_load_u8 v149, v117 offset:1264
	ds_load_u8 v151, v117 offset:1392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v148, v148, v149, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v151, v144, 0xc0c0004
	v_lshl_or_b32 v70, v133, 16, v132
	ds_load_u8 v132, v117 offset:1552
	ds_load_u8 v133, v117 offset:1680
	ds_load_u8 v134, v117 offset:1696
	ds_load_u8 v136, v117 offset:1712
	ds_load_u8 v138, v117 offset:1728
	ds_load_u8 v140, v117 offset:1744
	ds_load_u8 v142, v117 offset:1760
	ds_load_u8 v135, v117 offset:1568
	ds_load_u8 v137, v117 offset:1584
	ds_load_u8 v139, v117 offset:1600
	ds_load_u8 v141, v117 offset:1616
	ds_load_u8 v143, v117 offset:1632
	v_lshl_or_b32 v144, v144, 16, v148
	v_wmma_i32_16x16x16_iu4 v[0:7], v[70:71], v[68:69], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[144:145], v[68:69], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v132, v132, v133, 0xc0c0004
	ds_load_u8 v133, v117 offset:1808
	ds_load_u8 v152, v117 offset:1936
	ds_load_u8 v153, v117 offset:1952
	ds_load_u8 v154, v117 offset:1968
	ds_load_u8 v155, v117 offset:1984
	ds_load_u8 v156, v117 offset:2000
	ds_load_u8 v157, v117 offset:2016
	ds_load_u8 v158, v117 offset:1824
	ds_load_u8 v159, v117 offset:1840
	ds_load_u8 v160, v117 offset:1856
	ds_load_u8 v161, v117 offset:1872
	ds_load_u8 v162, v117 offset:1888
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v133, v133, v152, 0xc0c0004
	ds_load_u8 v152, v117 offset:1040
	ds_load_u8 v163, v117 offset:1168
	ds_load_u8 v164, v117 offset:1184
	ds_load_u8 v165, v117 offset:1200
	ds_load_u8 v166, v117 offset:1216
	ds_load_u8 v167, v117 offset:1232
	ds_load_u8 v168, v117 offset:1248
	ds_load_u8 v169, v117 offset:1056
	ds_load_u8 v170, v117 offset:1072
	ds_load_u8 v171, v117 offset:1088
	ds_load_u8 v172, v117 offset:1104
	ds_load_u8 v173, v117 offset:1120
	v_lshl_or_b32 v133, v133, 16, v132
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v135, v158, v153, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v137, v159, v154, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v139, v160, v155, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v141, v161, v156, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v143, v162, v157, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v152, v152, v163, 0xc0c0004
	ds_load_u8 v163, v117 offset:1424
	ds_load_u8 v174, v117 offset:1296
	ds_load_u8 v175, v117 offset:1312
	ds_load_u8 v176, v117 offset:1440
	ds_load_u8 v177, v117 offset:1456
	ds_load_u8 v178, v117 offset:1472
	ds_load_u8 v179, v117 offset:1488
	ds_load_u8 v180, v117 offset:1504
	ds_load_u8 v181, v117 offset:1328
	ds_load_u8 v182, v117 offset:1344
	ds_load_u8 v183, v117 offset:1360
	ds_load_u8 v184, v117 offset:1376
	v_lshl_or_b32 v135, v135, 16, v134
	v_lshl_or_b32 v137, v137, 16, v136
	v_lshl_or_b32 v139, v139, 16, v138
	v_lshl_or_b32 v141, v141, 16, v140
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v163, v174, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v153, v175, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v132, v163, 16, v152
	v_perm_b32 v152, v169, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[8:15], v[132:133], v[68:69], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v153, 16, v152
	v_perm_b32 v152, v170, v165, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v153, v181, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[134:135], v[68:69], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v136, v153, 16, v152
	v_perm_b32 v152, v171, v166, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v182, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[24:31], v[136:137], v[68:69], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v138, v153, 16, v152
	v_perm_b32 v152, v172, v167, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v153, v183, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[32:39], v[138:139], v[68:69], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v153, 16, v152
	v_perm_b32 v152, v173, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v184, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[40:47], v[140:141], v[68:69], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[48:55], v[142:143], v[68:69], v[48:55] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v157, v0
	v_cvt_f32_i32_e32 v150, v1
	v_cvt_f32_i32_e32 v149, v2
	v_cvt_f32_i32_e32 v148, v3
	v_cvt_f32_i32_e32 v147, v4
	v_cvt_f32_i32_e32 v146, v5
	v_cvt_f32_i32_e32 v145, v6
	v_cvt_f32_i32_e32 v144, v7
	v_cvt_f32_i32_e32 v143, v8
	v_cvt_f32_i32_e32 v142, v9
	v_cvt_f32_i32_e32 v141, v10
	v_cvt_f32_i32_e32 v140, v11
	v_cvt_f32_i32_e32 v139, v12
	v_cvt_f32_i32_e32 v138, v13
	v_cvt_f32_i32_e32 v137, v14
	v_cvt_f32_i32_e32 v136, v15
	v_cvt_f32_i32_e32 v135, v16
	v_cvt_f32_i32_e32 v134, v17
	v_cvt_f32_i32_e32 v133, v18
	v_cvt_f32_i32_e32 v132, v19
	v_cvt_f32_i32_e32 v131, v20
	v_cvt_f32_i32_e32 v71, v21
	v_cvt_f32_i32_e32 v70, v22
	v_cvt_f32_i32_e32 v69, v23
	v_cvt_f32_i32_e32 v156, v24
	v_cvt_f32_i32_e32 v155, v25
	v_cvt_f32_i32_e32 v154, v26
	v_cvt_f32_i32_e32 v153, v27
	v_cvt_f32_i32_e32 v151, v28
	v_cvt_f32_i32_e32 v152, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v68, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	v_cvt_f32_i32_e32 v28, v34
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v27, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v24, v38
	v_cvt_f32_i32_e32 v25, v39
	v_cvt_f32_i32_e32 v22, v40
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v20, v42
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v18, v44
	v_cvt_f32_i32_e32 v19, v45
	v_cvt_f32_i32_e32 v16, v46
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v14, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v12, v50
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v8, v54
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v6, v56
	v_cvt_f32_i32_e32 v7, v57
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v0, v63
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge6
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 192
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 192
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10480
; TotalNumSgprs: 53
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 192
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
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
