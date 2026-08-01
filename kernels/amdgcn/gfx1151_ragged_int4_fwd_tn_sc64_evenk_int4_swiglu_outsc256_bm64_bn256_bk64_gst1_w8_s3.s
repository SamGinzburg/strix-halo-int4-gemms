	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_dual_mov_b32 v98, v0 :: v_dual_mov_b32 v73, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v98
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s17, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s7, s2, 1
	s_sub_i32 s13, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s3, s13, s3
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s20, s2, s17
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s20, s17
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s2
	v_add_nc_u32_e32 v0, s34, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow779
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v99, 15, v98
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v100, 0xf0, v98
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v72, 0x80, v98
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s21, s[0:1], 0x58
	s_load_b32 s22, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s34, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	v_lshrrev_b32_e32 v10, 1, v98
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v182, 0, v99
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[4:5]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[18:19], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[4:5]
	v_cmp_le_i64_e64 s1, s[38:39], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[6:7]
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v10, 0x70, v10
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v4, s34, v99
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s4, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_and_b32 s5, s15, 0xffff
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s4, s21
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v184, v182, v10
	v_dual_mov_b32 v199, 0 :: v_dual_lshlrev_b32 v10, 5, v98
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v7, 16, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s15, s40, s18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[38:39], v[8:9]
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s19, s15, s33
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[8:9]
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s42, s4, s18
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v8, 32, v4
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v9, 48, v4
	s_mov_b32 s4, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s14, s15, 1
	v_mul_lo_u32 v4, s40, v4
	s_lshl_b32 s15, s20, 8
	s_lshl_b32 s19, s19, 1
	s_or_b32 s14, s14, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[2:3]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v3, 7, v72
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v11, 2, v100
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v13, s19, s15, v98
	s_mul_i32 s14, s33, s14
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v2, 6, v98
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v12, s14, s15, v98
	s_lshl_b32 s14, s17, 8
	v_add3_u32 v23, 0, v11, v10
	v_subrev_nc_u32_e32 v11, s14, v13
	v_dual_mov_b32 v202, 0 :: v_dual_lshlrev_b32 v13, 1, v4
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v4, 1, v3
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v6, 28, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v8, s40, v8
	v_mul_lo_u32 v7, s40, v7
	s_mul_i32 s21, s21, s18
	v_subrev_nc_u32_e32 v10, s14, v12
	v_lshl_add_u32 v4, s21, 1, v4
	v_mad_u64_u32 v[14:15], null, v6, s22, v[1:2]
	v_or_b32_e32 v6, 24, v2
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v58, 1, v11
	v_dual_mov_b32 v198, 0 :: v_dual_lshlrev_b32 v11, 1, v8
	v_dual_mov_b32 v177, 0 :: v_dual_lshlrev_b32 v12, 1, v7
	v_or_b32_e32 v7, 20, v2
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v8, 61, v4
	v_mad_u64_u32 v[15:16], null, s22, v6, v[1:2]
	v_or_b32_e32 v6, 16, v2
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_dual_mov_b32 v211, 0 :: v_dual_lshlrev_b32 v0, 1, v98
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v5, 12, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[26:27], null, s22, v7, v[1:2]
	v_mul_lo_u32 v7, s33, v8
	v_mad_u64_u32 v[27:28], null, s22, v6, v[1:2]
	v_or_b32_e32 v6, 8, v2
	v_dual_mov_b32 v209, 0 :: v_dual_and_b32 v18, 0xfe, v0
	v_mad_u64_u32 v[28:29], null, v5, s22, v[1:2]
	v_or_b32_e32 v5, 4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[29:30], null, s22, v6, v[1:2]
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v8, 57, v4
	v_mad_u64_u32 v[30:31], null, s22, v5, v[1:2]
	v_add3_u32 v5, v7, s15, v18
	v_or_b32_e32 v7, 30, v3
	v_mad_u64_u32 v[16:17], null, s22, v2, v[1:2]
	v_mul_lo_u32 v6, s33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s14, v5
	v_mul_lo_u32 v5, s33, v7
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v1, 53, v4
	v_mov_b32_e32 v196, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v2, 1, v2
	v_mul_lo_u32 v1, s33, v1
	v_add3_u32 v6, v6, s15, v18
	v_lshlrev_b32_e32 v5, 1, v5
	scratch_store_b32 off, v2, off offset:344 ; 4-byte Folded Spill
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v2, 49, v4
	v_or_b32_e32 v7, 28, v3
	v_subrev_nc_u32_e32 v6, s14, v6
	v_add3_u32 v1, v1, s15, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, s33, v2
	v_mov_b32_e32 v192, 0
	v_mul_lo_u32 v7, s33, v7
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v6, 1, v6
	v_subrev_nc_u32_e32 v1, s14, v1
	scratch_store_b32 off, v5, off offset:348 ; 4-byte Folded Spill
	v_mov_b32_e32 v91, 0
	v_add3_u32 v2, v2, s15, v18
	v_mov_b32_e32 v119, 0
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v6, off offset:352 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v6, 1, v7
	v_subrev_nc_u32_e32 v2, s14, v2
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v5, 45, v4
	v_or_b32_e32 v7, 24, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, 1, v2
	scratch_store_b32 off, v6, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 26, v3
	v_mul_lo_u32 v5, s33, v5
	v_mul_lo_u32 v7, s33, v7
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v178, 0
	v_mul_lo_u32 v6, s33, v6
	v_or_b32_e32 v8, 22, v3
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v176, 0
	v_add3_u32 v5, v5, s15, v18
	v_lshlrev_b32_e32 v7, 1, v7
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v0, 28, v0
	v_lshlrev_b32_e32 v6, 1, v6
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 41, v4
	v_subrev_nc_u32_e32 v5, s14, v5
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v0, v23, v0
	scratch_store_b32 off, v6, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v1
	v_add_nc_u32_e32 v6, 37, v4
	v_add_nc_u32_e32 v5, 1, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:368
	scratch_store_b32 off, v0, off offset:488
	v_mul_lo_u32 v2, s33, v8
	v_mul_lo_u32 v6, s33, v6
	v_mov_b32_e32 v96, 0
	v_add3_u32 v1, v1, s15, v18
	v_mov_b32_e32 v87, 0
	v_or_b32_e32 v8, 18, v3
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v90, 0
	v_subrev_nc_u32_e32 v1, s14, v1
	v_add3_u32 v6, v6, s15, v18
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v7, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v7, 20, v3
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v5, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 33, v4
	v_mul_lo_u32 v8, s33, v8
	v_mov_b32_e32 v172, 0
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s14, v6
	v_mul_lo_u32 v5, s33, v5
	v_or_b32_e32 v6, 16, v3
	v_mov_b32_e32 v94, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s33, v7
	v_add_nc_u32_e32 v7, 29, v4
	v_add3_u32 v5, v5, s15, v18
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_mul_lo_u32 v6, s33, v6
	v_mov_b32_e32 v139, 0
	v_mul_lo_u32 v7, s33, v7
	v_subrev_nc_u32_e32 v1, s14, v5
	v_lshlrev_b32_e32 v2, 1, v2
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v86, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v1, 1, v1
	v_mov_b32_e32 v118, 0
	v_add3_u32 v5, v7, s15, v18
	v_lshlrev_b32_e32 v7, 1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:388
	scratch_store_b32 off, v1, off offset:400
	v_lshlrev_b32_e32 v1, 1, v6
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v2, 25, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:396
	scratch_store_b32 off, v99, off offset:496
	v_add_nc_u32_e32 v7, 21, v4
	v_mul_lo_u32 v2, s33, v2
	v_mov_b32_e32 v138, 0
	v_or_b32_e32 v8, 10, v3
	v_mov_b32_e32 v108, 0
	v_mul_lo_u32 v6, s33, v7
	v_or_b32_e32 v7, 12, v3
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v17, 13, v4
	v_mov_b32_e32 v136, 0
	v_add3_u32 v2, v2, s15, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v7, s33, v7
	v_mov_b32_e32 v133, 0
	v_add3_u32 v6, v6, s15, v18
	v_mov_b32_e32 v250, 0
	v_subrev_nc_u32_e32 v2, s14, v2
	v_mov_b32_e32 v246, 0
	v_mov_b32_e32 v156, 0
	v_or_b32_e32 v19, 0x300, v98
	v_lshlrev_b32_e32 v7, 1, v7
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s14, v5
	v_or_b32_e32 v5, 14, v3
	v_mov_b32_e32 v252, 0
	v_or_b32_e32 v20, 0x700, v98
	v_or_b32_e32 v21, 0x3f0, v98
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v100, off offset:500 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s40, v9
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v5
	v_add_nc_u32_e32 v5, 17, v4
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v25, 0, v98
	v_or_b32_e32 v22, 0x7f0, v98
	v_dual_mov_b32 v197, 0 :: v_dual_lshlrev_b32 v24, 1, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v5, s33, v5
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v181, s41, 8, v18
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v63, 1, v10
	v_dual_mov_b32 v204, 0 :: v_dual_lshlrev_b32 v9, 1, v9
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v227, v25, v98
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v5, v5, s15, v18
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v229, 0, v24
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v132, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v5, s14, v5
	v_mov_b32_e32 v249, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v130, 0
	v_mov_b32_e32 v157, 0
	v_add_nc_u32_e32 v5, 1, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:412
	scratch_store_b32 off, v72, off offset:504
	v_add_nc_u32_e32 v1, 1, v2
	v_mul_lo_u32 v2, s33, v8
	v_or_b32_e32 v8, 8, v3
	scratch_store_b32 off, v5, off offset:432 ; 4-byte Folded Spill
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v255, 0
	v_mov_b32_e32 v102, 0
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s14, v6
	v_mul_lo_u32 v6, s33, v17
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v126, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v7, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, 9, v4
	v_add3_u32 v6, v6, s15, v18
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v124, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v5, s14, v6
	v_mul_lo_u32 v7, s33, v7
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v5, 1, v5
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v8
	v_mov_b32_e32 v150, 0
	v_add3_u32 v6, v7, s15, v18
	v_or_b32_e32 v7, 2, v3
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v116, 0
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 5, v4
	v_mul_lo_u32 v4, s33, v4
	v_mul_lo_u32 v7, s33, v7
	v_subrev_nc_u32_e32 v6, s14, v6
	v_mov_b32_e32 v146, 0
	v_mul_lo_u32 v2, s33, v2
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v143, 0
	v_mov_b32_e32 v114, 0
	v_add3_u32 v2, v2, s15, v18
	s_add_i32 s15, s15, s33
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v112, 0
	v_add3_u32 v4, s15, v4, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v2, s14, v2
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 6, v3
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v106, 0
	scratch_store_b32 off, v2, off offset:456 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v7
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v80, 0
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v5, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 4, v3
	v_mul_lo_u32 v3, s33, v3
	v_mov_b32_e32 v117, 0
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s14, v4
	v_mul_lo_u32 v5, s33, v5
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v4, 1, v6
	v_mov_b32_e32 v77, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 1, v1
	v_mov_b32_e32 v113, 0
	scratch_store_b32 off, v4, off offset:448 ; 4-byte Folded Spill
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v4, 1, v5
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v3
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v105, 0
	scratch_store_b32 off, v4, off offset:452 ; 4-byte Folded Spill
	v_mov_b32_e32 v107, 0
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	scratch_store_b32 off, v2, off offset:460 ; 4-byte Folded Spill
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v81, 0
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_mov_b32_e32 v73, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s6, s7
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s16, 0
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v22
	s_add_u32 s43, s42, s33
	s_and_b32 s13, s13, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s44, s33, 2
	s_lshl_b32 s45, s22, 5
	s_lshl_b32 s46, s33, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s47, s16
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:484
	scratch_store_b32 off, v98, off offset:492
	scratch_store_b32 off, v25, off offset:340
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v8, off, off offset:468 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 152-byte Folded Spill
	scratch_store_b64 off, v[30:31], off offset:252
	scratch_store_b64 off, v[29:30], off offset:244
	scratch_store_b64 off, v[28:29], off offset:236
	scratch_store_b64 off, v[27:28], off offset:228
	scratch_store_b64 off, v[26:27], off offset:220
	scratch_store_b64 off, v[15:16], off offset:212
	scratch_store_b32 off, v211, off offset:208
	scratch_store_b32 off, v210, off offset:204
	scratch_store_b32 off, v209, off offset:200
	scratch_store_b32 off, v69, off offset:196
	scratch_store_b32 off, v208, off offset:192
	scratch_store_b32 off, v207, off offset:188
	scratch_store_b32 off, v206, off offset:184
	scratch_store_b32 off, v205, off offset:180
	scratch_store_b32 off, v70, off offset:176
	scratch_store_b32 off, v71, off offset:172
	scratch_store_b32 off, v204, off offset:168
	scratch_store_b32 off, v203, off offset:164
	scratch_store_b32 off, v202, off offset:160
	scratch_store_b32 off, v201, off offset:156
	scratch_store_b32 off, v200, off offset:152
	scratch_store_b32 off, v199, off offset:148
	scratch_store_b32 off, v198, off offset:144
	scratch_store_b32 off, v197, off offset:140
	scratch_store_b32 off, v196, off offset:136
	scratch_store_b32 off, v195, off offset:132
	scratch_store_b32 off, v194, off offset:128
	scratch_store_b32 off, v193, off offset:124
	scratch_store_b32 off, v192, off offset:120
	scratch_store_b32 off, v68, off offset:116
	scratch_store_b32 off, v83, off offset:112
	scratch_store_b32 off, v132, off offset:108
	s_clause 0x1a                           ; 108-byte Folded Spill
	scratch_store_b32 off, v79, off offset:104
	scratch_store_b32 off, v102, off offset:100
	scratch_store_b32 off, v101, off offset:96
	scratch_store_b32 off, v93, off offset:92
	scratch_store_b32 off, v92, off offset:88
	scratch_store_b32 off, v86, off offset:84
	scratch_store_b32 off, v84, off offset:80
	scratch_store_b32 off, v87, off offset:76
	scratch_store_b32 off, v85, off offset:72
	scratch_store_b32 off, v78, off offset:68
	scratch_store_b32 off, v77, off offset:64
	scratch_store_b32 off, v76, off offset:60
	scratch_store_b32 off, v103, off offset:56
	scratch_store_b32 off, v97, off offset:52
	scratch_store_b32 off, v96, off offset:48
	scratch_store_b32 off, v95, off offset:44
	scratch_store_b32 off, v94, off offset:40
	scratch_store_b32 off, v91, off offset:36
	scratch_store_b32 off, v90, off offset:32
	scratch_store_b32 off, v89, off offset:28
	scratch_store_b32 off, v88, off offset:24
	scratch_store_b32 off, v82, off offset:20
	scratch_store_b32 off, v75, off offset:16
	scratch_store_b32 off, v81, off offset:12
	scratch_store_b32 off, v80, off offset:8
	scratch_store_b32 off, v74, off offset:4
	scratch_store_b32 off, v73, off
	v_dual_mov_b32 v164, v143 :: v_dual_mov_b32 v161, v108
	v_add_nc_u32_e32 v6, s34, v15
	v_dual_mov_b32 v166, v137 :: v_dual_mov_b32 v163, v142
	v_dual_mov_b32 v186, v173 :: v_dual_mov_b32 v167, v138
	v_mov_b32_e32 v158, v131
	v_mov_b32_e32 v160, v141
	v_add_nc_u32_e32 v0, s34, v16
	v_dual_mov_b32 v162, v133 :: v_dual_add_nc_u32 v1, s34, v30
	v_dual_mov_b32 v189, v152 :: v_dual_add_nc_u32 v2, s34, v29
	v_add_nc_u32_e32 v4, s34, v27
	v_dual_mov_b32 v152, v123 :: v_dual_add_nc_u32 v3, s34, v28
	v_dual_mov_b32 v134, v106 :: v_dual_add_nc_u32 v5, s34, v26
	v_dual_mov_b32 v10, v180 :: v_dual_add_nc_u32 v7, s34, v14
	v_mov_b32_e32 v133, v104
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v123, v105
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_dual_mov_b32 v180, v156 :: v_dual_mov_b32 v159, v153
	v_dual_mov_b32 v156, v129 :: v_dual_mov_b32 v129, v110
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[28:31], 0 offen
	buffer_load_u8 v1, v1, s[28:31], 0 offen
	buffer_load_u8 v2, v2, s[28:31], 0 offen
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v3, v3, s[28:31], 0 offen
	v_mov_b32_e32 v62, v14
	v_mov_b32_e32 v14, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v16, s45, v16
	s_add_i32 s40, s40, -1
	v_mov_b32_e32 v185, v157
	v_dual_mov_b32 v157, v130 :: v_dual_mov_b32 v130, v111
	v_mov_b32_e32 v153, v125
	v_mov_b32_e32 v143, v116
	v_mov_b32_e32 v15, v13
	v_mov_b32_e32 v13, v11
	v_mov_b32_e32 v11, v58
	v_mov_b32_e32 v58, v170
	v_mov_b32_e32 v170, v146
	v_mov_b32_e32 v146, v136
	v_dual_mov_b32 v136, v117 :: v_dual_mov_b32 v137, v118
	v_mov_b32_e32 v173, v149
	v_mov_b32_e32 v149, v119
	v_mov_b32_e32 v169, v145
	v_mov_b32_e32 v145, v135
	v_mov_b32_e32 v188, v175
	v_mov_b32_e32 v175, v151
	v_mov_b32_e32 v135, v107
	v_mov_b32_e32 v61, v172
	v_dual_mov_b32 v172, v148 :: v_dual_mov_b32 v187, v174
	v_dual_mov_b32 v148, v140 :: v_dual_mov_b32 v151, v122
	v_mov_b32_e32 v140, v112
	v_mov_b32_e32 v174, v150
	v_mov_b32_e32 v150, v121
	v_mov_b32_e32 v131, v113
	v_mov_b32_e32 v141, v114
	s_waitcnt vmcnt(8)
	v_add3_u32 v210, v8, s47, v181
	v_mov_b32_e32 v60, v147
	v_mov_b32_e32 v147, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v139, v124 :: v_dual_add_nc_u32 v8, s42, v210
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v85, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v211, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v211
	buffer_load_u16 v87, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v243, v8, s47, v181
	v_mov_b32_e32 v144, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s42, v243
	buffer_load_u16 v88, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v242, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v242
	buffer_load_u16 v89, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v241, v8, s47, v181
	v_mov_b32_e32 v128, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s42, v241
	buffer_load_u16 v90, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v240, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v240
	buffer_load_u16 v91, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v239, v8, s47, v181
	v_dual_mov_b32 v190, v177 :: v_dual_mov_b32 v177, v154
	v_mov_b32_e32 v154, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s42, v239
	buffer_load_u16 v92, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v238, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v238
	buffer_load_u16 v93, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v237, v8, s47, v181
	v_dual_mov_b32 v12, v9 :: v_dual_mov_b32 v9, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s42, v237
	buffer_load_u16 v94, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v236, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v236
	buffer_load_u16 v95, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v235, v8, s47, v181
	v_mov_b32_e32 v178, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v155, v127 :: v_dual_add_nc_u32 v8, s42, v235
	buffer_load_u16 v96, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v234, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v234
	buffer_load_u16 v97, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v233, v8, s47, v181
	v_mov_b32_e32 v142, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s42, v233
	buffer_load_u16 v98, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v232, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v232
	buffer_load_u16 v99, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v231, v8, s47, v181
	v_mov_b32_e32 v138, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v8, s42, v231
	buffer_load_u16 v101, v8, s[8:11], 0 offen
	scratch_load_b32 v8, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v230, v8, s47, v181
	v_add_nc_u32_e32 v8, s42, v230
	buffer_load_u16 v102, v8, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v8, v0
	ds_store_b8 v8, v1 offset:256
	ds_store_b8 v8, v2 offset:512
	ds_store_b8 v8, v4 offset:1024
	ds_store_b8 v8, v5 offset:1280
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v3
	ds_store_b8 v8, v6 offset:1536
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v6, off, off offset:480 ; 4-byte Folded Reload
	ds_load_u8 v0, v182 offset:320
	ds_load_u8 v1, v182 offset:256
	ds_load_u8 v35, v182 offset:336
	ds_load_u8 v25, v182 offset:272
	ds_load_u8 v45, v182 offset:352
	ds_load_u8 v44, v182 offset:288
	ds_load_u8 v2, v182 offset:368
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v25, v25, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v2, v182 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v1, v182 offset:448
	ds_load_u8 v2, v182 offset:384
	ds_load_u8 v34, v182 offset:464
	ds_load_u8 v26, v182 offset:400
	ds_load_u8 v43, v182 offset:480
	ds_load_u8 v42, v182 offset:416
	ds_load_u8 v3, v182 offset:496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v26, v26, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v42, v43, 0xc0c0004
	v_lshl_or_b32 v18, v1, 16, v0
	ds_load_u8 v8, v182 offset:960
	ds_load_u8 v19, v182 offset:896
	ds_load_u8 v1, v182 offset:1024
	ds_load_u8 v183, v182 offset:976
	ds_load_u8 v52, v182 offset:912
	ds_load_u8 v200, v182 offset:992
	ds_load_u8 v201, v182 offset:928
	ds_load_u8 v0, v182 offset:944
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v3, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v3, v182 offset:432
	v_lshl_or_b32 v26, v26, 16, v25
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v8, v19, v8, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v20, v182 offset:832
	ds_load_u8 v53, v182 offset:768
	ds_load_u8 v29, v182 offset:848
	ds_load_u8 v132, v182 offset:784
	ds_load_u8 v202, v182 offset:864
	ds_load_u8 v203, v182 offset:800
	ds_load_u8 v0, v182 offset:880
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v53, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v0, v182 offset:816
	scratch_store_b32 off, v3, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v2, v182 offset:64
	ds_load_u8 v3, v182
	ds_load_u8 v33, v182 offset:80
	ds_load_u8 v41, v182 offset:96
	ds_load_u8 v4, v182 offset:112
	v_lshl_or_b32 v20, v8, 16, v20
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v59, v182 offset:704
	ds_load_u8 v64, v182 offset:640
	ds_load_u8 v31, v182 offset:720
	ds_load_u8 v30, v182 offset:656
	ds_load_u8 v204, v182 offset:736
	ds_load_u8 v205, v182 offset:672
	ds_load_u8 v0, v182 offset:752
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v4, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v27, v182 offset:16
	ds_load_u8 v38, v182 offset:32
	ds_load_u8 v4, v182 offset:48
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v64, v59, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v0, v182 offset:688
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v3, v182 offset:192
	ds_load_u8 v4, v182 offset:128
	ds_load_u8 v28, v182 offset:208
	ds_load_u8 v32, v182 offset:144
	ds_load_u8 v36, v182 offset:224
	ds_load_u8 v37, v182 offset:160
	ds_load_u8 v5, v182 offset:240
	v_perm_b32 v35, v38, v41, 0xc0c0004
	v_perm_b32 v27, v27, v33, 0xc0c0004
	v_perm_b32 v33, v44, v45, 0xc0c0004
	v_perm_b32 v38, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v28, v32, v28, 0xc0c0004
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v76, v182 offset:576
	ds_load_u8 v82, v182 offset:512
	ds_load_u8 v68, v182 offset:592
	ds_load_u8 v69, v182 offset:528
	ds_load_u8 v206, v182 offset:608
	ds_load_u8 v207, v182 offset:544
	ds_load_u8 v0, v182 offset:624
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v5, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v5, v182 offset:176
	v_lshl_or_b32 v17, v3, 16, v2
	v_lshl_or_b32 v25, v28, 16, v27
	v_perm_b32 v27, v132, v29, 0xc0c0004
	v_perm_b32 v28, v52, v183, 0xc0c0004
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v28, v28, 16, v27
	v_lshl_or_b32 v33, v36, 16, v35
	v_perm_b32 v35, v203, v202, 0xc0c0004
	v_perm_b32 v36, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v82, v76, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v69, v68, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_lshl_or_b32 v19, v53, 16, v19
	v_lshl_or_b32 v27, v30, 16, v29
	v_lshl_or_b32 v35, v38, 16, v37
	s_waitcnt vmcnt(0)
	ds_load_u8 v195, v6
	scratch_load_b32 v6, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v46, v182 offset:560
	ds_load_u8 v4, v182 offset:1216
	ds_load_u8 v5, v182 offset:1280
	ds_load_u8 v70, v182 offset:1232
	ds_load_u8 v71, v182 offset:1168
	ds_load_u8 v208, v182 offset:1248
	ds_load_u8 v209, v182 offset:1184
	ds_load_u8 v0, v182 offset:1264
	s_waitcnt vmcnt(0)
	ds_load_u8 v179, v6
	ds_load_u8 v50, v182 offset:1968
	ds_load_u8 v6, v182 offset:1920
	ds_load_u8 v7, v182 offset:1856
	ds_load_u8 v84, v182 offset:1872
	ds_load_u8 v73, v182 offset:1808
	ds_load_u8 v221, v182 offset:1888
	ds_load_u8 v222, v182 offset:1824
	ds_load_u8 v193, v182 offset:1904
	ds_load_u8 v194, v182 offset:1840
	ds_load_u8 v23, v182 offset:1728
	ds_load_u8 v24, v182 offset:1792
	ds_load_u8 v86, v182 offset:1744
	ds_load_u8 v74, v182 offset:1680
	ds_load_u8 v224, v182 offset:1760
	ds_load_u8 v225, v182 offset:1696
	ds_load_u8 v196, v182 offset:1776
	ds_load_u8 v197, v182 offset:1712
	ds_load_u8 v55, v182 offset:1664
	ds_load_u8 v57, v182 offset:1600
	ds_load_u8 v80, v182 offset:1616
	ds_load_u8 v81, v182 offset:1552
	ds_load_u8 v226, v182 offset:1632
	ds_load_u8 v228, v182 offset:1568
	ds_load_u8 v198, v182 offset:1648
	ds_load_u8 v199, v182 offset:1584
	s_waitcnt lgkmcnt(26)
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v0, v182 offset:1200
	v_perm_b32 v32, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v68, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v52, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v21, v182 offset:1152
	ds_load_u8 v22, v182 offset:1088
	ds_load_u8 v56, v182 offset:1104
	ds_load_u8 v0, v182 offset:1040
	ds_load_u8 v39, v182 offset:1120
	ds_load_u8 v40, v182 offset:1056
	ds_load_u8 v48, v182 offset:1136
	ds_load_u8 v47, v182 offset:1072
	ds_load_u8 v54, v182 offset:1472
	ds_load_u8 v2, v182 offset:1536
	ds_load_u8 v77, v182 offset:1488
	ds_load_u8 v78, v182 offset:1424
	ds_load_u8 v213, v182 offset:1504
	ds_load_u8 v215, v182 offset:1440
	ds_load_u8 v49, v182 offset:1520
	ds_load_u8 v51, v182 offset:1456
	ds_load_u8 v65, v182 offset:1408
	ds_load_u8 v75, v182 offset:1344
	ds_load_u8 v79, v182 offset:1360
	ds_load_u8 v67, v182 offset:1296
	ds_load_u8 v217, v182 offset:1376
	ds_load_u8 v219, v182 offset:1312
	ds_load_u8 v191, v182 offset:1392
	ds_load_u8 v192, v182 offset:1328
	ds_load_u8 v3, v182 offset:1984
	ds_load_u8 v66, v182 offset:2000
	ds_load_u8 v72, v182 offset:1936
	ds_load_u8 v218, v182 offset:2016
	ds_load_u8 v220, v182 offset:1952
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v227, v85
	ds_store_b16 v227, v87 offset:512
	ds_store_b16 v227, v88 offset:1024
	ds_store_b16 v227, v89 offset:1536
	ds_store_b16 v227, v90 offset:2048
	ds_store_b16 v227, v91 offset:2560
	ds_store_b16 v227, v92 offset:3072
	ds_store_b16 v227, v93 offset:3584
	ds_store_b16 v227, v94 offset:4096
	ds_store_b16 v227, v95 offset:4608
	ds_store_b16 v227, v96 offset:5120
	ds_store_b16 v227, v97 offset:5632
	ds_store_b16 v227, v98 offset:6144
	ds_store_b16 v227, v99 offset:6656
	ds_store_b16 v227, v101 offset:7168
	ds_store_b16 v227, v102 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v31, v0, v56, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:260
	scratch_load_b32 v41, off, off offset:264
	ds_load_u8 v8, v184 offset:3328
	ds_load_u8 v53, v184 offset:3072
	ds_load_u8 v212, v184 offset:3968
	ds_load_u8 v214, v184 offset:3712
	ds_load_u8 v216, v184 offset:3456
	ds_load_u8 v223, v184 offset:3200
	v_perm_b32 v1, v1, v22, 0xc0c0004
	v_perm_b32 v4, v21, v4, 0xc0c0004
	v_perm_b32 v5, v5, v75, 0xc0c0004
	v_perm_b32 v2, v2, v57, 0xc0c0004
	ds_load_u8 v85, v184 offset:1280
	ds_load_u8 v87, v184 offset:1024
	ds_load_u8 v103, v184 offset:1920
	ds_load_u8 v104, v184 offset:1664
	ds_load_u8 v106, v184 offset:1152
	ds_load_u8 v119, v184 offset:2176
	ds_load_u8 v105, v184 offset:1408
	ds_load_u8 v110, v184 offset:896
	ds_load_u8 v111, v184 offset:640
	ds_load_u8 v116, v184 offset:384
	ds_load_u8 v117, v184 offset:128
	v_lshl_or_b32 v21, v4, 16, v1
	v_perm_b32 v3, v6, v3, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v53, v8, 0xc0c0004
	ds_load_u8 v53, v184 offset:3840
	ds_load_u8 v59, v184 offset:3584
	ds_load_u8 v118, v184 offset:2432
	ds_load_u8 v107, v184 offset:5504
	ds_load_u8 v113, v184 offset:4992
	ds_load_u8 v114, v184 offset:4736
	ds_load_u8 v124, v184 offset:4480
	ds_load_u8 v125, v184 offset:4224
	ds_load_u8 v122, v184 offset:6272
	ds_load_u8 v112, v184 offset:5248
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v184 offset:1792
	ds_load_u8 v88, v184 offset:1536
	ds_load_u8 v126, v184 offset:7552
	ds_load_u8 v127, v184 offset:7296
	ds_load_u8 v115, v184 offset:7040
	ds_load_u8 v120, v184 offset:6784
	ds_load_u8 v121, v184 offset:6528
	v_perm_b32 v29, v67, v79, 0xc0c0004
	v_perm_b32 v30, v78, v77, 0xc0c0004
	v_perm_b32 v56, v74, v86, 0xc0c0004
	v_perm_b32 v37, v219, v217, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v53, v59, v53, 0xc0c0004
	ds_load_u8 v59, v184 offset:2304
	ds_load_u8 v64, v184 offset:2048
	ds_load_u8 v83, v184 offset:2944
	ds_load_u8 v100, v184 offset:2688
	v_lshl_or_b32 v30, v30, 16, v29
	v_lshl_or_b32 v29, v32, 16, v31
	v_perm_b32 v31, v73, v84, 0xc0c0004
	v_lshl_or_b32 v97, v53, 16, v8
	v_perm_b32 v8, v65, v54, 0xc0c0004
	ds_load_u8 v1, v184 offset:5376
	ds_load_u8 v4, v184 offset:5120
	ds_load_u8 v53, v184 offset:6016
	ds_load_u8 v54, v184 offset:5760
	v_perm_b32 v32, v72, v66, 0xc0c0004
	v_perm_b32 v38, v215, v213, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_lshl_or_b32 v22, v8, 16, v5
	ds_load_u8 v88, v184 offset:256
	ds_load_u8 v89, v184
	v_lshl_or_b32 v32, v32, 16, v31
	v_lshl_or_b32 v31, v56, 16, v52
	v_lshl_or_b32 v102, v87, 16, v85
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_perm_b32 v40, v209, v208, 0xc0c0004
	v_lshl_or_b32 v38, v38, 16, v37
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v64, v59, 0xc0c0004
	ds_load_u8 v64, v184 offset:2816
	ds_load_u8 v76, v184 offset:2560
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v83, v100, v83, 0xc0c0004
	v_lshl_or_b32 v37, v40, 16, v39
	v_perm_b32 v39, v222, v221, 0xc0c0004
	v_perm_b32 v40, v220, v218, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	ds_load_u8 v4, v184 offset:5888
	ds_load_u8 v5, v184 offset:5632
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v54, v125, v124, 0xc0c0004
	v_perm_b32 v67, v228, v226, 0xc0c0004
	v_perm_b32 v47, v47, v48, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:768
	ds_load_u8 v90, v184 offset:512
	v_lshl_or_b32 v39, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v76, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v64, 16, v59
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v184 offset:4352
	ds_load_u8 v8, v184 offset:4096
	v_lshl_or_b32 v109, v4, 16, v1
	v_perm_b32 v1, v24, v7, 0xc0c0004
	v_perm_b32 v4, v55, v23, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v24, v3, 16, v1
	v_lshl_or_b32 v23, v4, 16, v2
	ds_load_u8 v1, v184 offset:7424
	ds_load_u8 v2, v184 offset:7168
	ds_load_u8 v55, v184 offset:8064
	ds_load_u8 v57, v184 offset:7808
	v_lshl_or_b32 v101, v89, 16, v88
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v8, v5, 0xc0c0004
	ds_load_u8 v8, v184 offset:4864
	ds_load_u8 v59, v184 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v184 offset:7936
	ds_load_u8 v3, v184 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v59, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v8, 16, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v184 offset:6400
	ds_load_u8 v4, v184 offset:6144
	v_lshl_or_b32 v99, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v184 offset:6912
	ds_load_u8 v5, v184 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v4, 16, v3
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[19:20], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[21:22], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[23:24], v[88:95] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v82, v88
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v75, v89
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v88, v106, v105, 0xc0c0004
	v_perm_b32 v89, v104, v103, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v90
	v_cvt_f32_i32_e32 v85, v91
	v_cvt_f32_i32_e32 v59, v93
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v90, v117, v116, 0xc0c0004
	v_perm_b32 v91, v111, v110, 0xc0c0004
	v_lshl_or_b32 v111, v89, 16, v88
	v_perm_b32 v88, v223, v216, 0xc0c0004
	v_perm_b32 v89, v214, v212, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v59, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v59, v94
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v110, v91, 16, v90
	v_perm_b32 v90, v119, v118, 0xc0c0004
	v_lshl_or_b32 v104, v89, 16, v88
	v_perm_b32 v88, v114, v113, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v76, v92
	scratch_store_b32 off, v59, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v59, v95
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v103, v83, 16, v90
	v_perm_b32 v83, v112, v107, 0xc0c0004
	v_lshl_or_b32 v116, v88, 16, v54
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v54, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v117, v53, 16, v83
	v_perm_b32 v53, v127, v126, 0xc0c0004
	v_perm_b32 v55, v122, v121, 0xc0c0004
	v_perm_b32 v57, v120, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[19:20], v[88:95] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v83, s43, v210
	v_lshl_or_b32 v106, v54, 16, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v105, v57, 16, v55
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[21:22], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[23:24], v[88:95] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v53, v95
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v59, off offset:328 ; 4-byte Folded Spill
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v88
	v_cvt_f32_i32_e32 v216, v93
	v_cvt_f32_i32_e32 v214, v94
	scratch_store_b32 off, v53, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v55, v89
	v_cvt_f32_i32_e32 v54, v90
	v_cvt_f32_i32_e32 v53, v91
	v_cvt_f32_i32_e32 v223, v92
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[27:28], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[29:30], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[31:32], v[88:95] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v81, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v80, v89
	v_cvt_f32_i32_e32 v79, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v78, v91
	v_cvt_f32_i32_e32 v74, v92
	v_cvt_f32_i32_e32 v73, v93
	v_cvt_f32_i32_e32 v72, v94
	v_cvt_f32_i32_e32 v71, v95
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[27:28], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[29:30], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[31:32], v[88:95] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:268
	scratch_load_b32 v42, off, off offset:272
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v59, v88
	v_cvt_f32_i32_e32 v65, v93
	v_cvt_f32_i32_e32 v132, v94
	v_cvt_f32_i32_e32 v212, v95
	v_cvt_f32_i32_e32 v66, v89
	v_cvt_f32_i32_e32 v52, v90
	v_cvt_f32_i32_e32 v56, v91
	v_cvt_f32_i32_e32 v64, v92
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[35:36], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[37:38], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[39:40], v[88:95] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v207, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v206, v89
	v_cvt_f32_i32_e32 v205, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v91
	v_cvt_f32_i32_e32 v203, v92
	v_cvt_f32_i32_e32 v202, v93
	v_cvt_f32_i32_e32 v201, v94
	v_cvt_f32_i32_e32 v200, v95
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[35:36], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[37:38], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[39:40], v[88:95] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v77, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v93
	v_cvt_f32_i32_e32 v68, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v67, v95
	v_cvt_f32_i32_e32 v183, v89
	v_cvt_f32_i32_e32 v86, v90
	v_cvt_f32_i32_e32 v84, v91
	v_cvt_f32_i32_e32 v70, v92
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v42, v42, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v43, off, off offset:280
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v43, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:284
	scratch_load_b32 v44, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v44, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	v_lshl_or_b32 v41, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v46, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b32 v44, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v44, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v45, off, off offset:300
	v_lshl_or_b32 v43, v44, 16, v43
	s_waitcnt vmcnt(0)
	v_perm_b32 v45, v45, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v46, v0, v195, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b32 v48, off, off offset:320
	v_lshl_or_b32 v44, v46, 16, v45
	v_perm_b32 v45, v192, v191, 0xc0c0004
	v_perm_b32 v46, v51, v49, 0xc0c0004
	v_perm_b32 v49, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[43:44], v[88:95] neg_lo:[1,1,0]
	scratch_load_b32 v97, off, off offset:448 ; 4-byte Folded Reload
	v_lshl_or_b32 v46, v46, 16, v45
	scratch_load_b32 v96, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_perm_b32 v48, v48, v0, 0xc0c0004
	v_perm_b32 v0, v50, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v45, v48, 16, v47
	v_perm_b32 v47, v199, v198, 0xc0c0004
	v_perm_b32 v48, v197, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[45:46], v[88:95] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v97, s47, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v48, 16, v47
	v_lshl_or_b32 v48, v0, 16, v49
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[47:48], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v209, v88
	v_cvt_f32_i32_e32 v208, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v90
	v_cvt_f32_i32_e32 v198, v91
	v_cvt_f32_i32_e32 v197, v92
	v_cvt_f32_i32_e32 v196, v93
	v_cvt_f32_i32_e32 v195, v94
	v_cvt_f32_i32_e32 v194, v95
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[43:44], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[45:46], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[47:48], v[88:95] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v179, v88
	v_add_nc_u32_e32 v88, s43, v211
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v193, v89
	v_add_nc_u32_e32 v89, s43, v243
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v97, v97, s[8:11], 0 offen
	buffer_load_u8 v98, v88, s[8:11], 0 offen
	buffer_load_u8 v99, v89, s[8:11], 0 offen
	scratch_load_b32 v88, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v192, v90
	v_add_nc_u32_e32 v90, s43, v242
	v_cvt_f32_i32_e32 v191, v91
	v_add_nc_u32_e32 v91, s43, v241
	v_cvt_f32_i32_e32 v51, v92
	v_add_nc_u32_e32 v92, s43, v240
	v_cvt_f32_i32_e32 v50, v93
	v_add_nc_u32_e32 v93, s43, v239
	v_cvt_f32_i32_e32 v49, v94
	v_add_nc_u32_e32 v94, s43, v238
	v_cvt_f32_i32_e32 v0, v95
	scratch_load_b32 v95, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v89.l, 8, v97.l
	v_add_nc_u32_e32 v97, s43, v231
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v88, s47, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v89.l, v99.l, v89.l
	scratch_load_b32 v99, off, off offset:400 ; 4-byte Folded Reload
	buffer_load_u8 v100, v88, s[8:11], 0 offen
	scratch_load_b32 v88, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v89.h, 8, v100.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, s47, v88
	s_clause 0x2
	buffer_load_u8 v101, v88, s[8:11], 0 offen
	buffer_load_u8 v90, v90, s[8:11], 0 offen
	buffer_load_u8 v91, v91, s[8:11], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:424
	scratch_load_b32 v100, off, off offset:392
	s_waitcnt vmcnt(3)
	v_or_b16 v89.h, v90.l, v89.h
	v_lshlrev_b16 v90.l, 8, v101.l
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v88, s47, v88
	scratch_load_b32 v101, off, off offset:384 ; 4-byte Folded Reload
	v_or_b16 v90.l, v91.l, v90.l
	buffer_load_u8 v102, v88, s[8:11], 0 offen
	scratch_load_b32 v88, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v101, s47, v101
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v90.h, 8, v102.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, s47, v88
	s_clause 0x2
	buffer_load_u8 v103, v88, s[8:11], 0 offen
	buffer_load_u8 v92, v92, s[8:11], 0 offen
	buffer_load_u8 v93, v93, s[8:11], 0 offen
	scratch_load_b32 v88, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v91.l, 8, v103.l
	s_waitcnt vmcnt(2)
	v_or_b16 v90.h, v92.l, v90.h
	v_add_nc_u32_e32 v92, s43, v236
	s_waitcnt vmcnt(1)
	v_or_b16 v91.l, v93.l, v91.l
	v_add_nc_u32_e32 v93, s43, v235
	s_clause 0x2
	buffer_load_u8 v101, v101, s[8:11], 0 offen
	buffer_load_u8 v102, v92, s[8:11], 0 offen
	buffer_load_u8 v103, v93, s[8:11], 0 offen
	scratch_load_b32 v92, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v88, s47, v88
	s_clause 0x1
	buffer_load_u8 v104, v88, s[8:11], 0 offen
	buffer_load_u8 v94, v94, s[8:11], 0 offen
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v93.l, 8, v101.l
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v92, s47, v92
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v93.l, v103.l, v93.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v91.h, 8, v104.l
	buffer_load_u8 v104, v92, s[8:11], 0 offen
	scratch_load_b32 v92, off, off offset:368 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v95, s47, v95
	s_clause 0x1
	buffer_load_u8 v95, v95, s[8:11], 0 offen
	buffer_load_u8 v83, v83, s[8:11], 0 offen
	s_waitcnt vmcnt(4)
	v_or_b16 v91.h, v94.l, v91.h
	v_add_nc_u32_e32 v94, s43, v234
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v93.h, 8, v104.l
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v92, s47, v92
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v88.l, 8, v95.l
	v_add_nc_u32_e32 v95, s43, v233
	s_clause 0x2
	buffer_load_u8 v105, v92, s[8:11], 0 offen
	buffer_load_u8 v94, v94, s[8:11], 0 offen
	buffer_load_u8 v95, v95, s[8:11], 0 offen
	scratch_load_b32 v92, off, off offset:360 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v96, s47, v96
	s_waitcnt vmcnt(4)
	v_or_b16 v88.l, v83.l, v88.l
	v_add_nc_u32_e32 v83, s43, v237
	buffer_load_u8 v96, v96, s[8:11], 0 offen
	s_waitcnt vmcnt(3)
	v_or_b16 v93.h, v94.l, v93.h
	v_lshlrev_b16 v94.l, 8, v105.l
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v92, s47, v92
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v94.l, v95.l, v94.l
	buffer_load_u8 v106, v92, s[8:11], 0 offen
	scratch_load_b32 v92, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v88.h, 8, v96.l
	v_add_nc_u32_e32 v96, s43, v232
	v_add_nc_u32_e32 v99, s47, v99
	s_clause 0x1
	buffer_load_u8 v99, v99, s[8:11], 0 offen
	buffer_load_u8 v83, v83, s[8:11], 0 offen
	v_or_b16 v88.h, v98.l, v88.h
	v_add_nc_u32_e32 v98, s43, v230
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v106.l
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v92, s47, v92
	s_clause 0x2
	buffer_load_u8 v107, v92, s[8:11], 0 offen
	buffer_load_u8 v96, v96, s[8:11], 0 offen
	buffer_load_u8 v97, v97, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v92, off, off offset:344 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v100, s47, v100
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v100, v100, s[8:11], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v95.l, 8, v107.l
	s_waitcnt vmcnt(3)
	v_or_b16 v94.h, v96.l, v94.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v92, s47, v92
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v108, v92, s[8:11], 0 offen
	buffer_load_u8 v98, v98, s[8:11], 0 offen
	v_lshlrev_b16 v92.l, 8, v99.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v92.h, 8, v100.l
	v_or_b16 v95.l, v97.l, v95.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v92.l, v83.l, v92.l
	v_or_b16 v92.h, v102.l, v92.h
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s47, s47, s46
	s_cmp_lg_u32 s40, 0
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v95.h, 8, v108.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v95.h, v98.l, v95.h
	ds_store_b16 v227, v88
	ds_store_b16_d16_hi v227, v88 offset:512
	ds_store_b16 v227, v89 offset:1024
	ds_store_b16_d16_hi v227, v89 offset:1536
	ds_store_b16 v227, v90 offset:2048
	ds_store_b16_d16_hi v227, v90 offset:2560
	ds_store_b16 v227, v91 offset:3072
	ds_store_b16_d16_hi v227, v91 offset:3584
	ds_store_b16 v227, v92 offset:4096
	ds_store_b16_d16_hi v227, v92 offset:4608
	ds_store_b16 v227, v93 offset:5120
	ds_store_b16_d16_hi v227, v93 offset:5632
	ds_store_b16 v227, v94 offset:6144
	ds_store_b16_d16_hi v227, v94 offset:6656
	ds_store_b16 v227, v95 offset:7168
	ds_store_b16_d16_hi v227, v95 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v83, v184 offset:1280
	ds_load_u8 v88, v184 offset:1024
	ds_load_u8 v100, v184 offset:1920
	ds_load_u8 v105, v184 offset:1664
	ds_load_u8 v106, v184 offset:1408
	ds_load_u8 v107, v184 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	ds_load_u8 v88, v184 offset:1792
	ds_load_u8 v89, v184 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:256
	ds_load_u8 v90, v184
	ds_load_u8 v108, v184 offset:896
	ds_load_u8 v109, v184 offset:640
	ds_load_u8 v110, v184 offset:384
	ds_load_u8 v111, v184 offset:128
	v_lshl_or_b32 v97, v88, 16, v83
	ds_load_u8 v83, v184 offset:3328
	ds_load_u8 v88, v184 offset:3072
	ds_load_u8 v112, v184 offset:3968
	ds_load_u8 v113, v184 offset:3712
	ds_load_u8 v114, v184 offset:3456
	ds_load_u8 v115, v184 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:768
	ds_load_u8 v91, v184 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v90, 16, v89
	ds_load_u8 v88, v184 offset:3840
	ds_load_u8 v89, v184 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:2304
	ds_load_u8 v90, v184 offset:2048
	ds_load_u8 v116, v184 offset:2944
	ds_load_u8 v117, v184 offset:2688
	ds_load_u8 v118, v184 offset:2432
	ds_load_u8 v119, v184 offset:2176
	v_lshl_or_b32 v99, v88, 16, v83
	ds_load_u8 v83, v184 offset:5376
	ds_load_u8 v88, v184 offset:5120
	ds_load_u8 v120, v184 offset:6016
	ds_load_u8 v121, v184 offset:5760
	ds_load_u8 v122, v184 offset:5504
	ds_load_u8 v124, v184 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:2816
	ds_load_u8 v91, v184 offset:2560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v90, 16, v89
	ds_load_u8 v88, v184 offset:5888
	ds_load_u8 v89, v184 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:4352
	ds_load_u8 v90, v184 offset:4096
	ds_load_u8 v125, v184 offset:4992
	ds_load_u8 v126, v184 offset:4736
	ds_load_u8 v127, v184 offset:4480
	ds_load_u8 v210, v184 offset:4224
	v_lshl_or_b32 v102, v88, 16, v83
	ds_load_u8 v83, v184 offset:7424
	ds_load_u8 v88, v184 offset:7168
	ds_load_u8 v211, v184 offset:8064
	ds_load_u8 v213, v184 offset:7808
	ds_load_u8 v215, v184 offset:7552
	ds_load_u8 v225, v184 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:4864
	ds_load_u8 v91, v184 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v90, 16, v89
	ds_load_u8 v88, v184 offset:7936
	ds_load_u8 v89, v184 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v184 offset:6400
	ds_load_u8 v90, v184 offset:6144
	ds_load_u8 v226, v184 offset:7040
	ds_load_u8 v228, v184 offset:6784
	ds_load_u8 v230, v184 offset:6528
	ds_load_u8 v231, v184 offset:6272
	v_lshl_or_b32 v104, v88, 16, v83
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v184 offset:6912
	ds_load_u8 v91, v184 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v90, 16, v89
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[19:20], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[21:22], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[23:24], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v83, v88
	v_cvt_f32_i32_e32 v224, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v222, v90
	v_cvt_f32_i32_e32 v221, v91
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v88, v107, v106, 0xc0c0004
	v_perm_b32 v89, v105, v100, 0xc0c0004
	v_perm_b32 v90, v111, v110, 0xc0c0004
	v_perm_b32 v91, v109, v108, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v220, v92
	v_cvt_f32_i32_e32 v219, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v106, v89, 16, v88
	v_perm_b32 v88, v115, v114, 0xc0c0004
	v_lshl_or_b32 v105, v91, 16, v90
	v_perm_b32 v89, v113, v112, 0xc0c0004
	v_perm_b32 v90, v119, v118, 0xc0c0004
	v_perm_b32 v91, v117, v116, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v218, v94
	v_cvt_f32_i32_e32 v217, v95
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v109, v89, 16, v88
	v_perm_b32 v88, v124, v122, 0xc0c0004
	v_lshl_or_b32 v108, v91, 16, v90
	v_perm_b32 v89, v121, v120, 0xc0c0004
	v_perm_b32 v90, v210, v127, 0xc0c0004
	v_perm_b32 v91, v126, v125, 0xc0c0004
	v_mov_b32_e32 v107, v135
	v_mov_b32_e32 v135, v145
	v_lshl_or_b32 v111, v89, 16, v88
	v_perm_b32 v88, v225, v215, 0xc0c0004
	v_lshl_or_b32 v110, v91, 16, v90
	v_perm_b32 v89, v213, v211, 0xc0c0004
	v_perm_b32 v90, v231, v230, 0xc0c0004
	v_perm_b32 v91, v228, v226, 0xc0c0004
	v_mov_b32_e32 v145, v169
	v_dual_mov_b32 v115, v142 :: v_dual_mov_b32 v114, v141
	v_mov_b32_e32 v141, v160
	v_lshl_or_b32 v117, v89, 16, v88
	v_lshl_or_b32 v116, v91, 16, v90
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v112, v140
	v_mov_b32_e32 v140, v148
	v_mov_b32_e32 v148, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[19:20], v[88:95] neg_lo:[1,1,0]
	v_dual_mov_b32 v118, v137 :: v_dual_mov_b32 v127, v155
	v_dual_mov_b32 v155, v178 :: v_dual_mov_b32 v178, v9
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[21:22], v[88:95] neg_lo:[1,1,0]
	v_dual_mov_b32 v9, v12 :: v_dual_mov_b32 v12, v14
	v_dual_mov_b32 v121, v150 :: v_dual_mov_b32 v142, v163
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[23:24], v[88:95] neg_lo:[1,1,0]
	v_mov_b32_e32 v124, v139
	v_mov_b32_e32 v172, v61
	v_mov_b32_e32 v119, v149
	v_mov_b32_e32 v149, v173
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v88
	v_cvt_f32_i32_e32 v17, v93
	v_cvt_f32_i32_e32 v18, v94
	v_cvt_f32_i32_e32 v19, v95
	v_cvt_f32_i32_e32 v213, v89
	v_cvt_f32_i32_e32 v211, v90
	v_cvt_f32_i32_e32 v210, v91
	v_cvt_f32_i32_e32 v20, v92
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v113, v131
	v_mov_b32_e32 v173, v186
	v_mov_b32_e32 v139, v147
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[27:28], v[88:95] neg_lo:[1,1,0]
	v_mov_b32_e32 v147, v60
	v_mov_b32_e32 v125, v153
	v_mov_b32_e32 v137, v166
	v_mov_b32_e32 v153, v159
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[29:30], v[88:95] neg_lo:[1,1,0]
	v_mov_b32_e32 v131, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[31:32], v[88:95] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v238, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v237, v89
	v_cvt_f32_i32_e32 v236, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v235, v91
	v_cvt_f32_i32_e32 v230, v92
	v_cvt_f32_i32_e32 v228, v93
	v_cvt_f32_i32_e32 v226, v94
	v_cvt_f32_i32_e32 v225, v95
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[27:28], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[29:30], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[31:32], v[88:95] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v29, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v21, v93
	v_cvt_f32_i32_e32 v22, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v95
	v_cvt_f32_i32_e32 v32, v89
	v_cvt_f32_i32_e32 v31, v90
	v_cvt_f32_i32_e32 v30, v91
	v_cvt_f32_i32_e32 v24, v92
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[35:36], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[37:38], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[39:40], v[88:95] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v243, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v242, v89
	v_cvt_f32_i32_e32 v241, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v240, v91
	v_cvt_f32_i32_e32 v234, v92
	v_cvt_f32_i32_e32 v233, v93
	v_cvt_f32_i32_e32 v232, v94
	v_cvt_f32_i32_e32 v231, v95
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[35:36], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[37:38], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[39:40], v[88:95] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v33, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v93
	v_cvt_f32_i32_e32 v26, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v95
	v_cvt_f32_i32_e32 v36, v89
	v_cvt_f32_i32_e32 v35, v90
	v_cvt_f32_i32_e32 v34, v91
	v_cvt_f32_i32_e32 v28, v92
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[43:44], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[101:102], v[45:46], v[88:95] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:100
	scratch_load_b32 v101, off, off offset:96
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[47:48], v[88:95] neg_lo:[1,1,0]
	scratch_load_b32 v103, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v96, v88
	v_cvt_f32_i32_e32 v97, v89
	v_cvt_f32_i32_e32 v98, v90
	v_cvt_f32_i32_e32 v99, v91
	v_cvt_f32_i32_e32 v239, v92
	v_cvt_f32_i32_e32 v40, v93
	v_cvt_f32_i32_e32 v39, v94
	v_cvt_f32_i32_e32 v38, v95
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[105:106], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v105, v123
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v41, 0x80000000, v12, s0
	v_mov_b32_e32 v123, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[43:44], v[88:95] neg_lo:[1,1,0]
	v_mov_b32_e32 v109, v128
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[45:46], v[88:95] neg_lo:[1,1,0]
	v_mov_b32_e32 v111, v130
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[116:117], v[47:48], v[88:95] neg_lo:[1,1,0]
	v_dual_mov_b32 v117, v136 :: v_dual_mov_b32 v136, v146
	v_mov_b32_e32 v146, v170
	v_mov_b32_e32 v170, v58
	v_dual_mov_b32 v58, v11 :: v_dual_mov_b32 v11, v13
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v122, v151
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v88
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v88, v41, s[12:15], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v11, s1
	v_cndmask_b32_e32 v37, 0x80000000, v13, vcc_lo
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v89
	v_cvt_f32_i32_e32 v7, v90
	v_cvt_f32_i32_e32 v1, v93
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v89, v41, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v9, s3
	buffer_load_u16 v90, v41, s[12:15], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v41, v58, s[4:7], 0 offen
	scratch_load_b32 v93, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v2, v94
	scratch_load_b32 v94, off, off offset:40 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v3, v95
	v_cvt_f32_i32_e32 v6, v91
	v_cvt_f32_i32_e32 v4, v92
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v92, off, off offset:88
	scratch_load_b32 v95, off, off offset:44
	scratch_load_b32 v91, off, off offset:36
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v15, off, off offset:488 ; 4-byte Folded Reload
	v_mov_b32_e32 v150, v174
	v_mov_b32_e32 v174, v187
	v_mov_b32_e32 v151, v175
	v_mov_b32_e32 v175, v188
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v9, 2, v9
	v_add_nc_u32_e32 v13, 2, v13
	v_add_nc_u32_e32 v11, 2, v11
	s_waitcnt vmcnt(8)
	v_dual_mov_b32 v120, v138 :: v_dual_lshlrev_b32 v37, 16, v37
	v_mov_b32_e32 v138, v167
	v_mov_b32_e32 v126, v154
	v_mov_b32_e32 v154, v177
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v75, v37, v75
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v54, v37, v54 :: v_dual_lshlrev_b32 v41, 16, v41
	v_mul_f32_e32 v57, v57, v37
	v_mov_b32_e32 v177, v190
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v15, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v229
	ds_load_b128 v[45:48], v229 offset:16
	v_dual_mov_b32 v116, v143 :: v_dual_mov_b32 v143, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v165, v75, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v75, v37, v87
	scratch_load_b32 v87, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v255, v75, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v75, v37, v85 :: v_dual_add_nc_u32 v12, 2, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v254, v75, v44
	v_dual_mov_b32 v152, v189 :: v_dual_lshlrev_b32 v75, 16, v88
	v_dual_mov_b32 v104, v133 :: v_dual_mov_b32 v133, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v82, v37, v82
	v_mul_f32_e32 v78, v75, v78
	v_dual_mul_f32 v79, v75, v79 :: v_dual_mov_b32 v108, v161
	v_mul_f32_e32 v81, v75, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v37, v55 :: v_dual_fmac_f32 v142, v78, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v78, 16, v89
	v_dual_mov_b32 v128, v144 :: v_dual_fmac_f32 v143, v79, v43
	v_mov_b32_e32 v130, v157
	v_mov_b32_e32 v157, v185
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v79, v78, v207 :: v_dual_mul_f32 v80, v75, v80
	v_mov_b32_e32 v106, v134
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v81, v41
	scratch_load_b32 v207, off, off offset:188 ; 4-byte Folded Reload
	v_dual_fmac_f32 v92, v79, v41 :: v_dual_mul_f32 v79, v78, v206
	v_dual_mov_b32 v110, v129 :: v_dual_mov_b32 v129, v156
	v_mov_b32_e32 v156, v180
	v_fmac_f32_e32 v141, v80, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v93, v79, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v79, v78, v205
	v_mov_b32_e32 v180, v10
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v205, off, off offset:180
	scratch_load_b32 v206, off, off offset:184
	scratch_load_b32 v88, off, off offset:24
	scratch_load_b32 v89, off, off offset:28
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v79, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v79, v78, v204 :: v_dual_add_nc_u32 v58, s44, v58
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v79, v44 :: v_dual_lshlrev_b32 v79, 16, v90
	v_fmac_f32_e32 v252, v82, v41
	v_mov_b32_e32 v14, v62
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v82, off, off offset:20
	scratch_load_b32 v90, off, off offset:32
	scratch_load_b32 v81, off, off offset:12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v80, v79, v209
	scratch_load_b32 v209, off, off offset:200 ; 4-byte Folded Reload
	v_mul_f32_e32 v0, v0, v79
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v1, v79
	v_dual_mul_f32 v3, v3, v79 :: v_dual_fmac_f32 v104, v80, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v208
	v_mul_f32_e32 v53, v37, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:8
	scratch_load_b32 v208, off, off offset:192
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v4, v79, v4 :: v_dual_fmac_f32 v105, v41, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v199
	scratch_load_b32 v199, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v41, v43 :: v_dual_add_nc_u32 v14, s45, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v198
	scratch_load_b32 v198, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v41, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v37, v76
	scratch_load_b32 v76, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v156, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v41, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v37, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v41, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v41, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v37, v41
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v246, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:328
	scratch_load_b32 v204, off, off offset:168
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v41, v37, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v247, v41, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v75, v74
	scratch_load_b32 v74, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v75, v73
	scratch_load_b32 v73, off, off          ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v41, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v75, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v253, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v75, v71
	scratch_load_b32 v71, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v41, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v78, v203
	scratch_load_b32 v203, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v41, v45 :: v_dual_mul_f32 v41, v78, v202
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v202, off, off offset:160
	scratch_load_b32 v85, off, off offset:72
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v85, v41, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v78, v201
	scratch_load_b32 v201, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v78, v200
	scratch_load_b32 v200, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v41, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v197
	scratch_load_b32 v197, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v196
	scratch_load_b32 v196, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v90, v41, v46 :: v_dual_mul_f32 v41, v79, v195
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v91, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v194
	scratch_load_b32 v194, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v41, v48
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[41:44], v229 offset:512
	ds_load_b128 v[45:48], v229 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v202, v57, v41
	v_dual_fmac_f32 v150, v53, v44 :: v_dual_mul_f32 v53, v59, v75
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v172, v0, v48
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v63, s[4:7], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v148, v55, v42 :: v_dual_fmac_f32 v149, v54, v43
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v196, v53, v41 :: v_dual_add_nc_u32 v63, s44, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v75, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v128, v53, v42 :: v_dual_mul_f32 v53, v75, v52
	v_fmac_f32_e32 v101, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v75, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v77, v78
	scratch_load_b32 v77, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v180, v53, v41 :: v_dual_mul_f32 v53, v78, v183
	v_fmac_f32_e32 v76, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v78, v86
	scratch_load_b32 v86, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v77, v53, v43 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v78, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v179, v79
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v175, v53, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v193
	scratch_load_b32 v193, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v74, v41, v42 :: v_dual_mul_f32 v41, v79, v192
	scratch_load_b32 v192, off, off offset:120 ; 4-byte Folded Reload
	v_fmac_f32_e32 v80, v41, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v79, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v41, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v37, v223
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v216, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v201, v41, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v214, v37
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v41, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v41, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v197, v41, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v75, v64
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v65, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v194, v41, v46 :: v_dual_mul_f32 v41, v132, v75
	v_fmac_f32_e32 v193, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v212, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v192, v41, v48 :: v_dual_mul_f32 v41, v78, v70
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:176
	scratch_load_b32 v195, off, off offset:132
	v_fmac_f32_e32 v114, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v69, v78
	scratch_load_b32 v69, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v178, v41, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v68, v78
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:116
	scratch_load_b32 v84, off, off offset:80
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v177, v41, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v67, v78
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v15, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v83
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v83, off, off offset:112
	scratch_load_b32 v132, off, off offset:108
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v176, v41, v48 :: v_dual_mul_f32 v41, v79, v51
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v41, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v50, v79
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v41, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v49, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v41, v47
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[41:44], v229
	ds_load_b128 v[45:48], v229 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v171, v0, v41 :: v_dual_mul_f32 v0, v37, v224
	v_fmac_f32_e32 v170, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v168, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v221
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v245, v0, v44 :: v_dual_mul_f32 v0, v75, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v75, v237
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v75, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v75, v235
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v244, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v127, v0, v41 :: v_dual_mul_f32 v0, v78, v242
	v_fmac_f32_e32 v126, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v240
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v79, v96
	scratch_load_b32 v96, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v112, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v79, v97
	scratch_load_b32 v97, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v79, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v79, v99
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v220
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v251, v0, v45 :: v_dual_mul_f32 v0, v37, v219
	v_fmac_f32_e32 v250, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v248, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v217
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v249, v0, v48 :: v_dual_mul_f32 v0, v75, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v139, v0, v45 :: v_dual_mul_f32 v0, v75, v228
	v_fmac_f32_e32 v138, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v75, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v0, v47 :: v_dual_mul_f32 v0, v75, v225
	v_fmac_f32_e32 v136, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v232
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v231
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v79, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v103, v0, v45 :: v_dual_mul_f32 v0, v79, v40
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v97, v0, v46 :: v_dual_mul_f32 v0, v79, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v96, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v79, v38
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[38:41], v229 offset:512
	ds_load_b128 v[42:45], v229 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v95, v0, v48 :: v_dual_mul_f32 v0, v215, v37
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v213
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v199, v1, v43
	v_fmac_f32_e32 v195, v3, v45
	v_fmac_f32_e32 v155, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v211
	scratch_load_b32 v211, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v37, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v153, v0, v41 :: v_dual_mul_f32 v0, v29, v75
	v_dual_fmac_f32 v69, v0, v38 :: v_dual_mul_f32 v0, v75, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v75, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v131, v0, v40 :: v_dual_mul_f32 v0, v75, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v205, v0, v38 :: v_dual_mul_f32 v0, v78, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v116, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v78, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v115, v0, v41 :: v_dual_mul_f32 v0, v5, v79
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v5, v18, v37 :: v_dual_mul_f32 v18, v23, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v203, v0, v38 :: v_dual_mul_f32 v0, v79, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v8, v21, v75 :: v_dual_mul_f32 v21, v26, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v206, v18, v45
	v_fmac_f32_e32 v88, v0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v79, v7 :: v_dual_fmac_f32 v71, v21, v44
	v_mul_f32_e32 v7, v37, v20
	v_mul_f32_e32 v20, v25, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v208, v8, v43
	v_dual_fmac_f32 v83, v0, v40 :: v_dual_mul_f32 v0, v79, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v152, v7, v42
	v_fmac_f32_e32 v70, v20, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v82, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v17, v37
	v_dual_mul_f32 v6, v19, v37 :: v_dual_mul_f32 v17, v22, v75
	v_mul_f32_e32 v19, v75, v24
	v_mul_f32_e32 v22, v27, v78
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:220
	scratch_load_b64 v[23:24], off, off offset:212
	scratch_load_b32 v75, off, off offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v207, v17, v44 :: v_dual_add_nc_u32 v26, s45, v26
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v15, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v23, v78, v28
	s_clause 0x5                            ; 40-byte Folded Reload
	scratch_load_b64 v[27:28], off, off offset:228
	scratch_load_b32 v210, off, off offset:204
	scratch_load_b64 v[28:29], off, off offset:236
	scratch_load_b64 v[29:30], off, off offset:244
	scratch_load_b64 v[30:31], off, off offset:252
	scratch_load_b32 v78, off, off offset:68
	v_mul_f32_e32 v2, v2, v79
	scratch_load_b32 v79, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v204, v22, v45 :: v_dual_add_nc_u32 v15, s45, v15
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v210, v5, v44 :: v_dual_add_nc_u32 v27, s45, v27
	v_fmac_f32_e32 v75, v4, v42
	v_fmac_f32_e32 v211, v0, v43
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v209, v6, v45 :: v_dual_fmac_f32 v78, v23, v42
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v79, v19, v42 :: v_dual_add_nc_u32 v28, s45, v28
	v_dual_fmac_f32 v198, v2, v44 :: v_dual_add_nc_u32 v29, s45, v29
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v30, s45, v30
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v3, off, off offset:508
	scratch_load_b32 v98, off, off offset:492
	scratch_load_b32 v99, off, off offset:496
	scratch_load_b32 v100, off, off offset:500
	scratch_load_b32 v72, off, off offset:504
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v245
	v_dual_mul_f32 v8, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v210
	v_mul_f32_e32 v24, 0xbfb8aa3b, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v249
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_mul_f32_e32 v36, 0xbfb8aa3b, v155
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_dual_mul_f32 v44, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v209
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v152
	v_exp_f32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v211
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_mul_f32_e32 v37, 0xbfb8aa3b, v244
	v_ldexp_f32 v9, v13, v9
	v_mul_f32_e32 v13, 0xbfb8aa3b, v69
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v209
	v_mul_f32_e32 v182, 0xbfb8aa3b, v112
	v_ldexp_f32 v10, v10, v2
	v_mul_f32_e32 v41, 0xbfb8aa3b, v130
	v_ldexp_f32 v14, v1, v0
	v_exp_f32_e32 v12, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v0, 0xbfb8aa3b, v208 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v206
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	v_ldexp_f32 v11, v12, v11
	v_dual_mul_f32 v12, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_mul_f32_e32 v45, 0xbfb8aa3b, v132
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v208
	v_exp_f32_e32 v2, v2
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_exp_f32_e32 v18, v18
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v137
	v_ldexp_f32 v19, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v205
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v2, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v120
	v_ldexp_f32 v12, v13, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v9, v9, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v183, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v18, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v205
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v40, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_mul_f32_e32 v38, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v204
	v_ldexp_f32 v16, v16, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v203
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v17, v17, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v199
	v_exp_f32_e32 v20, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v32, v23, v22
	v_mul_f32_e32 v22, 0xbfb8aa3b, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s1, v210, v10, v210
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v203
	v_ldexp_f32 v18, v20, v18
	v_mul_f32_e32 v20, 0xbfb8aa3b, v198
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	v_exp_f32_e32 v2, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v199
	v_dual_mul_f32 v4, 0xbfb8aa3b, v168 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v170
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v52, v48
	v_ldexp_f32 v56, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v195
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v251 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v146
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v55, v22
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v49, v52, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v53, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, vcc_lo, v68, v9, v68
	v_div_scale_f32 v67, null, v19, v19, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v20
	v_ldexp_f32 v51, v55, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v10, v10, v210
	v_fmac_f32_e32 v57, v52, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v250 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v145
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v50, v54, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v14, v14, v211
	v_mul_f32_e32 v60, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v30, 0xbfb8aa3b, v153 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v55, v59, 1.0
	v_fma_f32 v62, -v53, v60, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v88
	v_dual_mul_f32 v34, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v59, v63, v59 :: v_dual_fmac_f32 v60, v62, v57
	v_div_scale_f32 v63, null, v11, v11, v209
	v_fma_f32 v61, -v54, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v64, v59
	v_fma_f32 v53, -v53, v60, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v65, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v46, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, s0, v211, v14, v211
	v_div_fmas_f32 v53, v53, v57, v60
	v_rcp_f32_e32 v57, v67
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v62, v61, v52
	v_fma_f32 v60, -v63, v65, 1.0
	v_div_fixup_f32 v9, v53, v9, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v42, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v54, v62, v61
	v_fmac_f32_e32 v65, v60, v65
	v_div_scale_f32 v60, s0, v69, v19, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v190, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v58, v52
	v_fma_f32 v58, -v55, v66, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v188, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v111
	v_dual_mul_f32 v186, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v54, v62, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v66, v58, v59
	v_div_scale_f32 v54, s3, v209, v11, v209
	v_fma_f32 v58, -v67, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v48, 0xbfb8aa3b, v103
	v_mul_f32_e32 v20, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v53, v52, v62
	v_fma_f32 v53, -v55, v66, v64
	v_mul_f32_e32 v55, v54, v65
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, null, v12, v12, v208
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v61, -v63, v55, v54
	v_div_fmas_f32 v53, v53, v59, v66
	v_rcp_f32_e32 v59, v58
	v_div_scale_f32 v64, null, v13, v13, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v61, v65
	v_mul_f32_e32 v62, v60, v57
	v_div_fixup_f32 v10, v53, v10, v210
	v_rcp_f32_e32 v53, v64
	v_div_fixup_f32 v14, v52, v14, v211
	v_fma_f32 v54, -v63, v55, v54
	v_div_scale_f32 v63, null, v15, v15, v206
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v58, v59, 1.0
	v_fma_f32 v52, -v67, v62, v60
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v184, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v61, v59
	v_rcp_f32_e32 v61, v63
	v_fmac_f32_e32 v62, v52, v57
	v_div_scale_f32 v52, s1, v208, v12, v208
	v_fma_f32 v66, -v64, v53, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v54, v65, v55
	v_fma_f32 v55, -v67, v62, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v60, v52, v59 :: v_dual_fmac_f32 v53, v66, v53
	v_fma_f32 v66, -v63, v61, 1.0
	v_div_scale_f32 v67, null, v16, v16, v205
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v61, v66, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s3, v207, v13, v207
	v_div_fmas_f32 v55, v55, v57, v62
	v_fma_f32 v57, -v58, v60, v52
	v_rcp_f32_e32 v66, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v62, v65, v53
	v_div_scale_f32 v68, s0, v206, v15, v206
	v_fmac_f32_e32 v60, v57, v59
	v_div_scale_f32 v57, null, v17, v17, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v54, v11, v209
	v_div_fixup_f32 v54, v55, v19, v69
	v_fma_f32 v19, -v64, v62, v65
	v_mul_f32_e32 v55, v68, v61
	v_fma_f32 v69, -v67, v66, 1.0
	v_fma_f32 v52, -v58, v60, v52
	v_rcp_f32_e32 v58, v57
	v_fmac_f32_e32 v62, v19, v53
	v_fma_f32 v19, -v63, v55, v68
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, s4, v205, v16, v205
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v55, v19, v61
	v_div_fmas_f32 v52, v52, v59, v60
	v_fma_f32 v59, -v64, v62, v65
	v_mul_f32_e32 v19, v69, v66
	v_fma_f32 v60, -v57, v58, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v52, v12, v208
	v_div_fmas_f32 v53, v59, v53, v62
	v_fma_f32 v59, -v63, v55, v68
	v_fma_f32 v62, -v67, v19, v69
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, null, v18, v18, v71
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v56 :: v_dual_fmac_f32 v19, v62, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s1, v70, v17, v70
	v_div_fmas_f32 v55, v59, v61, v55
	v_rcp_f32_e32 v59, v60
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v61, v63, v58
	v_div_fixup_f32 v13, v53, v13, v207
	v_div_fixup_f32 v52, v55, v15, v206
	v_fma_f32 v15, -v67, v19, v69
	v_div_scale_f32 v55, null, v32, v32, v204
	v_fma_f32 v53, -v57, v61, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v193, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v60, v59, 1.0
	v_div_fmas_f32 v15, v15, v66, v19
	v_rcp_f32_e32 v19, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v53, v58
	v_fmac_f32_e32 v59, v62, v59
	v_div_scale_f32 v62, null, v56, v56, v203
	v_div_scale_f32 v53, s0, v71, v18, v71
	v_div_fixup_f32 v64, v15, v16, v205
	v_fma_f32 v15, -v57, v61, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v55, v19, 1.0
	v_rcp_f32_e32 v63, v62
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v16, v53, v59
	v_div_fmas_f32 v15, v15, v58, v61
	v_fmac_f32_e32 v19, v57, v19
	v_div_scale_f32 v57, null, v49, v49, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v58, -v60, v16, v53
	v_div_scale_f32 v61, s1, v204, v32, v204
	v_fma_f32 v65, -v62, v63, 1.0
	v_div_fixup_f32 v66, v15, v17, v70
	v_rcp_f32_e32 v15, v57
	v_fmac_f32_e32 v16, v58, v59
	v_mul_f32_e32 v17, v61, v19
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v58, s3, v203, v56, v203
	v_div_scale_f32 v65, null, v50, v50, v198
	v_fma_f32 v53, -v60, v16, v53
	v_fma_f32 v60, -v55, v17, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v58, v63
	v_fma_f32 v68, -v57, v15, 1.0
	v_rcp_f32_e32 v69, v65
	v_div_scale_f32 v70, null, v51, v51, v195
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v17, v60, v19
	v_div_fmas_f32 v16, v53, v59, v16
	v_fma_f32 v53, -v62, v67, v58
	v_fmac_f32_e32 v15, v68, v15
	v_rcp_f32_e32 v59, v70
	v_div_scale_f32 v60, s0, v199, v49, v199
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v68, -v65, v69, 1.0
	v_div_fixup_f32 v71, v16, v18, v71
	v_fma_f32 v16, -v55, v17, v61
	v_fmac_f32_e32 v67, v53, v63
	v_mul_f32_e32 v18, v60, v15
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v69, v68, v69
	v_div_scale_f32 v53, s4, v198, v50, v198
	v_fma_f32 v55, -v70, v59, 1.0
	v_div_fmas_f32 v16, v16, v19, v17
	v_fma_f32 v17, -v62, v67, v58
	v_fma_f32 v19, -v57, v18, v60
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v59, v55, v59
	v_div_scale_f32 v55, s1, v195, v51, v195
	v_mul_f32_e32 v58, v53, v69
	v_div_fmas_f32 v17, v17, v63, v67
	v_fmac_f32_e32 v18, v19, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v16, v32, v204
	v_mul_f32_e32 v19, v55, v59
	v_fma_f32 v16, -v65, v58, v53
	v_fma_f32 v8, -v57, v18, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v56, v17, v56, v203
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v16, v69
	v_fma_f32 v16, -v70, v19, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v15, v18
	v_fma_f32 v15, -v65, v58, v53
	v_fmac_f32_e32 v19, v16, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v49, v8, v49, v199
	v_div_fmas_f32 v15, v15, v69, v58
	v_fma_f32 v16, -v70, v19, v55
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v15, v50, v198
	v_div_fmas_f32 v7, v16, v59, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_ldexp_f32 v5, v18, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v202, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v7, v51, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v170
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_exp_f32_e32 v5, v15
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v245
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v53, v53, v171
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v196, v54
	v_mul_f32_e32 v18, v201, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v200, v10 :: v_dual_mul_f32 v17, v197, v11
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, vcc_lo, v171, v53, v171
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v194, v12
	v_mul_f32_e32 v12, v192, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v55, v54, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v180, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v168
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v178, v66 :: v_dual_mul_f32 v9, v176, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v7, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v177, v71 :: v_dual_mul_f32 v7, v175, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v59, v54
	v_div_scale_f32 v62, null, v58, v58, v245
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v55, v63, v59
	v_rcp_f32_e32 v32, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s25, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v64, v54
	v_div_scale_f32 v57, null, v52, v52, v170
	v_div_scale_f32 v56, s0, v170, v52, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v57
	v_fma_f32 v65, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v60, v65, v60
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v4, v174, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v61, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v62, v32, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v173, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v55, v63, v59
	v_mul_f32_e32 v55, v56, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_fmac_f32 v32, v61, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v54, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v49, v49, v168
	v_fma_f32 v63, -v57, v55, v56
	v_div_fixup_f32 v50, v50, v53, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v6, v172, v51 :: v_dual_fmac_f32 v55, v63, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v57, v55, v56
	v_fma_f32 v53, -v61, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, s3, v168, v49, v168
	v_fmac_f32_e32 v54, v53, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v250
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s1, v245, v58, v245
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v59, v32
	v_fma_f32 v51, -v62, v64, v59
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v64, v51, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v55, v56, v60, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v57, v54
	v_fma_f32 v59, -v62, v64, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v61, v56, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v63, null, v53, v53, v251
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v248
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v28, v54
	v_div_fixup_f32 v28, v55, v52, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v59, v32, v64
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v32, v58, v245
	v_fma_f32 v32, -v61, v56, v57
	v_div_scale_f32 v57, null, v52, v52, v250
	v_fma_f32 v58, -v63, v51, 1.0
	v_div_scale_f32 v61, null, v55, v55, v248
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v54, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v57
	v_fmac_f32_e32 v51, v58, v51
	v_div_scale_f32 v56, s0, v251, v53, v251
	v_div_fixup_f32 v21, v32, v49, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v56, v51
	v_rcp_f32_e32 v62, v61
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v249
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v57, v54, 1.0
	v_fma_f32 v60, -v63, v58, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v255, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v59, v54
	v_div_scale_f32 v59, s1, v250, v52, v250
	v_fmac_f32_e32 v58, v60, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v60, v59, v54
	v_fma_f32 v56, -v63, v58, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v252, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v57, v60, v59
	v_fma_f32 v50, -v61, v62, 1.0
	v_div_fmas_f32 v51, v56, v51, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v63, v54
	v_fmac_f32_e32 v62, v50, v62
	v_div_fixup_f32 v51, v51, v53, v251
	v_div_scale_f32 v56, null, v49, v49, v249
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v57, v60, v59
	v_div_scale_f32 v36, s0, v248, v55, v248
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v155
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v59, v36, v62
	v_div_fmas_f32 v35, v53, v54, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	v_exp_f32_e32 v58, v58
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v56, v50, 1.0
	v_div_fixup_f32 v35, v35, v52, v250
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v61, v59, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v254, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v60, s1, v249, v49, v249
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v52, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v58, v57
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v60, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v61, v59, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v56, v52, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v153
	v_ldexp_f32 v53, v54, v53
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v61, v61, v155
	v_fmac_f32_e32 v52, v30, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v157, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v36, v62, v59
	v_div_scale_f32 v63, null, v53, v53, v154
	v_fma_f32 v36, -v56, v52, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v30, v30, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v60, v63
	v_fma_f32 v62, -v54, v58, 1.0
	v_div_fmas_f32 v36, v36, v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v152
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v155, v61, v155
	v_fmac_f32_e32 v58, v62, v58
	v_div_fixup_f32 v36, v36, v49, v249
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v57, v57, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v165, v28 :: v_dual_mul_f32 v59, v50, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v63, v60, 1.0
	v_rcp_f32_e32 v64, v62
	v_div_fixup_f32 v30, v29, v55, v248
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v247, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v54, v59, v50
	v_fmac_f32_e32 v60, v52, v60
	v_div_scale_f32 v52, s0, v154, v53, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v36, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v156, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v52, v60
	v_fma_f32 v51, -v62, v64, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v63, v55, v52
	v_fmac_f32_e32 v64, v51, v64
	v_fma_f32 v50, -v54, v59, v50
	v_div_scale_f32 v54, null, v49, v49, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v56, v60
	v_div_scale_f32 v51, s1, v153, v57, v153
	v_div_fmas_f32 v50, v50, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v54
	v_fma_f32 v52, -v63, v55, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v50, v50, v61, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v52, v52, v60, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v147
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v54, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v51, v64
	v_div_scale_f32 v60, s0, v152, v49, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v59, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v53, v154
	v_fma_f32 v53, -v62, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v37, v39, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v60, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v53, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v54, v39, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v244
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v55, v51
	v_fmac_f32_e32 v39, v37, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v56
	v_ldexp_f32 v37, v59, v58
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v62, null, v61, v61, v147
	v_div_fmas_f32 v51, v51, v64, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v54, v39, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v56, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v53
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v55, v55, v146
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v246, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v54, v47, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v62, v56, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, vcc_lo, v147, v61, v147
	v_div_fixup_f32 v31, v39, v49, v152
	v_fmac_f32_e32 v56, v37, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v49, null, v59, v59, v244
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v53, v54, 1.0
	v_div_fixup_f32 v37, v51, v57, v153
	v_rcp_f32_e32 v57, v49
	v_div_scale_f32 v63, s0, v146, v55, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v54, v39, v54 :: v_dual_mul_f32 v39, v149, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v52, 1.0, v47 :: v_dual_mul_f32 v47, v148, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v60, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v151, v31
	v_mul_f32_e32 v37, v150, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v49, v57, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v62, v51, v60
	v_fmac_f32_e32 v57, v64, v57
	v_div_scale_f32 v64, s1, v244, v59, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v51, v58, v56 :: v_dual_mul_f32 v58, v63, v54
	v_div_scale_f32 v65, null, v52, v52, v145
	v_fma_f32 v50, -v62, v51, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v53, v58, v63
	v_rcp_f32_e32 v62, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v50, v56, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v60, v54
	v_mul_f32_e32 v56, v64, v57
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v61, v40, v61, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v53, v58, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v65, v62, 1.0
	v_fma_f32 v53, -v49, v56, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s3
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v40, v54, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v53, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s4
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v34, v55, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v60, v62
	v_div_scale_f32 v60, s3, v145, v52, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v137 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v60, v62
	v_fma_f32 v49, -v49, v56, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v0, -v65, v40, v60
	v_div_fmas_f32 v49, v49, v57, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v50, v50, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v65, v40, v60
	v_div_fixup_f32 v34, v49, v59, v244
	v_rcp_f32_e32 v56, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v136
	v_ldexp_f32 v0, v0, v54
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v33, v33, v62, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v53, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v58, v56, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v52, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v51, v56
	v_div_scale_f32 v51, vcc_lo, v139, v50, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v143, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v51, v56
	v_fma_f32 v52, -v58, v63, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v52, v56
	v_fma_f32 v51, -v58, v63, v51
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v51, v51, v56, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v140, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v0, v0, v138
	v_div_scale_f32 v52, s0, v138, v0, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v51, v50, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v132
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v53, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v62, v59, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v57
	v_ldexp_f32 v46, v46, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v54, v40, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v141, v55 :: v_dual_mul_f32 v55, v52, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v53, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v63, v62
	v_div_scale_f32 v57, null, v60, v60, v137
	v_div_scale_f32 v58, s1, v137, v60, v137
	v_fma_f32 v52, -v53, v55, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v49, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v57, v49, 1.0
	v_fmac_f32_e32 v49, v59, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v58, v49
	v_fma_f32 v51, -v57, v64, v58
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v64, v51, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v52, v52, v62, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v57, v64, v58
	v_div_fixup_f32 v0, v52, v0, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v53, v53, v132
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v57, v49, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v54, v54, v136
	v_div_fixup_f32 v41, v49, v60, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v253, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v59, v56, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v61, v56
	v_div_scale_f32 v61, s3, v136, v54, v136
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v142, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v61, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v49, v49, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v59, v55, v61
	v_fmac_f32_e32 v55, v46, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v59, v55, v61
	v_fma_f32 v59, -v63, v51, 1.0
	v_div_fmas_f32 v46, v46, v56, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v59, v51
	v_div_scale_f32 v56, s0, v132, v53, v132
	v_div_fixup_f32 v38, v46, v54, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v79
	v_exp_f32_e32 v61, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v133, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v61, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v62, v0, 1.0
	v_fmac_f32_e32 v0, v54, v0
	v_div_scale_f32 v54, s0, v130, v49, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v61, v54, v0
	v_div_scale_f32 v57, null, v52, v52, v131
	v_mul_f32_e32 v58, v56, v51
	v_rcp_f32_e32 v55, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v63, v58, v56
	v_fmac_f32_e32 v58, v60, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v57, v55, 1.0
	v_fma_f32 v56, -v63, v58, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s1, v131, v52, v131
	v_div_fmas_f32 v51, v56, v51, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v50, v50, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v59, v55
	v_div_fixup_f32 v51, v51, v53, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v57, v60, v59
	v_fmac_f32_e32 v60, v63, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v57, v60, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v56
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v53, v53, v55, v60
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v60, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v53, v52, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v56, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v62, v61, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v63, v57
	v_div_scale_f32 v63, s1, v79, v50, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v53, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v59, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v135, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v63, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v62, v61, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v56, v58, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v60, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v60, null, v53, v53, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v58, v62, v57 :: v_dual_add_f32 v55, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v60
	v_div_fmas_f32 v0, v54, v0, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v56, v58, v63
	v_div_scale_f32 v65, null, v55, v55, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v65
	v_div_fmas_f32 v42, v42, v57, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v60, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v62, v59
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, vcc_lo, v127, v53, v127
	v_fmac_f32_e32 v64, v63, v64
	v_div_fixup_f32 v42, v42, v50, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v65, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v57 :: v_dual_mul_f32 v57, v58, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v49, v130
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v59, v61
	v_div_scale_f32 v59, s0, v126, v55, v126
	v_div_scale_f32 v62, null, v56, v56, v125
	v_fma_f32 v49, -v60, v57, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v63, v59, v61 :: v_dual_mul_f32 v102, v102, v0
	v_rcp_f32_e32 v66, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v50, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v49, v64
	v_fma_f32 v49, -v65, v63, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v128, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v186
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v60, v57, v58
	v_fmac_f32_e32 v63, v49, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v62, v66, 1.0
	v_div_scale_f32 v52, null, v0, v0, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v51, v51, v64, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v65, v63, v59
	v_fmac_f32_e32 v66, v49, v66
	v_rcp_f32_e32 v49, v52
	v_div_scale_f32 v57, s1, v125, v56, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v51, v51, v53, v127
	v_div_fmas_f32 v54, v54, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v57, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v52, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v54, v55, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v62, v53, v57
	v_fmac_f32_e32 v49, v60, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s0, v124, v0, v124
	v_fmac_f32_e32 v53, v59, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v120
	v_ldexp_f32 v44, v55, v58
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v129, v42 :: v_dual_mul_f32 v55, v63, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v52, v55, v63
	v_fma_f32 v57, -v62, v53, v57
	v_div_scale_f32 v62, null, v64, v64, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v44, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v61, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v52, v55, v63
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v92, v51 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v57, v66, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v62, v59, 1.0
	v_div_fmas_f32 v49, v52, v49, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v57, v57, v120
	v_fmac_f32_e32 v59, v44, v59
	v_div_scale_f32 v63, vcc_lo, v121, v64, v121
	v_div_fixup_f32 v0, v49, v0, v124
	v_div_scale_f32 v49, null, v61, v61, v84
	v_rcp_f32_e32 v55, v58
	v_div_fixup_f32 v44, v53, v56, v125
	v_mul_f32_e32 v53, v63, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v123, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v52, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v93, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v62, v53, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v122, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v58, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v60, v59
	v_div_scale_f32 v65, null, v0, v0, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v49, v52, 1.0
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, s0, v120, v57, v120
	v_fma_f32 v51, -v62, v53, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v60, v52
	v_rcp_f32_e32 v60, v65
	v_mul_f32_e32 v54, v56, v55
	v_div_scale_f32 v63, s1, v84, v61, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v62, -v58, v54, v56
	v_fma_f32 v66, -v65, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v66, v60
	v_fmac_f32_e32 v54, v62, v55
	v_mul_f32_e32 v62, v63, v52
	v_div_fmas_f32 v51, v51, v59, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v56, -v58, v54, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v49, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v121
	v_div_fmas_f32 v54, v56, v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s3, v86, v0, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v54, v57, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v64, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s4
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s4
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v115 :: v_dual_fmac_f32 v62, v58, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v65, v55, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v59, v53
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v49, v62, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v52, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v53, v53, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v49, v61, v84
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v118, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v63, v62, 1.0
	v_dual_fmac_f32 v55, v58, v60 :: v_dual_fmac_f32 v62, v59, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v65, v55, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v58, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v52, v52, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v78
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_ldexp_f32 v56, v58, v56
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v55, v64, v60, v55
	v_div_scale_f32 v59, vcc_lo, v117, v53, v117
	v_div_fixup_f32 v0, v55, v0, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v67, v59, v62
	v_rcp_f32_e32 v55, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v63, v67, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v65, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v57, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v66, v55, 1.0
	v_div_scale_f32 v60, null, v56, v56, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v63, v67, v59
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, s1, v115, v52, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v119, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v54, v62, v67
	v_mul_f32_e32 v63, v57, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v116, v56, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v51, v54, v53, v117
	v_fma_f32 v53, -v66, v63, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v60, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v53, v55
	v_div_scale_f32 v59, null, v0, v0, v78
	v_fmac_f32_e32 v64, v61, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v112
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	v_fma_f32 v57, -v66, v63, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v76, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v59, v61, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v61, v54, v61 :: v_dual_mul_f32 v58, v49, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v60, v58, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v67, null, v53, v53, v112
	v_fmac_f32_e32 v58, v62, v64
	v_div_scale_f32 v62, s3, v78, v0, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v60, v58, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v49, v49, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v62, v61
	v_div_fixup_f32 v49, v49, v56, v116
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v59, v58, v62
	v_div_fmas_f32 v55, v57, v55, v63
	v_rcp_f32_e32 v57, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v64, v61
	v_div_fixup_f32 v52, v55, v52, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v66
	v_ldexp_f32 v54, v60, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v59, v58, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v57, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v55, v61, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v60, v57
	v_div_scale_f32 v27, s0, v112, v53, v112
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v55, v0, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v27, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v54, v54, v111
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v114, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v67, v61, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v110
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v113, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v0, v0, v109
	v_fmac_f32_e32 v61, v56, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v59, v58, 1.0
	v_fma_f32 v27, -v67, v61, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v62, v58
	v_div_scale_f32 v62, s1, v111, v54, v111
	v_div_fmas_f32 v27, v27, v57, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v55, v60, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v62, v58
	v_div_scale_f32 v48, s0, v109, v0, v109
	v_div_fixup_f32 v27, v27, v53, v112
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v59, v56, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v104, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v52, v58
	v_fma_f32 v52, -v63, v49, 1.0
	v_div_scale_f32 v55, null, v51, v51, v110
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v53, -v59, v56, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v52, v49
	v_rcp_f32_e32 v52, v55
	v_div_fmas_f32 v26, v53, v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_exp_f32_e32 v59, v59
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v54, v111
	v_fma_f32 v60, -v55, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v105, v26 :: v_dual_fmac_f32 v52, v60, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s1, v110, v51, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v59, v57
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v56, v53
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v25, v25, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v56
	v_fma_f32 v62, -v56, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, v48, v49 :: v_dual_fmac_f32 v23, v62, v23
	v_fma_f32 v54, -v63, v58, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v54, v49
	v_mul_f32_e32 v54, v60, v52
	v_fma_f32 v48, -v63, v58, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v61, -v55, v54, v60
	v_div_fmas_f32 v48, v48, v49, v58
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v54, v61, v52
	v_div_scale_f32 v61, null, v53, v53, v97
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v55, v54, v60
	v_rcp_f32_e32 v60, v61
	v_div_fixup_f32 v0, v48, v0, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v52, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v59, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, vcc_lo, v103, v25, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v49, v51, v110
	v_fma_f32 v57, -v61, v60, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v58, v54, v23 :: v_dual_mul_f32 v71, v107, v49
	v_fmac_f32_e32 v60, v57, v60
	v_div_scale_f32 v57, s0, v97, v53, v97
	v_div_scale_f32 v59, null, v52, v52, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v56, v58, v54
	v_mul_f32_e32 v49, v57, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v106, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v48, v23
	v_fma_f32 v48, -v61, v49, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v56, v58, v54
	v_fmac_f32_e32 v49, v48, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v59, v62, 1.0
	v_div_fmas_f32 v23, v26, v23, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v61, v49, v57
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v62, v27, v62
	v_div_scale_f32 v27, s1, v96, v52, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v26, v60, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v25, v103
	v_mul_f32_e32 v26, v27, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v53, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v59, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v90, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v83 :: v_dual_fmac_f32 v26, v20, v62
	v_exp_f32_e32 v20, v54
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v59, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v1, v53
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v20, v20, v51
	v_exp_f32_e32 v51, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v75
	v_ldexp_f32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v20, v20, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v0, v0, v95
	v_div_scale_f32 v56, s0, v95, v0, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v54, null, v51, v51, v82
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v57, v54
	v_fma_f32 v2, -v48, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v2, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v26, v27, v62, v26
	v_mul_f32_e32 v27, v56, v49
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v25, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v1, v1, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v48, v27, v56
	v_div_fixup_f32 v26, v26, v52, v96
	v_rcp_f32_e32 v52, v53
	v_fmac_f32_e32 v27, v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v91, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v48, v27, v56
	v_rcp_f32_e32 v56, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v53, v52, 1.0
	v_div_fmas_f32 v27, v48, v49, v27
	v_div_scale_f32 v49, vcc_lo, v88, v20, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v55, v52
	v_div_fixup_f32 v0, v27, v0, v95
	v_fma_f32 v27, -v54, v57, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v25, v56, 1.0
	v_mul_f32_e32 v59, v49, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v94, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v27, v57
	v_div_scale_f32 v27, s1, v82, v51, v82
	v_fmac_f32_e32 v56, v55, v56
	v_div_scale_f32 v55, s0, v83, v1, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v65, v27, v57
	v_fma_f32 v0, -v53, v59, v49
	v_mul_f32_e32 v64, v55, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v54, v65, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v2, 1.0, v2 :: v_dual_fmac_f32 v59, v0, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v25, v64, v55
	v_fmac_f32_e32 v65, v26, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v48, null, v2, v2, v75
	v_fmac_f32_e32 v64, v0, v56
	v_fma_f32 v22, -v53, v59, v49
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v49, |v42|, |v14|, |v13|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v48
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v53, |v44|, |v84|, |v85|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v64, v55
	v_div_fmas_f32 v22, v22, v52, v59
	s_mov_b32 vcc_lo, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v55, |v79|, |v10|, |v8|
	s_mov_b32 s0, 0x76543210
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v56, v64
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v22, v20, v88
	v_fma_f32 v60, -v48, v58, 1.0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v32|, |v28|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v25, v1, v83
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v47|, |v39|, |v37|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v59, 3, v72
.Ltmp15:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s3, v75, v2, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v60, v58
	v_fma_f32 v0, -v48, v66, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v0, v58
	v_fma_f32 v0, -v54, v65, v27
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v50|, |v101|, |v102|
	v_max3_f32 v54, |v76|, |v77|, |v78|
.Ltmp17:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v48, v66, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v57, v65
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v60, v89, v23
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v24|, |v36|, |v35|
.Ltmp19:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v58, v66
	v_div_fixup_f32 v0, v0, v51, v82
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v51, |v92|, |v93|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v26, v2, v75
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v31|, |v18|, |v16|
.Ltmp23:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v81, v0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v73, v2
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v22, |v21|, v23
	v_max3_f32 v22, v25, v26, |v17|
	v_max_f32_e64 v23, |v45|, |v40|
	v_max3_f32 v25, |v34|, |v108|, |v46|
	v_max3_f32 v26, |v41|, |v38|, |v15|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v0, v2, v0, v22
	v_max3_f32 v23, v23, |v33|, v25
	v_max3_f32 v25, v27, v49, |v12|
	v_max3_f32 v27, |v86|, |v87|, |v11|
	v_max3_f32 v49, v51, |v43|, v53
	v_max3_f32 v51, v54, v55, |v9|
.Ltmp27:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v80, v1 :: v_dual_mul_f32 v53, v74, v20
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v23, v26, v25
	v_max3_f32 v26, |v48|, |v4|, |v5|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v2, v49, v27, v51
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v53|, |v54|, |v52|
	v_max_f32_e64 v20, |v68|, |v69|
	v_max3_f32 v23, |v62|, |v63|, |v7|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v49, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v26, |v6|
	v_dual_max_f32 v26, v27, v27 :: v_dual_max_f32 v27, v49, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v55, v0, v26
	v_dual_max_f32 v57, v2, v27 :: v_dual_and_b32 v0, 3, v98
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v27, 0x60, v98
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v70|, |v60|, |v61|
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v98
	v_and_b32_e32 v26, 8, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, |v71|, v22
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v22, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v64, v2, 6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v23, v25
	v_dual_max_f32 v22, v22, v22 :: v_dual_lshlrev_b32 v23, 5, v0
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v25, 4, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v1, v22
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v22, v0, 9, 0
	v_permlanex16_b32 v1, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_or_b32 v49, 0x680, v25, v23
	v_lshlrev_b32_e32 v25, 1, v72
	v_xor_b32_e32 v51, v23, v27
	v_lshl_add_u32 v22, v2, 2, v22
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v49, v49, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v22, v26, 4, v22
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v20, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v20, v64, v59, v49
	v_add_nc_u32_e32 v59, 0, v72
	v_add3_u32 v1, v22, v25, v51
	ds_store_b128 v1, v[55:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v55
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v49, v55, v55 :: v_dual_mov_b32 v20, v56
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v22, v57 :: v_dual_max_f32 v51, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v58, v58
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v49, v1
	v_dual_max_f32 v49, v57, v57 :: v_dual_max_f32 v20, v51, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v51, v58, v58
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v0, 4, 0
	v_mov_b32_e32 v56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v1, v1, v56
	v_dual_max_f32 v22, v49, v22 :: v_dual_max_f32 v49, v55, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v49, v49, v55
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v57, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v55, v56, v56 :: v_dual_mov_b32 v58, v49
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v1, v55
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v20, v20, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v57, v20
	v_mov_b32_e32 v51, v22
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v56, v57, v57 :: v_dual_max_f32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v22, v22, v51
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v51, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v51, v51
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v51, 1, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v57, v22, v1 :: v_dual_lshlrev_b32 v26, 3, v26
	v_dual_max_f32 v56, v20, v56 :: v_dual_lshlrev_b32 v1, 5, v2
	v_max_f32_e32 v20, v58, v58
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v59, v51, v26
.Ltmp68:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v22, 4, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v1, v26
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v58, v49, v20
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v2, v[55:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v0
.Ltmp72:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v55, v55 :: v_dual_max_f32 v49, v57, v57
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v55, 32, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v2, 0x2b8cbccc, v0 :: v_dual_max_f32 v49, 0x2b8cbccc, v49
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v57, null, 0x40e00000, 0x40e00000, v49
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	v_rcp_f32_e32 v59, v57
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v64, s0, s34, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v65, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v51, -v20, v26, 1.0
	v_fma_f32 v66, -v57, v59, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[64:65]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v26, v51, v26 :: v_dual_fmac_f32 v59, v66, v59
	v_div_scale_f32 v51, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v66, s7, v49, 0x40e00000, v49
	v_mul_f32_e32 v55, v51, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v20, v55, v51
	v_fmac_f32_e32 v55, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v55, v51
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[64:65]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v65.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v26, v55
	v_mul_f32_e32 v26, v66, v59
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v57, v26, v66
	v_fmac_f32_e32 v26, v20, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v65.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v57, v26, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v0, v59, v26
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v58, v58, v58
	v_div_fixup_f32 v26, v26, 0x40e00000, v49
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v20
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v65.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v58, 0x2b8cbccc, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v59, v59, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v72, null, 0x40e00000, 0x40e00000, v58
	v_rcp_f32_e32 v55, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v72, v55, 1.0
	v_dual_max_f32 v56, v56, v56 :: v_dual_fmac_f32 v55, v73, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v56, 0x2b8cbccc, v56
	v_div_scale_f32 v73, s9, v58, 0x40e00000, v58
	v_div_scale_f32 v67, null, 0x40e00000, 0x40e00000, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v66, v73, v55
	v_rcp_f32_e32 v51, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v72, v66, v73
	v_fmac_f32_e32 v66, v2, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v67, v51, 1.0
	v_fmac_f32_e32 v51, v64, v51
	v_div_scale_f32 v64, s8, v56, 0x40e00000, v56
	s_mov_b32 vcc_lo, s8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v74, v64, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v67, v74, v64
	v_fmac_f32_e32 v74, v57, v51
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v57.h, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v49, -v67, v74, v64
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v64, null, v59, v59, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v49, v51, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v67, v64
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v49, -v72, v66, v73
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v51, 1, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v56
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v73, null, v59, v59, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v49, v49, v55, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v55, null, v59, v59, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v64, v67, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v57.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v49, v49, 0x40e00000, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v58, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v26, v51, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v67, v56, v67 :: v_dual_and_b32 v0, 1, v57
	v_div_scale_f32 v56, vcc_lo, v32, v59, v32
	v_div_scale_f32 v74, s9, v28, v59, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v66, v56, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v55, v58, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v65.l, v49.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v72, null, v59, v59, v21
	v_fma_f32 v0, -v64, v66, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v58, v51, v58 :: v_dual_and_b32 v57, 1, v65
	v_rcp_f32_e32 v65, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v0, v67
	v_rcp_f32_e32 v0, v73
	v_mul_f32_e32 v75, v74, v58
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v49, v57, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v26
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v56, -v64, v66, v56
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v49, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v55, v75, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v72, v65, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v51, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v56, v56, v67, v66
	v_fma_f32 v81, -v73, v0, 1.0
	v_fmac_f32_e32 v75, v64, v58
	v_fmac_f32_e32 v65, v80, v65
	v_div_scale_f32 v80, s10, v21, v59, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v81, v0
	v_div_scale_f32 v81, null, v59, v59, v35
	v_fma_f32 v55, -v55, v75, v74
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v66, v82
	v_rcp_f32_e32 v83, v81
	v_div_scale_f32 v67, s11, v24, v59, v24
	v_div_fmas_f32 v55, v55, v58, v75
	v_div_fixup_f32 v32, v56, v59, v32
	v_div_scale_f32 v58, s9, v36, v59, v36
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v28, v55, v59, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v82, v66, 1.0
	v_fma_f32 v75, -v81, v83, 1.0
	v_mul_f32_e32 v64, v80, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v66, v88, v66 :: v_dual_fmac_f32 v83, v75, v83
	v_fma_f32 v56, -v72, v64, v80
	v_mul_f32_e32 v74, v67, v0
	v_div_scale_f32 v75, null, v59, v59, v30
	v_div_scale_f32 v88, null, v59, v59, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v56, v65
	v_fma_f32 v56, -v73, v74, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v72, v64, v80
	v_fmac_f32_e32 v74, v56, v0
	v_mul_f32_e32 v56, v58, v66
	v_div_scale_f32 v72, s12, v35, v59, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v55, v55, v65, v64
	v_fma_f32 v64, -v73, v74, v67
	v_rcp_f32_e32 v67, v75
	v_fma_f32 v65, -v82, v56, v58
	v_mul_f32_e32 v73, v72, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v80, null, v59, v59, v29
	v_div_fmas_f32 v0, v64, v0, v74
	v_fmac_f32_e32 v56, v65, v66
	v_fma_f32 v65, -v81, v73, v72
	v_div_fixup_f32 v21, v55, v59, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v75, v67, 1.0
	v_div_fixup_f32 v24, v0, v59, v24
	v_fma_f32 v0, -v82, v56, v58
	v_fmac_f32_e32 v73, v65, v83
	v_div_scale_f32 v55, s10, v30, v59, v30
	v_fmac_f32_e32 v67, v74, v67
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v64, v80
	v_div_fmas_f32 v0, v0, v66, v56
	v_fma_f32 v56, -v81, v73, v72
	v_mul_f32_e32 v66, v55, v67
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v65, null, v59, v59, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v56, v56, v83, v73
	v_fma_f32 v73, -v75, v66, v55
	v_div_scale_f32 v74, null, v59, v59, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v80, v64, 1.0
	v_div_scale_f32 v72, s9, v29, v59, v29
	v_fmac_f32_e32 v66, v73, v67
	v_div_scale_f32 v73, null, v59, v59, v39
	v_rcp_f32_e32 v83, v74
	v_div_fixup_f32 v36, v0, v59, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v75, v66, v55
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v64, v58, v64
	v_rcp_f32_e32 v58, v65
	v_div_fixup_f32 v35, v56, v59, v35
	v_div_scale_f32 v56, s11, v19, v59, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v72, v64
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v67, v66
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v0, -v80, v81, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v65, v58, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v30, v55, v59, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v81, v0, v64 :: v_dual_fmac_f32 v58, v82, v58
	v_fma_f32 v82, -v74, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v80, v81, v72
	v_dual_mul_f32 v0, v56, v58 :: v_dual_fmac_f32 v83, v82, v83
	v_div_scale_f32 v82, s12, v47, v59, v47
	v_fma_f32 v80, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v65, v0, v56
	v_mul_f32_e32 v72, v82, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v80, v75
	v_div_fmas_f32 v64, v66, v64, v81
	v_fmac_f32_e32 v0, v67, v58
	v_rcp_f32_e32 v66, v88
	v_fma_f32 v67, -v74, v72, v82
	v_div_scale_f32 v80, s9, v39, v59, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v65, v0, v56
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v72, v67, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v56, v80, v75
	v_div_fixup_f32 v29, v64, v59, v29
	v_div_scale_f32 v65, null, v59, v59, v31
	v_fma_f32 v64, -v88, v66, 1.0
	v_div_fmas_f32 v0, v55, v58, v0
	v_fma_f32 v55, -v74, v72, v82
	v_fma_f32 v58, -v73, v56, v80
	v_div_scale_f32 v74, null, v59, v59, v18
	v_fmac_f32_e32 v66, v64, v66
	v_rcp_f32_e32 v64, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v58, v75
	v_rcp_f32_e32 v58, v74
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v67, s10, v37, v59, v37
	v_div_fmas_f32 v55, v55, v83, v72
	v_div_fixup_f32 v0, v0, v59, v19
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v72, v67, v66
	v_fma_f32 v81, -v65, v64, 1.0
	v_div_fixup_f32 v19, v55, v59, v47
	v_fma_f32 v47, -v73, v56, v80
	v_fma_f32 v80, -v74, v58, 1.0
	v_fma_f32 v55, -v88, v72, v67
	v_fmac_f32_e32 v64, v81, v64
	v_div_scale_f32 v73, s11, v31, v59, v31
	v_div_scale_f32 v81, null, v59, v59, v16
	v_fmac_f32_e32 v58, v80, v58
	v_div_scale_f32 v80, null, v59, v59, v17
	v_div_fmas_f32 v47, v47, v75, v56
	v_dual_fmac_f32 v72, v55, v66 :: v_dual_mul_f32 v55, v73, v64
	v_rcp_f32_e32 v56, v81
	v_div_scale_f32 v75, s9, v18, v59, v18
	v_rcp_f32_e32 v83, v80
	v_div_fixup_f32 v39, v47, v59, v39
	v_fma_f32 v47, -v88, v72, v67
	v_fma_f32 v67, -v65, v55, v73
	v_mul_f32_e32 v82, v75, v58
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v81, v56, 1.0
	v_div_fmas_f32 v47, v47, v66, v72
	v_fmac_f32_e32 v55, v67, v64
	v_fma_f32 v66, -v74, v82, v75
	v_fma_f32 v72, -v80, v83, 1.0
	v_fmac_f32_e32 v56, v88, v56
	v_div_scale_f32 v67, s10, v16, v59, v16
	v_div_fixup_f32 v37, v47, v59, v37
	v_fma_f32 v47, -v65, v55, v73
	v_dual_fmac_f32 v82, v66, v58 :: v_dual_fmac_f32 v83, v72, v83
	v_div_scale_f32 v72, null, v57, v57, v45
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v65, v67, v56
	v_div_scale_f32 v66, s12, v17, v59, v17
	v_div_fmas_f32 v47, v47, v64, v55
	v_fma_f32 v55, -v74, v82, v75
	v_rcp_f32_e32 v73, v72
	v_div_scale_f32 v75, null, v57, v57, v40
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v64, -v81, v65, v67
	v_mul_f32_e32 v74, v66, v83
	v_div_fmas_f32 v55, v55, v58, v82
	v_rcp_f32_e32 v58, v75
	v_div_fixup_f32 v31, v47, v59, v31
	v_fmac_f32_e32 v65, v64, v56
	v_fma_f32 v64, -v80, v74, v66
	v_fma_f32 v82, -v72, v73, 1.0
	v_div_fixup_f32 v18, v55, v59, v18
	v_div_scale_f32 v55, s9, v45, v57, v45
	v_fma_f32 v47, -v81, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v74, v64, v83 :: v_dual_fmac_f32 v73, v82, v73
	v_fma_f32 v64, -v75, v58, 1.0
	v_div_scale_f32 v67, null, v57, v57, v33
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v56, v65
	v_fma_f32 v56, -v80, v74, v66
	v_dual_mul_f32 v65, v55, v73 :: v_dual_fmac_f32 v58, v64, v58
	v_rcp_f32_e32 v64, v67
	v_div_scale_f32 v66, s10, v40, v57, v40
	v_div_scale_f32 v80, null, v57, v57, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v81, v66, v58
	v_div_fmas_f32 v56, v56, v83, v74
	v_fma_f32 v74, -v72, v65, v55
	v_rcp_f32_e32 v83, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v67, v64, 1.0
	v_div_fixup_f32 v16, v47, v59, v16
	v_fma_f32 v47, -v75, v81, v66
	v_fmac_f32_e32 v65, v74, v73
	v_div_fixup_f32 v17, v56, v59, v17
	v_fmac_f32_e32 v64, v82, v64
	v_div_scale_f32 v56, s11, v33, v57, v33
	v_div_scale_f32 v59, null, v57, v57, v108
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v80, v83, 1.0
	v_fma_f32 v55, -v72, v65, v55
	v_fmac_f32_e32 v81, v47, v58
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v47, v56, v64
	v_rcp_f32_e32 v72, v59
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s12, v34, v57, v34
	v_div_fmas_f32 v55, v55, v73, v65
	v_fma_f32 v65, -v75, v81, v66
	v_div_scale_f32 v82, null, v57, v57, v46
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v66, -v67, v47, v56
	v_mul_f32_e32 v73, v74, v83
	v_div_fmas_f32 v58, v65, v58, v81
	v_rcp_f32_e32 v65, v82
	v_fma_f32 v75, -v59, v72, 1.0
	v_fmac_f32_e32 v47, v66, v64
	v_fma_f32 v66, -v80, v73, v74
	v_div_fixup_f32 v40, v58, v57, v40
	v_div_fixup_f32 v45, v55, v57, v45
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, s9, v108, v57, v108
	v_fmac_f32_e32 v73, v66, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v82, v65, 1.0
	v_div_scale_f32 v66, null, v57, v57, v41
	v_fma_f32 v55, -v67, v47, v56
	v_dual_mul_f32 v56, v75, v72 :: v_dual_fmac_f32 v65, v58, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v58, v66
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v67, s10, v46, v57, v46
	v_div_fmas_f32 v47, v55, v64, v47
	v_fma_f32 v55, -v80, v73, v74
	v_fma_f32 v64, -v59, v56, v75
	v_div_scale_f32 v74, null, v57, v57, v38
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v66, v58, 1.0
	v_fmac_f32_e32 v56, v64, v72
	v_rcp_f32_e32 v64, v74
	v_div_fmas_f32 v55, v55, v83, v73
	v_mul_f32_e32 v73, v67, v65
	v_div_fixup_f32 v33, v47, v57, v33
	v_fma_f32 v47, -v59, v56, v75
	v_fmac_f32_e32 v58, v80, v58
	v_div_scale_f32 v80, null, v57, v57, v15
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v55, v57, v34
	v_fma_f32 v55, -v82, v73, v67
	v_div_scale_f32 v59, s11, v41, v57, v41
	v_fma_f32 v75, -v74, v64, 1.0
	v_div_fmas_f32 v47, v47, v72, v56
	v_rcp_f32_e32 v56, v80
	v_fmac_f32_e32 v73, v55, v65
	v_mul_f32_e32 v55, v59, v58
	v_fmac_f32_e32 v64, v75, v64
	v_div_scale_f32 v72, s9, v38, v57, v38
	v_div_scale_f32 v75, null, v57, v57, v50
	v_fma_f32 v67, -v82, v73, v67
	v_fma_f32 v81, -v66, v55, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v72, v64
	v_rcp_f32_e32 v83, v75
	v_fma_f32 v88, -v80, v56, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v55, v81, v58
	v_div_fmas_f32 v65, v67, v65, v73
	v_fma_f32 v67, -v74, v82, v72
	v_fmac_f32_e32 v56, v88, v56
	v_div_scale_f32 v73, s10, v15, v57, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v46, v65, v57, v46
	v_fma_f32 v81, -v75, v83, 1.0
	v_fma_f32 v59, -v66, v55, v59
	v_fmac_f32_e32 v82, v67, v64
	v_mul_f32_e32 v65, v73, v56
	v_div_scale_f32 v67, null, v57, v57, v101
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v81, v83
	v_div_scale_f32 v66, s12, v50, v57, v50
	v_div_fmas_f32 v55, v59, v58, v55
	v_fma_f32 v58, -v74, v82, v72
	v_fma_f32 v59, -v80, v65, v73
	v_rcp_f32_e32 v72, v67
	v_div_scale_f32 v81, null, v57, v57, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v74, v66, v83 :: v_dual_fmac_f32 v65, v59, v56
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v59, v81
	v_div_fmas_f32 v58, v58, v64, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v64, -v75, v74, v66
	v_div_fixup_f32 v41, v55, v57, v41
	v_fma_f32 v82, -v67, v72, 1.0
	v_fma_f32 v55, -v80, v65, v73
	v_div_fixup_f32 v38, v58, v57, v38
	v_div_scale_f32 v58, s9, v101, v57, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v72, v82, v72
	v_fmac_f32_e32 v74, v64, v83
	v_fma_f32 v64, -v81, v59, 1.0
	v_div_scale_f32 v73, null, v57, v57, v42
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v47, v47, v57, v108
	v_fmac_f32_e32 v59, v64, v59
	v_rcp_f32_e32 v64, v73
	v_div_fmas_f32 v55, v55, v56, v65
	v_mul_f32_e32 v65, v58, v72
	v_fma_f32 v56, -v75, v74, v66
	v_div_scale_f32 v66, s10, v102, v57, v102
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v75, null, v57, v57, v14
	v_div_fmas_f32 v56, v56, v83, v74
	v_fma_f32 v74, -v67, v65, v58
	v_mul_f32_e32 v80, v66, v59
	v_fma_f32 v82, -v73, v64, 1.0
	v_rcp_f32_e32 v83, v75
	v_div_fixup_f32 v15, v55, v57, v15
	v_fmac_f32_e32 v65, v74, v72
	v_fma_f32 v55, -v81, v80, v66
	v_fmac_f32_e32 v64, v82, v64
	v_div_scale_f32 v74, s11, v42, v57, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v67, v65, v58
	v_fmac_f32_e32 v80, v55, v59
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v67, v74, v64
	v_div_fixup_f32 v50, v56, v57, v50
	v_fma_f32 v56, -v75, v83, 1.0
	v_div_fmas_f32 v55, v58, v72, v65
	v_div_scale_f32 v72, null, v57, v57, v12
	v_fma_f32 v58, -v73, v67, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v56, v83
	v_div_scale_f32 v89, s12, v14, v57, v14
	v_div_scale_f32 v82, null, v57, v57, v13
	v_fmac_f32_e32 v67, v58, v64
	v_rcp_f32_e32 v58, v72
	v_fma_f32 v56, -v81, v80, v66
	v_mul_f32_e32 v65, v89, v83
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v88, v82
	v_fma_f32 v73, -v73, v67, v74
	v_div_fmas_f32 v56, v56, v59, v80
	v_fma_f32 v59, -v75, v65, v89
	v_div_scale_f32 v80, null, v49, v49, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v72, v58, 1.0
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v65, v59, v83
	v_div_fmas_f32 v64, v73, v64, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v82, v88, 1.0
	v_fmac_f32_e32 v58, v74, v58
	v_rcp_f32_e32 v74, v80
	v_fma_f32 v67, -v75, v65, v89
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v88, v66, v88
	v_div_scale_f32 v66, s9, v13, v57, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v65, v67, v83, v65
	v_div_scale_f32 v75, s10, v12, v57, v12
	v_div_fixup_f32 v42, v64, v57, v42
	v_fma_f32 v83, -v80, v74, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v49, v49, v93
	v_div_fixup_f32 v14, v65, v57, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v74, v83, v74 :: v_dual_mul_f32 v59, v66, v88
	v_rcp_f32_e32 v67, v81
	v_div_scale_f32 v83, null, v49, v49, v43
	v_div_fixup_f32 v55, v55, v57, v101
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v73, -v82, v59, v66
	v_div_fixup_f32 v56, v56, v57, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v59, v73, v88
	v_mul_f32_e32 v73, v75, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v82, v59, v66
	v_fma_f32 v65, -v72, v73, v75
	v_div_scale_f32 v66, s11, v92, v49, v92
	v_fma_f32 v82, -v81, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v59, v64, v88, v59
	v_div_scale_f32 v88, null, v49, v49, v44
	v_fmac_f32_e32 v73, v65, v58
	v_mul_f32_e32 v64, v66, v74
	v_div_fixup_f32 v13, v59, v57, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v88
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v59, -v72, v73, v75
	v_fma_f32 v72, -v80, v64, v66
	v_rcp_f32_e32 v65, v83
	v_fmac_f32_e32 v67, v82, v67
	v_div_scale_f32 v82, s9, v93, v49, v93
	v_div_fmas_f32 v58, v59, v58, v73
	v_fmac_f32_e32 v64, v72, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v88, v89, 1.0
	v_div_scale_f32 v72, s10, v43, v49, v43
	v_div_fixup_f32 v12, v58, v57, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v80, v64, v66
	v_fmac_f32_e32 v89, v73, v89
	v_div_scale_f32 v66, s12, v44, v49, v44
	v_fma_f32 v90, -v83, v65, 1.0
	v_div_scale_f32 v73, null, v49, v49, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v66, v89
	v_mul_f32_e32 v75, v82, v67
	v_fmac_f32_e32 v65, v90, v65
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v57, v57, v74, v64
	v_fma_f32 v59, -v81, v75, v82
	v_rcp_f32_e32 v74, v73
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v57, v49, v92
	v_fmac_f32_e32 v75, v59, v67
	v_mul_f32_e32 v59, v72, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v81, v75, v82
	v_fma_f32 v64, -v83, v59, v72
	v_div_scale_f32 v81, null, v49, v49, v85
	v_div_scale_f32 v82, null, v49, v49, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v58, v58, v67, v75
	v_fmac_f32_e32 v59, v64, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v64, v81
	v_fma_f32 v67, -v88, v80, v66
	v_fma_f32 v75, -v73, v74, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v72, -v83, v59, v72
	v_div_scale_f32 v83, null, v49, v49, v87
	v_fmac_f32_e32 v80, v67, v89
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v67, s9, v84, v49, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v81, v64, 1.0
	v_div_fmas_f32 v59, v72, v65, v59
	v_fma_f32 v65, -v88, v80, v66
	v_mul_f32_e32 v66, v67, v74
	v_rcp_f32_e32 v72, v82
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v64, v75, v64
	v_div_scale_f32 v75, s10, v85, v49, v85
	v_div_fmas_f32 v65, v65, v89, v80
	v_fma_f32 v80, -v73, v66, v67
	v_rcp_f32_e32 v90, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v75, v64
	v_div_fixup_f32 v43, v59, v49, v43
	v_fma_f32 v89, -v82, v72, 1.0
	v_fmac_f32_e32 v66, v80, v74
	v_div_scale_f32 v80, null, v49, v49, v11
	v_div_fixup_f32 v44, v65, v49, v44
	v_fma_f32 v59, -v81, v88, v75
	v_fmac_f32_e32 v72, v89, v72
	v_div_scale_f32 v65, s11, v86, v49, v86
	v_fma_f32 v89, -v83, v90, 1.0
	v_rcp_f32_e32 v91, v80
	v_fma_f32 v67, -v73, v66, v67
	v_fmac_f32_e32 v88, v59, v64
	v_mul_f32_e32 v73, v65, v72
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v87, v49, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v58, v58, v49, v93
	v_div_fmas_f32 v59, v67, v74, v66
	v_fma_f32 v66, -v81, v88, v75
	v_fma_f32 v67, -v82, v73, v65
	v_mul_f32_e32 v74, v89, v90
	v_fma_f32 v75, -v80, v91, 1.0
	v_div_scale_f32 v81, null, v49, v49, v76
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v73, v67, v72
	v_div_fmas_f32 v64, v66, v64, v88
	v_rcp_f32_e32 v67, v81
	v_fma_f32 v66, -v83, v74, v89
	v_fmac_f32_e32 v91, v75, v91
	v_div_scale_f32 v75, s9, v11, v49, v11
	v_fma_f32 v65, -v82, v73, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v66, v90
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v82, v75, v91
	v_div_scale_f32 v88, null, v49, v49, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v81, v67, 1.0
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v72, -v83, v74, v89
	v_fma_f32 v73, -v80, v82, v75
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v64, v64, v49, v85
	v_fmac_f32_e32 v67, v66, v67
	v_div_scale_f32 v85, s10, v76, v49, v76
	v_div_fmas_f32 v66, v72, v90, v74
	v_fmac_f32_e32 v82, v73, v91
	v_rcp_f32_e32 v72, v88
	v_div_fixup_f32 v59, v59, v49, v84
	v_div_scale_f32 v84, null, v49, v49, v77
	v_mul_f32_e32 v73, v85, v67
	v_div_fixup_f32 v66, v66, v49, v87
	v_fma_f32 v75, -v80, v82, v75
	v_div_scale_f32 v87, null, v49, v49, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v84
	v_div_fixup_f32 v65, v65, v49, v86
	v_fma_f32 v80, -v81, v73, v85
	v_fma_f32 v86, -v88, v72, 1.0
	v_div_fmas_f32 v75, v75, v91, v82
	v_rcp_f32_e32 v82, v87
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v73, v80, v67 :: v_dual_fmac_f32 v72, v86, v72
	v_div_scale_f32 v86, s9, v78, v49, v78
	v_fma_f32 v74, -v84, v83, 1.0
	v_div_fixup_f32 v11, v75, v49, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v81, v73, v85
	v_mul_f32_e32 v85, v86, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v87, v82, 1.0
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s11, v77, v49, v77
	v_div_scale_f32 v89, null, v49, v49, v10
	v_div_fmas_f32 v67, v75, v67, v73
	v_fma_f32 v73, -v88, v85, v86
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v75, s10, v79, v49, v79
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v73, v72
	s_mov_b32 vcc_lo, s11
	v_dual_mul_f32 v73, v75, v82 :: v_dual_mul_f32 v80, v74, v83
	v_div_fixup_f32 v67, v67, v49, v76
	v_div_scale_f32 v76, s12, v10, v49, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v80, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v81, v83
	v_fma_f32 v81, -v89, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v84, v80, v74
	v_fmac_f32_e32 v90, v81, v90
	v_div_scale_f32 v81, null, v49, v49, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v83, v80
	v_fma_f32 v80, -v88, v85, v86
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v88, null, v49, v49, v9
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v87, v73, v75
	v_mul_f32_e32 v86, v76, v90
	v_div_fmas_f32 v72, v80, v72, v85
	v_rcp_f32_e32 v80, v88
	v_div_fixup_f32 v74, v74, v49, v77
	v_fmac_f32_e32 v73, v83, v82
	v_fma_f32 v83, -v89, v86, v76
	v_fma_f32 v85, -v81, v84, 1.0
	v_div_fixup_f32 v72, v72, v49, v78
	v_div_scale_f32 v77, s9, v8, v49, v8
	v_fma_f32 v75, -v87, v73, v75
	v_fmac_f32_e32 v86, v83, v90
	v_fmac_f32_e32 v84, v85, v84
	v_fma_f32 v78, -v88, v80, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v51, v51, v69
	v_div_fmas_f32 v73, v75, v82, v73
	v_fma_f32 v75, -v89, v86, v76
	v_mul_f32_e32 v76, v77, v84
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, null, v51, v51, v68
	v_div_scale_f32 v82, s10, v9, v49, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v81, v76, v77
	v_rcp_f32_e32 v83, v78
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v73, v73, v49, v79
	v_div_fmas_f32 v75, v75, v90, v86
	v_fmac_f32_e32 v76, v85, v84
	v_mul_f32_e32 v86, v82, v80
	v_rcp_f32_e32 v79, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v10, v75, v49, v10
	v_fma_f32 v77, -v81, v76, v77
	v_fma_f32 v85, -v78, v83, 1.0
	v_div_scale_f32 v81, null, v51, v51, v71
	v_fma_f32 v75, -v88, v86, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v77, v84, v76
	v_fmac_f32_e32 v83, v85, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v81
	v_fma_f32 v89, -v87, v79, 1.0
	v_fmac_f32_e32 v86, v75, v80
	v_div_scale_f32 v75, s11, v68, v51, v68
	v_div_scale_f32 v84, s9, v69, v51, v69
	v_fma_f32 v77, -v88, v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v75, v83
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v88, -v81, v85, 1.0
	v_div_scale_f32 v90, null, v51, v51, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v78, v82, v75
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s12, v71, v51, v71
	v_mul_f32_e32 v91, v84, v79
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v77, v77, v80, v86
	v_fmac_f32_e32 v82, v89, v83
	v_mul_f32_e32 v86, v88, v85
	v_fma_f32 v80, -v87, v91, v84
	v_div_fixup_f32 v8, v76, v49, v8
	v_div_fixup_f32 v9, v77, v49, v9
	v_fma_f32 v49, -v78, v82, v75
	v_fma_f32 v75, -v81, v86, v88
	v_div_scale_f32 v77, null, v51, v51, v60
	v_fmac_f32_e32 v91, v80, v79
	v_fma_f32 v76, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v77
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v78, -v87, v91, v84
	v_fmac_f32_e32 v92, v76, v92
	v_div_scale_f32 v76, s10, v70, v51, v70
	v_div_fmas_f32 v49, v49, v83, v82
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v79, v91
	v_fma_f32 v79, -v81, v86, v88
	v_mul_f32_e32 v80, v76, v92
	v_div_scale_f32 v81, null, v51, v51, v61
	v_fma_f32 v82, -v77, v75, 1.0
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v84, -v90, v80, v76
	v_div_fmas_f32 v79, v79, v85, v86
	v_rcp_f32_e32 v83, v81
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s9, v60, v51, v60
	v_div_fixup_f32 v49, v49, v51, v68
	v_fmac_f32_e32 v80, v84, v92
	v_div_fixup_f32 v68, v78, v51, v69
	v_div_fixup_f32 v69, v79, v51, v71
	v_mul_f32_e32 v71, v82, v75
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	v_div_scale_f32 v79, null, v51, v51, v62
	v_fma_f32 v84, -v77, v71, v82
	v_fmac_f32_e32 v83, v78, v83
	v_div_scale_f32 v78, s11, v61, v51, v61
	v_div_fmas_f32 v76, v76, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v84, v75
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v78, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v70, v76, v51, v70
	v_fma_f32 v76, -v77, v71, v82
	v_div_scale_f32 v84, null, v51, v51, v63
	v_fma_f32 v77, -v81, v80, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v76, v75, v71
	v_div_scale_f32 v75, null, v51, v51, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v77, v83
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v76, s9, v62, v51, v62
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v51, v51, v53
	v_div_fixup_f32 v60, v71, v51, v60
	v_fma_f32 v78, -v81, v80, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v77, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v71, v86
	v_div_scale_f32 v71, s10, v63, v51, v63
	v_fmac_f32_e32 v77, v87, v77
	v_div_scale_f32 v87, null, v51, v51, v54
	v_div_fmas_f32 v78, v78, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v71, v86
	v_div_scale_f32 v89, s11, v7, v51, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v71
	v_mul_f32_e32 v92, v89, v77
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v53, v51, v53
	v_div_fixup_f32 v61, v78, v51, v61
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v78, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v71, -v84, v83, v71
	v_fmac_f32_e32 v92, v78, v77
	v_fma_f32 v78, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v54, v51, v54
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v75, -v75, v92, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v79, v78, v88 :: v_dual_mul_f32 v78, v80, v91
	v_div_scale_f32 v81, null, v51, v51, v52
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v62, v76, v51, v62
	v_div_fmas_f32 v71, v71, v86, v83
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v75, v75, v77, v92
	v_fma_f32 v77, -v82, v79, v90
	v_fma_f32 v82, -v87, v78, v80
	v_div_fixup_f32 v63, v71, v51, v63
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v7, v75, v51, v7
	v_div_fmas_f32 v77, v77, v88, v79
	v_fmac_f32_e32 v78, v82, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_scale_f32 v75, null, v51, v51, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v87, v78, v80
	v_div_fixup_f32 v53, v77, v51, v53
	v_fmac_f32_e32 v83, v76, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v85, null, v51, v51, v6
	v_div_fmas_f32 v71, v71, v91, v78
	v_div_scale_f32 v79, vcc_lo, v52, v51, v52
	v_div_scale_f32 v78, null, v51, v51, v5
	v_div_fixup_f32 v54, v71, v51, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v79, v83
	v_fma_f32 v71, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v76, null, v51, v51, v4
	v_fma_f32 v88, -v81, v84, v79
	v_fmac_f32_e32 v77, v71, v77
	v_div_scale_f32 v71, s9, v48, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v76
	v_fmac_f32_e32 v84, v88, v83
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v81, v84, v79
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v5, v51, v5
	v_fmac_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_mul_f32_e32 v93, v89, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, s12, v6, v51, v6
	v_fma_f32 v86, -v76, v80, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v71, v77
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v75, v90, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v4, v51, v4
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_cvt_i32_f32_e32 v84, v9
	v_and_b32_e32 v9, 15, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v75, v90, v71
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v79, v51, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v77, v90
	v_fmac_f32_e32 v94, v75, v87
	v_fma_f32 v75, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v86, v80
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_and_b32_e32 v43, 15, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v48, v71, v51, v48
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v72, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	v_div_fixup_f32 v4, v76, v51, v4
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v5, v75, v51, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v90, v7
	v_and_b32_e32 v7, 15, v24
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_and_b32_e32 v12, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v98
	v_lshlrev_b32_e32 v24, 4, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v4
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v47, 15, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v51, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v56, v56, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v6
	v_and_b32_e32 v6, 15, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v21, 16, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v56, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v21
	v_xor_b32_e32 v24, v24, v27
	v_lshlrev_b32_e32 v27, 6, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v85, v49
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v23, 0x1b00, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v91, v53
	v_cvt_i32_f32_e32 v92, v54
	v_cvt_i32_f32_e32 v93, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v10
	v_cvt_i32_f32_e32 v83, v8
	v_cvt_i32_f32_e32 v86, v60
	v_cvt_i32_f32_e32 v87, v61
	v_cvt_i32_f32_e32 v88, v62
	v_cvt_i32_f32_e32 v89, v63
	v_cvt_i32_f32_e32 v96, v5
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v33, 15, v46
	v_and_b32_e32 v45, 15, v57
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v60, 15, v85
	v_and_b32_e32 v61, 15, v68
	v_and_b32_e32 v62, 15, v69
	v_and_b32_e32 v63, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v25
	v_xad_u32 v23, v23, v100, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v77, v13
	v_and_b32_e32 v13, 15, v19
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v50
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v39, 15, v55
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v66
	v_and_b32_e32 v54, 15, v67
	v_and_b32_e32 v55, 15, v71
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v69, 15, v91
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v23
	ds_load_b128 v[12:15], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v23
	ds_load_b128 v[36:39], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v23
	ds_load_b128 v[52:55], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v23
	ds_load_b128 v[68:71], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v23
	ds_load_b128 v[16:19], v23 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_cvt_i32_f32_e32 v94, v48
	v_and_b32_e32 v48, 15, v58
	v_and_b32_e32 v49, 15, v59
	v_and_b32_e32 v50, 15, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v23
	ds_load_b128 v[40:43], v23 offset:1024
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v65
	v_and_b32_e32 v57, 15, v82
	v_and_b32_e32 v58, 15, v83
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v64, 15, v86
	v_and_b32_e32 v65, 15, v87
	v_and_b32_e32 v66, 15, v88
	v_and_b32_e32 v67, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v23
	ds_load_b128 v[56:59], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v73, 15, v95
	v_and_b32_e32 v74, 15, v96
	v_and_b32_e32 v75, 15, v97
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v99
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v23
	ds_load_b128 v[72:75], v23 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s9, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v36, 4, v27
	v_lshl_or_b32 v18, v37, 4, v28
	v_lshl_or_b32 v24, v40, 4, v31
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v28, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v30
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v24.l
	s_mov_b32 s12, s24
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v22, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v98
	v_lshrrev_b32_e32 v5, 2, v21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v98
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp73:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 516
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 516
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34688
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 516
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 516
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 128
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
