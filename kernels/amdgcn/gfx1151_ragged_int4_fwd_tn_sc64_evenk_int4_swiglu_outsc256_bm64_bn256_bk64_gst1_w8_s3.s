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
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[28:29], s[0:1], 0x5c
	v_dual_mov_b32 v105, v0 :: v_dual_mov_b32 v112, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b128 s[12:15], s[0:1], 0x28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v105
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s29, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s9, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s9
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
	s_xor_b32 s7, s9, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s10, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s3, s8, s3
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s11, s2, s10
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s75, s11, s10
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s9, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s6, s12, s4
	s_addc_u32 s7, s13, s5
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s14, s4
	s_addc_u32 s7, s15, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s2, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s2
	v_add_nc_u32_e32 v0, s66, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s28, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow779
	s_load_b128 s[68:71], s[0:1], 0x40
	v_lshrrev_b32_e32 v110, 7, v105
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v106, 15, v105
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v109, 0x7f, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v104, 30, v110
	v_or_b32_e32 v103, 28, v110
	v_or_b32_e32 v98, 26, v110
	v_or_b32_e32 v96, 24, v110
	v_or_b32_e32 v97, 22, v110
	v_or_b32_e32 v95, 20, v110
	v_or_b32_e32 v90, 18, v110
	v_or_b32_e32 v89, 16, v110
	v_or_b32_e32 v88, 14, v110
	v_or_b32_e32 v87, 12, v110
	v_or_b32_e32 v82, 10, v110
	v_or_b32_e32 v185, 8, v110
	v_or_b32_e32 v184, 6, v110
	v_or_b32_e32 v79, 4, v110
	v_or_b32_e32 v111, 2, v110
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v247, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s21, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s66, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v197, 0, v106
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[8:9], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[8:9]
	v_lshrrev_b32_e32 v9, 1, v105
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[6:7]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v3, s66, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v212, 0 :: v_dual_and_b32 v9, 0x70, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s5, s7
	s_and_b32 s1, s1, s6
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v199, v197, v9
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v9, 0xf0, v105
	v_dual_mov_b32 v213, 0 :: v_dual_lshlrev_b32 v10, 5, v105
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s28, s8
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v6, 16, v3
	s_lshl_b32 s6, s5, 1
	s_mul_i32 s5, s5, s74
	s_or_b32 s6, s6, 1
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v7, 32, v3
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v8, 48, v3
	v_mul_lo_u32 v3, s28, v3
	s_mul_i32 s7, s74, s6
	s_lshl_b32 s6, s11, 8
	s_lshl_b32 s5, s5, 1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v2, 6, v105
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[4:5]
	v_dual_mov_b32 v208, 0 :: v_dual_lshlrev_b32 v11, 2, v9
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_add3_u32 v14, s5, s6, v105
	s_lshl_b32 s5, s10, 8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v5, 28, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v23, 0, v11, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v6, s28, v6
	v_subrev_nc_u32_e32 v11, s5, v14
	v_dual_mov_b32 v243, 0 :: v_dual_lshlrev_b32 v14, 1, v3
	v_dual_mov_b32 v218, 0 :: v_dual_lshlrev_b32 v3, 1, v110
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s4, s74, 1
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v7, s28, v7
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s4, s20
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v13, s7, s6, v105
	s_mul_i32 s20, s20, s8
	v_mad_u64_u32 v[16:17], null, v5, s21, v[1:2]
	v_or_b32_e32 v5, 24, v2
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v12, 1, v105
	v_lshl_add_u32 v3, s20, 1, v3
	v_subrev_nc_u32_e32 v10, s5, v13
	v_dual_mov_b32 v220, 0 :: v_dual_lshlrev_b32 v13, 1, v6
	v_or_b32_e32 v6, 20, v2
	v_mad_u64_u32 v[25:26], null, s21, v5, v[1:2]
	v_or_b32_e32 v5, 16, v2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v4, 12, v2
	v_dual_mov_b32 v209, 0 :: v_dual_and_b32 v22, 28, v12
	v_dual_mov_b32 v245, 0 :: v_dual_lshlrev_b32 v12, 1, v7
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v7, 61, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[26:27], null, s21, v6, v[1:2]
	v_mad_u64_u32 v[27:28], null, s21, v5, v[1:2]
	v_or_b32_e32 v6, 8, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v5, s74, v7
	v_mad_u64_u32 v[28:29], null, v4, s21, v[1:2]
	v_or_b32_e32 v4, 4, v2
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v7, 57, v3
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_dual_mov_b32 v223, 0 :: v_dual_lshlrev_b32 v0, 1, v109
	v_mad_u64_u32 v[29:30], null, s21, v6, v[1:2]
	v_mad_u64_u32 v[30:31], null, s21, v4, v[1:2]
	v_mul_lo_u32 v4, s74, v7
	v_dual_mov_b32 v229, 0 :: v_dual_add_nc_u32 v6, 53, v3
	v_add3_u32 v5, v5, s6, v0
	v_mad_u64_u32 v[31:32], null, s21, v2, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v1, s74, v6
	v_mul_lo_u32 v7, s74, v104
	v_subrev_nc_u32_e32 v5, s5, v5
	v_add3_u32 v4, v4, s6, v0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v192, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v5, 1, v5
	v_subrev_nc_u32_e32 v4, s5, v4
	v_add3_u32 v1, v1, s6, v0
	v_mov_b32_e32 v78, 0
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v2, 49, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:396
	scratch_store_b32 off, v97, off offset:604
	v_lshlrev_b32_e32 v5, 1, v7
	v_subrev_nc_u32_e32 v1, s5, v1
	v_mul_lo_u32 v7, s74, v98
	v_mul_lo_u32 v2, s74, v2
	v_mov_b32_e32 v124, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:400
	scratch_store_b32 off, v106, off offset:548
	scratch_store_b32 off, v96, off offset:600
	v_mul_lo_u32 v5, s74, v103
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v7
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v6, 45, v3
	v_add3_u32 v2, v2, s6, v0
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v7, 37, v3
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	scratch_store_b32 off, v4, off offset:404 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s74, v6
	v_mul_lo_u32 v8, s28, v8
	v_mov_b32_e32 v136, 0
	scratch_store_b32 off, v5, off offset:408 ; 4-byte Folded Spill
	v_mul_lo_u32 v5, s74, v96
	v_mov_b32_e32 v152, 0
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v6, 41, v3
	v_add3_u32 v4, v4, s6, v0
	v_dual_mov_b32 v236, 0 :: v_dual_lshlrev_b32 v205, 1, v8
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v8, 33, v3
	v_lshlrev_b32_e32 v5, 1, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:416
	scratch_store_b32 off, v109, off offset:552
	v_subrev_nc_u32_e32 v1, s5, v2
	v_mul_lo_u32 v2, s74, v6
	scratch_store_b32 off, v5, off offset:424 ; 4-byte Folded Spill
	v_mul_lo_u32 v5, s74, v95
	v_mul_lo_u32 v6, s74, v97
	v_add_nc_u32_e32 v1, 1, v1
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v123, 0
	v_add3_u32 v2, v2, s6, v0
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s5, v4
	v_mul_lo_u32 v4, s74, v7
	v_mul_lo_u32 v7, s74, v8
	v_mul_lo_u32 v8, s74, v90
	v_mov_b32_e32 v137, 0
	v_add_nc_u32_e32 v1, 1, v1
	v_mov_b32_e32 v77, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v158, 0
	v_add3_u32 v4, v4, s6, v0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v101, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v157, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v4, s5, v4
	v_mov_b32_e32 v180, 0
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v17, 13, v3
	v_mov_b32_e32 v182, 0
	v_add_nc_u32_e32 v4, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:428
	scratch_store_b32 off, v110, off offset:556
	v_lshlrev_b32_e32 v1, 1, v6
	v_add3_u32 v6, v7, s6, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:444
	scratch_store_b32 off, v98, off offset:608
	v_lshlrev_b32_e32 v4, 1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:432
	scratch_store_b32 off, v111, off offset:560
	v_subrev_nc_u32_e32 v6, s5, v6
	v_subrev_nc_u32_e32 v1, s5, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:448
	scratch_store_b32 off, v103, off offset:612
	v_add_nc_u32_e32 v2, 29, v3
	v_add_nc_u32_e32 v4, 1, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:452
	scratch_store_b32 off, v89, off offset:588
	v_mul_lo_u32 v4, s74, v89
	v_add_nc_u32_e32 v7, 25, v3
	v_mul_lo_u32 v2, s74, v2
	v_add_nc_u32_e32 v1, 1, v1
	v_add_nc_u32_e32 v6, 17, v3
	v_mul_lo_u32 v8, s74, v87
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v176, 0
	v_lshlrev_b32_e32 v4, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:436
	scratch_store_b32 off, v79, off offset:564
	v_mul_lo_u32 v1, s74, v7
	v_add3_u32 v2, v2, s6, v0
	v_mul_lo_u32 v7, s74, v88
	v_mul_lo_u32 v6, s74, v6
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v178, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s5, v2
	v_mov_b32_e32 v186, 0
	v_add3_u32 v1, v1, s6, v0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v151, 0
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v5, off offset:440 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s5, v1
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v5, 21, v3
	v_mov_b32_e32 v80, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v196, s75, 8, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:460 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v7
	scratch_store_b32 off, v4, off offset:456 ; 4-byte Folded Spill
	v_add3_u32 v4, v6, s6, v0
	v_mul_lo_u32 v5, s74, v5
	v_mul_lo_u32 v6, s74, v82
	v_add_nc_u32_e32 v7, 5, v3
	v_mov_b32_e32 v181, 0
	v_subrev_nc_u32_e32 v4, s5, v4
	v_mov_b32_e32 v254, 0
	v_or_b32_e32 v18, 0x300, v105
	v_or_b32_e32 v19, 0x700, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v4, 1, v4
	scratch_store_b32 off, v2, off offset:464 ; 4-byte Folded Spill
	v_add3_u32 v2, v5, s6, v0
	v_lshlrev_b32_e32 v5, 1, v8
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s74, v17
	v_mul_lo_u32 v8, s74, v185
	v_subrev_nc_u32_e32 v2, s5, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:484
	scratch_store_b32 off, v104, off offset:616
	v_mov_b32_e32 v168, 0
	v_or_b32_e32 v20, 0x3f0, v105
	v_add_nc_u32_e32 v2, 1, v2
	v_add3_u32 v1, v1, s6, v0
	scratch_store_b32 off, v5, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 9, v3
	v_mul_lo_u32 v3, s74, v3
	v_mov_b32_e32 v175, 0
	v_subrev_nc_u32_e32 v1, s5, v1
	v_mov_b32_e32 v170, 0
	v_mul_lo_u32 v5, s74, v5
	v_or_b32_e32 v21, 0x7f0, v105
	v_mov_b32_e32 v177, 0
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:492
	scratch_store_b32 off, v184, off offset:568
	v_mul_lo_u32 v1, s74, v184
	v_add3_u32 v4, v5, s6, v0
	v_lshlrev_b32_e32 v5, 1, v8
	scratch_store_b32 off, v2, off offset:476 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v6
	v_mul_lo_u32 v6, s74, v110
	v_subrev_nc_u32_e32 v4, s5, v4
	v_dual_mov_b32 v166, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:480 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s74, v7
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v15, 0, v105
	v_dual_mov_b32 v207, 0 :: v_dual_lshlrev_b32 v24, 1, v9
	v_mov_b32_e32 v189, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s29, s4, s8
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v2, v2, s6, v0
	s_add_i32 s6, s6, s74
	s_mov_b32 s7, s4
	v_add3_u32 v0, s6, v3, v0
	v_mul_lo_u32 v3, s74, v111
	v_subrev_nc_u32_e32 v2, s5, v2
	s_mov_b32 s6, s4
	s_mov_b32 s8, s4
	v_subrev_nc_u32_e32 v0, s5, v0
	s_mov_b32 s5, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:496
	scratch_store_b32 off, v185, off offset:572
	v_add_nc_u32_e32 v1, 1, v4
	scratch_store_b32 off, v5, off offset:488 ; 4-byte Folded Spill
	v_mul_lo_u32 v5, s74, v79
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v6
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	v_dual_mov_b32 v246, 0 :: v_dual_lshlrev_b32 v9, 1, v10
	v_dual_mov_b32 v247, 0 :: v_dual_lshlrev_b32 v244, 1, v11
	v_lshlrev_b32_e32 v1, 1, v5
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v18
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v242, v15, v105
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:504
	scratch_store_b32 off, v82, off offset:576
	v_add_nc_u32_e32 v1, 1, v2
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v19
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v89, 0, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:508
	scratch_store_b32 off, v87, off offset:580
	v_lshlrev_b32_e32 v1, 1, v3
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v20
	scratch_store_b32 off, v90, off offset:592 ; 4-byte Folded Spill
	v_mov_b32_e32 v81, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:512
	scratch_store_b32 off, v88, off offset:584
	scratch_store_b32 off, v0, off offset:532
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v0, 0, v21
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:536
	scratch_store_b32 off, v105, off offset:544
	scratch_store_b32 off, v15, off offset:392
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v0, v23, v22
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_u32 s30, s29, s74
	s_lshl_b32 s31, s74, 2
	s_lshl_b32 s33, s21, 5
	s_lshl_b32 s34, s74, 6
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v95, off offset:596
	scratch_store_b32 off, v0, off offset:540
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1f                           ; 160-byte Folded Spill
	scratch_store_b64 off, v[31:32], off offset:280
	scratch_store_b64 off, v[30:31], off offset:272
	scratch_store_b64 off, v[29:30], off offset:264
	scratch_store_b64 off, v[28:29], off offset:256
	scratch_store_b64 off, v[27:28], off offset:248
	scratch_store_b64 off, v[26:27], off offset:240
	scratch_store_b64 off, v[25:26], off offset:232
	scratch_store_b64 off, v[16:17], off offset:224
	scratch_store_b32 off, v180, off offset:220
	scratch_store_b32 off, v9, off offset:216
	scratch_store_b32 off, v224, off offset:212
	scratch_store_b32 off, v223, off offset:208
	scratch_store_b32 off, v222, off offset:204
	scratch_store_b32 off, v73, off offset:200
	scratch_store_b32 off, v221, off offset:196
	scratch_store_b32 off, v214, off offset:192
	scratch_store_b32 off, v213, off offset:188
	scratch_store_b32 off, v212, off offset:184
	scratch_store_b32 off, v74, off offset:180
	scratch_store_b32 off, v75, off offset:176
	scratch_store_b32 off, v211, off offset:172
	scratch_store_b32 off, v210, off offset:168
	scratch_store_b32 off, v247, off offset:164
	scratch_store_b32 off, v246, off offset:160
	scratch_store_b32 off, v245, off offset:156
	scratch_store_b32 off, v236, off offset:152
	scratch_store_b32 off, v229, off offset:148
	scratch_store_b32 off, v209, off offset:144
	scratch_store_b32 off, v208, off offset:140
	scratch_store_b32 off, v207, off offset:136
	scratch_store_b32 off, v220, off offset:132
	scratch_store_b32 off, v219, off offset:128
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v218, off offset:124
	scratch_store_b32 off, v217, off offset:120
	scratch_store_b32 off, v216, off offset:116
	scratch_store_b32 off, v215, off offset:112
	scratch_store_b32 off, v72, off offset:108
	scratch_store_b32 off, v81, off offset:104
	scratch_store_b32 off, v93, off offset:100
	scratch_store_b32 off, v108, off offset:96
	scratch_store_b32 off, v107, off offset:92
	scratch_store_b32 off, v102, off offset:88
	scratch_store_b32 off, v101, off offset:84
	scratch_store_b32 off, v100, off offset:80
	scratch_store_b32 off, v99, off offset:76
	scratch_store_b32 off, v92, off offset:72
	scratch_store_b32 off, v94, off offset:68
	scratch_store_b32 off, v91, off offset:64
	scratch_store_b32 off, v86, off offset:60
	scratch_store_b32 off, v85, off offset:56
	scratch_store_b32 off, v84, off offset:52
	scratch_store_b32 off, v83, off offset:48
	scratch_store_b32 off, v78, off offset:44
	scratch_store_b32 off, v77, off offset:40
	scratch_store_b32 off, v76, off offset:36
	scratch_store_b32 off, v120, off offset:32
	scratch_store_b32 off, v119, off offset:28
	scratch_store_b32 off, v118, off offset:24
	scratch_store_b32 off, v117, off offset:20
	scratch_store_b32 off, v116, off offset:16
	scratch_store_b32 off, v115, off offset:12
	scratch_store_b32 off, v114, off offset:8
	scratch_store_b32 off, v113, off offset:4
	scratch_store_b32 off, v112, off
	scratch_load_b32 v9, off, off offset:520 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v21, s66, v26
	v_dual_mov_b32 v201, v176 :: v_dual_add_nc_u32 v22, s66, v25
	v_dual_mov_b32 v176, v157 :: v_dual_add_nc_u32 v23, s66, v16
	v_mov_b32_e32 v76, v183
	v_dual_mov_b32 v78, v188 :: v_dual_mov_b32 v15, v14
	v_mov_b32_e32 v188, v163
	v_dual_mov_b32 v172, v145 :: v_dual_mov_b32 v203, v178
	v_dual_mov_b32 v184, v159 :: v_dual_mov_b32 v11, v193
	v_dual_mov_b32 v81, v161 :: v_dual_add_nc_u32 v0, s66, v31
	v_dual_mov_b32 v16, v181 :: v_dual_add_nc_u32 v17, s66, v30
	v_mov_b32_e32 v180, v150
	v_dual_mov_b32 v161, v143 :: v_dual_add_nc_u32 v18, s66, v29
	v_dual_mov_b32 v143, v122 :: v_dual_add_nc_u32 v20, s66, v27
	v_dual_mov_b32 v150, v121 :: v_dual_add_nc_u32 v19, s66, v28
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v20, v20, s[20:23], 0 offen
	buffer_load_u8 v21, v21, s[20:23], 0 offen
	buffer_load_u8 v22, v22, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	buffer_load_u8 v19, v19, s[20:23], 0 offen
	v_dual_mov_b32 v56, v190 :: v_dual_mov_b32 v87, v13
	v_mov_b32_e32 v190, v165
	v_dual_mov_b32 v174, v155 :: v_dual_mov_b32 v155, v124
	v_mov_b32_e32 v200, v170
	v_mov_b32_e32 v170, v140
	v_mov_b32_e32 v202, v177
	v_mov_b32_e32 v178, v148
	v_mov_b32_e32 v10, v182
	v_mov_b32_e32 v182, v152
	v_mov_b32_e32 v152, v131
	v_mov_b32_e32 v13, v187
	v_mov_b32_e32 v187, v162
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s28, s28, -1
	v_mov_b32_e32 v157, v127
	v_dual_mov_b32 v183, v158 :: v_dual_mov_b32 v158, v128
	v_mov_b32_e32 v51, v191
	v_mov_b32_e32 v77, v189
	v_dual_mov_b32 v189, v164 :: v_dual_mov_b32 v164, v133
	v_mov_b32_e32 v191, v166
	v_mov_b32_e32 v163, v154
	v_mov_b32_e32 v154, v134
	v_dual_mov_b32 v173, v146 :: v_dual_mov_b32 v146, v129
	v_mov_b32_e32 v71, v175
	v_dual_mov_b32 v175, v156 :: v_dual_mov_b32 v156, v126
	v_mov_b32_e32 v177, v147
	v_mov_b32_e32 v145, v125
	v_dual_mov_b32 v57, v194 :: v_dual_mov_b32 v194, v169
	v_mov_b32_e32 v169, v139
	v_mov_b32_e32 v159, v141
	v_dual_mov_b32 v185, v160 :: v_dual_mov_b32 v160, v142
	v_mov_b32_e32 v193, v168
	v_mov_b32_e32 v181, v151
	v_mov_b32_e32 v151, v130
	v_mov_b32_e32 v165, v135
	s_waitcnt vmcnt(8)
	v_add3_u32 v55, v9, s4, v196
	scratch_load_b32 v9, off, off offset:512 ; 4-byte Folded Reload
	v_mov_b32_e32 v166, v136
	v_add_nc_u32_e32 v24, s29, v55
	v_add_nc_u32_e32 v55, s30, v55
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v103, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v54, v9, s4, v196
	scratch_load_b32 v9, off, off offset:504 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v54
	v_add_nc_u32_e32 v54, s30, v54
	buffer_load_u16 v104, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v53, v9, s4, v196
	scratch_load_b32 v9, off, off offset:496 ; 4-byte Folded Reload
	v_mov_b32_e32 v14, v12
	v_add_nc_u32_e32 v24, s29, v53
	v_add_nc_u32_e32 v53, s30, v53
	buffer_load_u16 v105, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v52, v9, s4, v196
	scratch_load_b32 v9, off, off offset:488 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v52
	v_add_nc_u32_e32 v52, s30, v52
	buffer_load_u16 v106, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v50, v9, s4, v196
	scratch_load_b32 v9, off, off offset:480 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v50
	buffer_load_u16 v109, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v207, v9, s4, v196
	scratch_load_b32 v9, off, off offset:472 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v207
	buffer_load_u16 v110, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v208, v9, s4, v196
	scratch_load_b32 v9, off, off offset:464 ; 4-byte Folded Reload
	v_mov_b32_e32 v12, v243
	v_mov_b32_e32 v243, v171
	v_dual_mov_b32 v171, v144 :: v_dual_add_nc_u32 v24, s29, v208
	v_mov_b32_e32 v144, v123
	buffer_load_u16 v111, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v209, v9, s4, v196
	scratch_load_b32 v9, off, off offset:456 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v209
	buffer_load_u16 v112, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v252, v9, s4, v196
	scratch_load_b32 v9, off, off offset:448 ; 4-byte Folded Reload
	v_dual_mov_b32 v204, v179 :: v_dual_mov_b32 v179, v149
	v_add_nc_u32_e32 v24, s29, v252
	buffer_load_u16 v113, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v251, v9, s4, v196
	scratch_load_b32 v9, off, off offset:440 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v251
	buffer_load_u16 v114, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v250, v9, s4, v196
	scratch_load_b32 v9, off, off offset:432 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v250
	buffer_load_u16 v115, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v249, v9, s4, v196
	scratch_load_b32 v9, off, off offset:424 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v249
	buffer_load_u16 v116, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v248, v9, s4, v196
	scratch_load_b32 v9, off, off offset:416 ; 4-byte Folded Reload
	v_mov_b32_e32 v168, v138
	v_add_nc_u32_e32 v24, s29, v248
	buffer_load_u16 v117, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v247, v9, s4, v196
	scratch_load_b32 v9, off, off offset:408 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s29, v247
	buffer_load_u16 v118, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v246, v9, s4, v196
	scratch_load_b32 v9, off, off offset:400 ; 4-byte Folded Reload
	v_dual_mov_b32 v162, v153 :: v_dual_mov_b32 v153, v132
	v_add_nc_u32_e32 v50, s30, v50
	v_add_nc_u32_e32 v24, s29, v246
	buffer_load_u16 v119, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add3_u32 v245, v9, s4, v196
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v24, s29, v245
	buffer_load_u16 v120, v24, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v9, v0
	ds_store_b8 v9, v17 offset:256
	ds_store_b8 v9, v18 offset:512
	ds_store_b8 v9, v20 offset:1024
	ds_store_b8 v9, v21 offset:1280
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v19
	ds_store_b8 v9, v22 offset:1536
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v197 offset:320
	ds_load_u8 v17, v197 offset:256
	ds_load_u8 v39, v197 offset:336
	ds_load_u8 v25, v197 offset:272
	ds_load_u8 v59, v197 offset:352
	ds_load_u8 v48, v197 offset:288
	ds_load_u8 v9, v197 offset:368
	ds_load_u8 v63, v197 offset:1200
	ds_load_u8 v73, v197 offset:1152
	ds_load_u8 v74, v197 offset:1088
	ds_load_u8 v31, v197 offset:1104
	ds_load_u8 v91, v197 offset:1040
	ds_load_u8 v225, v197 offset:1120
	ds_load_u8 v226, v197 offset:1056
	ds_load_u8 v65, v197 offset:1136
	ds_load_u8 v66, v197 offset:1072
	ds_load_u8 v100, v197 offset:1472
	ds_load_u8 v23, v197 offset:1536
	ds_load_u8 v92, v197 offset:1488
	ds_load_u8 v93, v197 offset:1424
	ds_load_u8 v230, v197 offset:1504
	ds_load_u8 v231, v197 offset:1440
	ds_load_u8 v62, v197 offset:1520
	ds_load_u8 v195, v197 offset:1456
	ds_load_u8 v97, v197 offset:1408
	ds_load_u8 v236, v197 offset:1344
	ds_load_u8 v94, v197 offset:1360
	ds_load_u8 v82, v197 offset:1296
	ds_load_u8 v232, v197 offset:1376
	ds_load_u8 v234, v197 offset:1312
	ds_load_u8 v206, v197 offset:1392
	ds_load_u8 v47, v197 offset:1328
	ds_load_u8 v24, v197 offset:1984
	ds_load_u8 v34, v197 offset:2000
	ds_load_u8 v33, v197 offset:1936
	ds_load_u8 v233, v197 offset:2016
	ds_load_u8 v235, v197 offset:1952
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v31, v91, v31, 0xc0c0004
	v_perm_b32 v0, v17, v0, 0xc0c0004
	v_perm_b32 v25, v25, v39, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v39, v226, v225, 0xc0c0004
	scratch_store_b32 off, v9, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v9, v197 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v17, v197 offset:448
	ds_load_u8 v18, v197 offset:384
	ds_load_u8 v38, v197 offset:464
	ds_load_u8 v26, v197 offset:400
	ds_load_u8 v46, v197 offset:480
	ds_load_u8 v45, v197 offset:416
	ds_load_u8 v9, v197 offset:496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v26, v26, v38, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v9, v197 offset:432
	v_lshl_or_b32 v26, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v18, v197 offset:64
	ds_load_u8 v19, v197
	ds_load_u8 v37, v197 offset:80
	ds_load_u8 v44, v197 offset:96
	ds_load_u8 v9, v197 offset:112
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v27, v197 offset:16
	ds_load_u8 v43, v197 offset:32
	ds_load_u8 v9, v197 offset:48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v27, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v18, v197 offset:192
	ds_load_u8 v20, v197 offset:128
	ds_load_u8 v36, v197 offset:208
	ds_load_u8 v28, v197 offset:144
	ds_load_u8 v42, v197 offset:224
	ds_load_u8 v40, v197 offset:160
	ds_load_u8 v9, v197 offset:240
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v28, v28, v36, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v40, v42, 0xc0c0004
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v19, v197 offset:960
	ds_load_u8 v20, v197 offset:896
	ds_load_u8 v21, v197 offset:1024
	ds_load_u8 v68, v197 offset:976
	ds_load_u8 v70, v197 offset:912
	ds_load_u8 v215, v197 offset:992
	ds_load_u8 v216, v197 offset:928
	ds_load_u8 v0, v197 offset:944
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v9, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v9, v197 offset:176
	v_lshl_or_b32 v25, v28, 16, v27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v21, v74, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v88, v197 offset:832
	ds_load_u8 v99, v197 offset:768
	ds_load_u8 v35, v197 offset:848
	ds_load_u8 v29, v197 offset:784
	ds_load_u8 v217, v197 offset:864
	ds_load_u8 v218, v197 offset:800
	ds_load_u8 v0, v197 offset:880
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v88, v99, v88, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v27, v29, v35, 0xc0c0004
	v_perm_b32 v35, v43, v44, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	ds_load_u8 v0, v197 offset:816
	v_lshl_or_b32 v20, v19, 16, v88
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	ds_load_u8 v228, v197 offset:704
	ds_load_u8 v229, v197 offset:640
	ds_load_u8 v32, v197 offset:720
	ds_load_u8 v30, v197 offset:656
	ds_load_u8 v219, v197 offset:736
	ds_load_u8 v220, v197 offset:672
	ds_load_u8 v0, v197 offset:752
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v30, v30, v32, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v0, v197 offset:688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	ds_load_u8 v107, v197 offset:576
	ds_load_u8 v108, v197 offset:512
	ds_load_u8 v83, v197 offset:592
	ds_load_u8 v84, v197 offset:528
	ds_load_u8 v221, v197 offset:608
	ds_load_u8 v222, v197 offset:544
	ds_load_u8 v0, v197 offset:624
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v99, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v29, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v222, v221, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v64, v197 offset:560
	ds_load_u8 v22, v197 offset:1216
	ds_load_u8 v67, v197 offset:1280
	ds_load_u8 v85, v197 offset:1232
	ds_load_u8 v86, v197 offset:1168
	ds_load_u8 v223, v197 offset:1248
	ds_load_u8 v224, v197 offset:1184
	ds_load_u8 v0, v197 offset:1264
	v_lshl_or_b32 v27, v30, 16, v29
	v_perm_b32 v29, v82, v94, 0xc0c0004
	v_perm_b32 v30, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v73, v22, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v67, v67, v236, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v32, v86, v85, 0xc0c0004
	v_lshl_or_b32 v21, v73, 16, v21
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	v_lshl_or_b32 v29, v32, 16, v31
	v_perm_b32 v32, v33, v34, 0xc0c0004
	v_perm_b32 v34, v45, v46, 0xc0c0004
	v_perm_b32 v33, v48, v59, 0xc0c0004
	v_perm_b32 v40, v224, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	v_perm_b32 v35, v218, v217, 0xc0c0004
	v_perm_b32 v36, v216, v215, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v38, 16, v37
	v_perm_b32 v37, v234, v232, 0xc0c0004
	v_perm_b32 v38, v231, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v40, 16, v39
	v_perm_b32 v40, v235, v233, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v210, v0
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	scratch_store_b32 off, v9, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, v192 :: v_dual_mov_b32 v192, v167
	v_mov_b32_e32 v167, v137
	s_waitcnt vmcnt(0)
	ds_load_u8 v61, v0
	ds_load_u8 v60, v197 offset:1968
	ds_load_u8 v69, v197 offset:1920
	ds_load_u8 v72, v197 offset:1856
	ds_load_u8 v0, v197 offset:1872
	ds_load_u8 v90, v197 offset:1808
	ds_load_u8 v237, v197 offset:1888
	ds_load_u8 v238, v197 offset:1824
	ds_load_u8 v58, v197 offset:1904
	ds_load_u8 v49, v197 offset:1840
	ds_load_u8 v75, v197 offset:1728
	ds_load_u8 v79, v197 offset:1792
	ds_load_u8 v101, v197 offset:1744
	ds_load_u8 v102, v197 offset:1680
	ds_load_u8 v239, v197 offset:1760
	ds_load_u8 v240, v197 offset:1696
	ds_load_u8 v211, v197 offset:1776
	ds_load_u8 v212, v197 offset:1712
	ds_load_u8 v198, v197 offset:1664
	ds_load_u8 v227, v197 offset:1600
	ds_load_u8 v95, v197 offset:1616
	ds_load_u8 v96, v197 offset:1552
	ds_load_u8 v241, v197 offset:1632
	ds_load_u8 v41, v197 offset:1568
	ds_load_u8 v213, v197 offset:1648
	ds_load_u8 v214, v197 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v242, v103
	ds_store_b16 v242, v104 offset:512
	ds_store_b16 v242, v105 offset:1024
	ds_store_b16 v242, v106 offset:1536
	ds_store_b16 v242, v109 offset:2048
	ds_store_b16 v242, v110 offset:2560
	ds_store_b16 v242, v111 offset:3072
	ds_store_b16 v242, v112 offset:3584
	ds_store_b16 v242, v113 offset:4096
	ds_store_b16 v242, v114 offset:4608
	ds_store_b16 v242, v115 offset:5120
	ds_store_b16 v242, v116 offset:5632
	ds_store_b16 v242, v117 offset:6144
	ds_store_b16 v242, v118 offset:6656
	ds_store_b16 v242, v119 offset:7168
	ds_store_b16 v242, v120 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v104, v199 offset:1792
	ds_load_u8 v105, v199 offset:1536
	ds_load_u8 v109, v199 offset:1280
	ds_load_u8 v110, v199 offset:1024
	ds_load_u8 v111, v199 offset:1920
	ds_load_u8 v112, v199 offset:1664
	ds_load_u8 v113, v199 offset:1408
	ds_load_u8 v114, v199 offset:1152
	v_perm_b32 v24, v69, v24, 0xc0c0004
	ds_load_u8 v121, v199 offset:384
	ds_load_u8 v127, v199 offset:3968
	ds_load_u8 v133, v199 offset:3456
	ds_load_u8 v134, v199 offset:3200
	ds_load_u8 v129, v199 offset:2176
	ds_load_u8 v122, v199 offset:128
	ds_load_u8 v136, v199 offset:4224
	ds_load_u8 v128, v199 offset:3712
	v_perm_b32 v23, v23, v227, 0xc0c0004
	v_perm_b32 v69, v198, v75, 0xc0c0004
	ds_load_u8 v139, v199 offset:5760
	ds_load_u8 v141, v199 offset:5248
	ds_load_u8 v142, v199 offset:4992
	ds_load_u8 v130, v199 offset:4736
	ds_load_u8 v135, v199 offset:4480
	ds_load_u8 v137, v199 offset:6528
	ds_load_u8 v138, v199 offset:6272
	ds_load_u8 v140, v199 offset:5504
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v103, v110, v109, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_lshl_or_b32 v23, v69, 16, v23
	ds_load_u8 v105, v199 offset:256
	ds_load_u8 v106, v199
	ds_load_u8 v115, v199 offset:896
	ds_load_u8 v116, v199 offset:640
	ds_load_u8 v147, v199 offset:7296
	ds_load_u8 v148, v199 offset:7040
	ds_load_u8 v149, v199 offset:6784
	v_lshl_or_b32 v118, v104, 16, v103
	v_perm_b32 v103, v229, v228, 0xc0c0004
	v_perm_b32 v70, v102, v101, 0xc0c0004
	v_perm_b32 v31, v90, v0, 0xc0c0004
	v_perm_b32 v68, v96, v95, 0xc0c0004
	v_perm_b32 v82, v41, v241, 0xc0c0004
	v_lshl_or_b32 v19, v103, 16, v99
	ds_load_u8 v88, v199 offset:3328
	ds_load_u8 v99, v199 offset:3072
	v_lshl_or_b32 v32, v32, 16, v31
	v_lshl_or_b32 v31, v70, 16, v68
	v_perm_b32 v39, v238, v237, 0xc0c0004
	v_perm_b32 v83, v240, v239, 0xc0c0004
	v_perm_b32 v49, v49, v58, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v199 offset:768
	ds_load_u8 v109, v199 offset:512
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v83, 16, v82
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v99, v88, 0xc0c0004
	ds_load_u8 v99, v199 offset:3840
	ds_load_u8 v103, v199 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v109, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v106, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v103, v99, 0xc0c0004
	ds_load_u8 v103, v199 offset:2304
	ds_load_u8 v104, v199 offset:2048
	ds_load_u8 v228, v199 offset:2944
	ds_load_u8 v229, v199 offset:2688
	ds_load_u8 v98, v199 offset:2432
	v_lshl_or_b32 v126, v99, 16, v88
	v_perm_b32 v88, v97, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v88, 16, v67
	ds_load_u8 v67, v199 offset:5376
	ds_load_u8 v73, v199 offset:5120
	ds_load_u8 v236, v199 offset:6016
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v199 offset:2816
	ds_load_u8 v105, v199 offset:2560
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v98, v129, v98, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v73, v67, 0xc0c0004
	ds_load_u8 v73, v199 offset:5888
	ds_load_u8 v74, v199 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v125, v104, 16, v103
	v_wmma_i32_16x16x16_iu4 v[103:110], v[117:118], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[125:126], v[19:20], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v199 offset:4352
	ds_load_u8 v88, v199 offset:4096
	v_lshl_or_b32 v124, v73, 16, v67
	v_perm_b32 v67, v79, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v67
	ds_load_u8 v67, v199 offset:7424
	ds_load_u8 v69, v199 offset:7168
	ds_load_u8 v72, v199 offset:8064
	ds_load_u8 v198, v199 offset:7808
	ds_load_u8 v227, v199 offset:7552
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v74, v88, v74, 0xc0c0004
	ds_load_u8 v88, v199 offset:4864
	ds_load_u8 v97, v199 offset:4608
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v199 offset:7936
	ds_load_u8 v73, v199 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v97, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v88, 16, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v199 offset:6400
	ds_load_u8 v74, v199 offset:6144
	v_wmma_i32_16x16x16_iu4 v[103:110], v[123:124], v[21:22], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v69, 16, v67
	v_perm_b32 v69, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v199 offset:6912
	ds_load_u8 v75, v199 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v74, 16, v73
	v_wmma_i32_16x16x16_iu4 v[103:110], v[119:120], v[23:24], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v103
	v_cvt_f32_i32_e32 v100, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v67, v110
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v103, v122, v121, 0xc0c0004
	v_perm_b32 v104, v116, v115, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v105
	v_cvt_f32_i32_e32 v88, v106
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v67, off offset:372 ; 4-byte Folded Spill
	v_perm_b32 v67, v114, v113, 0xc0c0004
	v_lshl_or_b32 v131, v104, 16, v103
	v_perm_b32 v103, v229, v228, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v107
	v_cvt_f32_i32_e32 v75, v108
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v132, v69, 16, v67
	v_perm_b32 v67, v134, v133, 0xc0c0004
	v_perm_b32 v69, v128, v127, 0xc0c0004
	v_lshl_or_b32 v133, v103, 16, v98
	v_perm_b32 v98, v136, v135, 0xc0c0004
	v_perm_b32 v103, v130, v142, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v74, v109
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v134, v69, 16, v67
	v_perm_b32 v67, v141, v140, 0xc0c0004
	v_perm_b32 v69, v139, v236, 0xc0c0004
	v_lshl_or_b32 v121, v103, 16, v98
	v_wmma_i32_16x16x16_iu4 v[103:110], v[131:132], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v98, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v69, 16, v67
	v_perm_b32 v67, v147, v227, 0xc0c0004
	v_perm_b32 v69, v198, v72, 0xc0c0004
	v_perm_b32 v72, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[103:110], v[133:134], v[19:20], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v69, 16, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v127, v98, 16, v72
	v_wmma_i32_16x16x16_iu4 v[103:110], v[121:122], v[21:22], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[127:128], v[23:24], v[103:110] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v229, v103
	v_cvt_f32_i32_e32 v236, v104
	scratch_store_b32 off, v67, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v109
	scratch_store_b32 off, v67, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v110
	scratch_store_b32 off, v67, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v105
	scratch_store_b32 off, v67, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v106
	scratch_store_b32 off, v67, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v107
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[101:108], v[117:118], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[125:126], v[27:28], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[123:124], v[29:30], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[119:120], v[31:32], v[101:108] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v95, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v94, v102
	v_cvt_f32_i32_e32 v93, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v92, v104
	v_cvt_f32_i32_e32 v90, v105
	v_cvt_f32_i32_e32 v70, v106
	v_cvt_f32_i32_e32 v72, v107
	v_cvt_f32_i32_e32 v86, v108
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[101:108], v[131:132], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[133:134], v[27:28], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[121:122], v[29:30], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[127:128], v[31:32], v[101:108] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v79, v102
	v_cvt_f32_i32_e32 v198, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v227, v104
	v_cvt_f32_i32_e32 v228, v101
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v107
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v108
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:360
	scratch_store_b32 off, v0, off offset:376
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[102:109], v[117:118], v[33:34], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v41, off, off offset:292
	v_wmma_i32_16x16x16_iu4 v[102:109], v[125:126], v[35:36], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[123:124], v[37:38], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[119:120], v[39:40], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v216, v106
	v_cvt_f32_i32_e32 v215, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v107, v109
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[131:132], v[33:34], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v220, v102
	v_cvt_f32_i32_e32 v217, v105
	v_cvt_f32_i32_e32 v219, v103
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[133:134], v[35:36], v[109:116] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v103, s30, v208
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v218, v104
	v_add_nc_u32_e32 v104, s30, v209
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[121:122], v[37:38], v[109:116] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:508
	scratch_load_b32 v105, off, off offset:516
	v_wmma_i32_16x16x16_iu4 v[109:116], v[127:128], v[39:40], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v91, v109
	v_cvt_f32_i32_e32 v84, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v115
	v_cvt_f32_i32_e32 v82, v116
	v_cvt_f32_i32_e32 v102, v110
	v_cvt_f32_i32_e32 v101, v111
	v_cvt_f32_i32_e32 v96, v112
	v_cvt_f32_i32_e32 v85, v113
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v41, v41, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v42, off, off offset:300
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v106, s4, v106
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v105, s4, v105
	v_add_nc_u32_e32 v98, s30, v207
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v105, v105, s[12:15], 0 offen
	buffer_load_u8 v55, v55, s[12:15], 0 offen
	buffer_load_u8 v106, v106, s[12:15], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(3)
	v_perm_b32 v42, v42, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b32 v43, off, off offset:308
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v43, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b32 v44, off, off offset:316
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v44, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	v_lshl_or_b32 v41, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[117:118], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v64, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:332
	scratch_load_b32 v44, off, off offset:336
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v44, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v45, off, off offset:328
	v_lshl_or_b32 v43, v44, 16, v43
	s_waitcnt vmcnt(0)
	v_perm_b32 v45, v45, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v46, v0, v210, 0xc0c0004
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	v_lshl_or_b32 v44, v46, 16, v45
	v_perm_b32 v45, v47, v206, 0xc0c0004
	v_perm_b32 v46, v195, v62, 0xc0c0004
	v_perm_b32 v47, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[125:126], v[43:44], v[109:116] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v46, 16, v45
	s_waitcnt vmcnt(0)
	v_perm_b32 v48, v63, v0, 0xc0c0004
	v_perm_b32 v0, v60, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v45, v48, 16, v47
	v_perm_b32 v47, v214, v213, 0xc0c0004
	v_perm_b32 v48, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[109:116], v[123:124], v[45:46], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v48, 16, v47
	v_lshl_or_b32 v48, v0, 16, v49
	v_wmma_i32_16x16x16_iu4 v[109:116], v[119:120], v[47:48], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v206, v109
	v_cvt_f32_i32_e32 v195, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v111
	v_cvt_f32_i32_e32 v65, v112
	v_cvt_f32_i32_e32 v64, v113
	v_cvt_f32_i32_e32 v63, v114
	v_cvt_f32_i32_e32 v62, v115
	v_cvt_f32_i32_e32 v61, v116
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[131:132], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[133:134], v[43:44], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[121:122], v[45:46], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[127:128], v[47:48], v[109:116] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v59, v111
	scratch_load_b32 v111, off, off offset:484 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v58, v112
	v_cvt_f32_i32_e32 v49, v113
	v_cvt_f32_i32_e32 v0, v109
	scratch_load_b32 v109, off, off offset:500 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v67, v114
	v_cvt_f32_i32_e32 v60, v110
	scratch_load_b32 v110, off, off offset:492 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v68, v115
	v_cvt_f32_i32_e32 v69, v116
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v111, s4, v111
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v111, v111, s[12:15], 0 offen
	buffer_load_u8 v112, v52, s[12:15], 0 offen
	buffer_load_u8 v113, v50, s[12:15], 0 offen
	scratch_load_b32 v50, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s4, v50
	buffer_load_u8 v114, v50, s[12:15], 0 offen
	scratch_load_b32 v50, off, off offset:468 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v109, s4, v109
	s_clause 0x2
	buffer_load_u8 v109, v109, s[12:15], 0 offen
	buffer_load_u8 v54, v54, s[12:15], 0 offen
	buffer_load_u8 v53, v53, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v53.h, 8, v114.l
	v_add_nc_u32_e32 v50, s4, v50
	s_clause 0x2
	buffer_load_u8 v115, v50, s[12:15], 0 offen
	buffer_load_u8 v98, v98, s[12:15], 0 offen
	buffer_load_u8 v103, v103, s[12:15], 0 offen
	scratch_load_b32 v50, off, off offset:460 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v110, s4, v110
	v_lshlrev_b16 v52.l, 8, v109.l
	v_add_nc_u32_e32 v109, s30, v246
	buffer_load_u8 v110, v110, s[12:15], 0 offen
	v_or_b16 v52.l, v53.l, v52.l
	v_lshlrev_b16 v53.l, 8, v111.l
	scratch_load_b32 v111, off, off offset:452 ; 4-byte Folded Reload
	v_or_b16 v53.l, v113.l, v53.l
	s_waitcnt vmcnt(4)
	v_or_b16 v53.h, v98.l, v53.h
	v_add_nc_u32_e32 v98, s30, v251
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v50, s4, v50
	s_clause 0x1
	buffer_load_u8 v116, v50, s[12:15], 0 offen
	buffer_load_u8 v104, v104, s[12:15], 0 offen
	v_lshlrev_b16 v50.l, 8, v105.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v52.h, 8, v110.l
	v_lshlrev_b16 v50.h, 8, v106.l
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v111, s4, v111
	v_add_nc_u32_e32 v105, s30, v248
	v_or_b16 v50.l, v55.l, v50.l
	v_add_nc_u32_e32 v55, s30, v252
	v_or_b16 v52.h, v112.l, v52.h
	s_clause 0x1
	buffer_load_u8 v111, v111, s[12:15], 0 offen
	buffer_load_u8 v112, v55, s[12:15], 0 offen
	scratch_load_b32 v55, off, off offset:444 ; 4-byte Folded Reload
	v_or_b16 v50.h, v54.l, v50.h
	v_lshlrev_b16 v54.l, 8, v115.l
	v_add_nc_u32_e32 v106, s30, v247
	v_add_nc_u32_e32 v110, s30, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v54.l, v103.l, v54.l
	v_add_nc_u32_e32 v103, s30, v250
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v54.h, 8, v116.l
	s_waitcnt vmcnt(3)
	v_or_b16 v54.h, v104.l, v54.h
	v_add_nc_u32_e32 v104, s30, v249
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	buffer_load_u8 v113, v55, s[12:15], 0 offen
	scratch_load_b32 v55, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	s_clause 0x2
	buffer_load_u8 v114, v55, s[12:15], 0 offen
	buffer_load_u8 v98, v98, s[12:15], 0 offen
	buffer_load_u8 v115, v103, s[12:15], 0 offen
	scratch_load_b32 v55, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v103.l, 8, v114.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v103.l, v115.l, v103.l
	buffer_load_u8 v116, v55, s[12:15], 0 offen
	scratch_load_b32 v55, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v103.h, 8, v116.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	s_clause 0x2
	buffer_load_u8 v117, v55, s[12:15], 0 offen
	buffer_load_u8 v104, v104, s[12:15], 0 offen
	buffer_load_u8 v105, v105, s[12:15], 0 offen
	scratch_load_b32 v55, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v103.h, v104.l, v103.h
	v_lshlrev_b16 v104.l, 8, v117.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v104.l, v105.l, v104.l
	buffer_load_u8 v118, v55, s[12:15], 0 offen
	scratch_load_b32 v55, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v104.h, 8, v118.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	s_clause 0x2
	buffer_load_u8 v119, v55, s[12:15], 0 offen
	buffer_load_u8 v106, v106, s[12:15], 0 offen
	buffer_load_u8 v109, v109, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v55, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v105.l, 8, v119.l
	s_waitcnt vmcnt(2)
	v_or_b16 v104.h, v106.l, v104.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s4, v55
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v120, v55, s[12:15], 0 offen
	buffer_load_u8 v110, v110, s[12:15], 0 offen
	v_lshlrev_b16 v55.l, 8, v111.l
	v_lshlrev_b16 v55.h, 8, v113.l
	v_or_b16 v105.l, v109.l, v105.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v55.l, v112.l, v55.l
	v_or_b16 v55.h, v98.l, v55.h
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s4, s4, s34
	s_cmp_lg_u32 s28, 0
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v105.h, 8, v120.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v105.h, v110.l, v105.h
	ds_store_b16 v242, v50
	ds_store_b16_d16_hi v242, v50 offset:512
	ds_store_b16 v242, v52 offset:1024
	ds_store_b16_d16_hi v242, v52 offset:1536
	ds_store_b16 v242, v53 offset:2048
	ds_store_b16_d16_hi v242, v53 offset:2560
	ds_store_b16 v242, v54 offset:3072
	ds_store_b16_d16_hi v242, v54 offset:3584
	ds_store_b16 v242, v55 offset:4096
	ds_store_b16_d16_hi v242, v55 offset:4608
	ds_store_b16 v242, v103 offset:5120
	ds_store_b16_d16_hi v242, v103 offset:5632
	ds_store_b16 v242, v104 offset:6144
	ds_store_b16_d16_hi v242, v104 offset:6656
	ds_store_b16 v242, v105 offset:7168
	ds_store_b16_d16_hi v242, v105 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v50, v199 offset:1280
	ds_load_u8 v52, v199 offset:1024
	ds_load_u8 v53, v199 offset:1920
	ds_load_u8 v54, v199 offset:1664
	ds_load_u8 v98, v199 offset:1408
	ds_load_u8 v121, v199 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	ds_load_u8 v52, v199 offset:1792
	ds_load_u8 v55, v199 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v55, v52, 0xc0c0004
	ds_load_u8 v55, v199 offset:256
	ds_load_u8 v103, v199
	ds_load_u8 v122, v199 offset:896
	ds_load_u8 v123, v199 offset:640
	ds_load_u8 v124, v199 offset:384
	ds_load_u8 v125, v199 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v103, v55, 0xc0c0004
	ds_load_u8 v103, v199 offset:768
	ds_load_u8 v104, v199 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_lshl_or_b32 v104, v52, 16, v50
	ds_load_u8 v50, v199 offset:3328
	ds_load_u8 v52, v199 offset:3072
	ds_load_u8 v126, v199 offset:3968
	ds_load_u8 v127, v199 offset:3712
	ds_load_u8 v128, v199 offset:3456
	ds_load_u8 v129, v199 offset:3200
	v_lshl_or_b32 v103, v103, 16, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	ds_load_u8 v52, v199 offset:3840
	ds_load_u8 v55, v199 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v55, v52, 0xc0c0004
	ds_load_u8 v55, v199 offset:2304
	ds_load_u8 v105, v199 offset:2048
	ds_load_u8 v130, v199 offset:2944
	ds_load_u8 v131, v199 offset:2688
	ds_load_u8 v132, v199 offset:2432
	ds_load_u8 v133, v199 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v105, v55, 0xc0c0004
	ds_load_u8 v105, v199 offset:2816
	ds_load_u8 v106, v199 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_lshl_or_b32 v106, v52, 16, v50
	ds_load_u8 v50, v199 offset:5376
	ds_load_u8 v52, v199 offset:5120
	ds_load_u8 v134, v199 offset:6016
	ds_load_u8 v135, v199 offset:5760
	ds_load_u8 v136, v199 offset:5504
	ds_load_u8 v137, v199 offset:5248
	v_lshl_or_b32 v105, v105, 16, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	ds_load_u8 v52, v199 offset:5888
	ds_load_u8 v55, v199 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v55, v52, 0xc0c0004
	ds_load_u8 v55, v199 offset:4352
	ds_load_u8 v109, v199 offset:4096
	ds_load_u8 v138, v199 offset:4992
	ds_load_u8 v139, v199 offset:4736
	ds_load_u8 v140, v199 offset:4480
	ds_load_u8 v141, v199 offset:4224
	v_lshl_or_b32 v118, v52, 16, v50
	ds_load_u8 v50, v199 offset:7424
	ds_load_u8 v52, v199 offset:7168
	ds_load_u8 v142, v199 offset:8064
	ds_load_u8 v147, v199 offset:7808
	ds_load_u8 v148, v199 offset:7552
	ds_load_u8 v149, v199 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v109, v55, 0xc0c0004
	ds_load_u8 v109, v199 offset:4864
	ds_load_u8 v110, v199 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v109, 16, v55
	ds_load_u8 v52, v199 offset:7936
	ds_load_u8 v55, v199 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v55, v52, 0xc0c0004
	ds_load_u8 v55, v199 offset:6400
	ds_load_u8 v109, v199 offset:6144
	ds_load_u8 v211, v199 offset:7040
	ds_load_u8 v212, v199 offset:6784
	ds_load_u8 v213, v199 offset:6528
	ds_load_u8 v214, v199 offset:6272
	v_lshl_or_b32 v120, v52, 16, v50
	v_perm_b32 v50, v121, v98, 0xc0c0004
	v_perm_b32 v52, v54, v53, 0xc0c0004
	v_perm_b32 v53, v125, v124, 0xc0c0004
	v_perm_b32 v54, v123, v122, 0xc0c0004
	v_dual_mov_b32 v123, v144 :: v_dual_mov_b32 v144, v171
	v_mov_b32_e32 v171, v243
	v_dual_mov_b32 v243, v12 :: v_dual_mov_b32 v12, v14
	v_dual_mov_b32 v14, v15 :: v_dual_mov_b32 v125, v145
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v109, v55, 0xc0c0004
	ds_load_u8 v109, v199 offset:6912
	ds_load_u8 v110, v199 offset:6656
	v_dual_mov_b32 v124, v155 :: v_dual_mov_b32 v155, v174
	v_mov_b32_e32 v145, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v109, 16, v55
	v_wmma_i32_16x16x16_iu4 v[109:116], v[103:104], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[105:106], v[19:20], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[117:118], v[21:22], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[119:120], v[23:24], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v209, v111
	v_cvt_f32_i32_e32 v208, v112
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v112, v52, 16, v50
	v_lshl_or_b32 v111, v54, 16, v53
	v_perm_b32 v50, v129, v128, 0xc0c0004
	v_perm_b32 v52, v127, v126, 0xc0c0004
	v_perm_b32 v53, v133, v132, 0xc0c0004
	v_perm_b32 v54, v131, v130, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v210, v110
	v_cvt_f32_i32_e32 v207, v113
	v_cvt_f32_i32_e32 v110, v114
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v114, v52, 16, v50
	v_lshl_or_b32 v113, v54, 16, v53
	v_perm_b32 v50, v137, v136, 0xc0c0004
	v_perm_b32 v52, v135, v134, 0xc0c0004
	v_perm_b32 v53, v141, v140, 0xc0c0004
	v_perm_b32 v54, v139, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[245:252], v[111:112], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v241, v109
	v_cvt_f32_i32_e32 v109, v115
	v_cvt_f32_i32_e32 v55, v116
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v116, v52, 16, v50
	v_lshl_or_b32 v115, v54, 16, v53
	v_perm_b32 v50, v149, v148, 0xc0c0004
	v_perm_b32 v52, v147, v142, 0xc0c0004
	v_perm_b32 v53, v214, v213, 0xc0c0004
	v_perm_b32 v54, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[245:252], v[113:114], v[19:20], v[245:252] neg_lo:[1,1,0]
	v_mov_b32_e32 v138, v168
	v_lshl_or_b32 v122, v52, 16, v50
	v_mov_b32_e32 v168, v193
	v_lshl_or_b32 v121, v54, 16, v53
	v_wmma_i32_16x16x16_iu4 v[245:252], v[115:116], v[21:22], v[245:252] neg_lo:[1,1,0]
	v_dual_mov_b32 v128, v158 :: v_dual_mov_b32 v127, v157
	v_dual_mov_b32 v157, v176 :: v_dual_mov_b32 v176, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[121:122], v[23:24], v[245:252] neg_lo:[1,1,0]
	v_dual_mov_b32 v132, v153 :: v_dual_mov_b32 v153, v162
	v_dual_mov_b32 v162, v187 :: v_dual_mov_b32 v135, v165
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v245
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v250
	v_cvt_f32_i32_e32 v18, v251
	v_cvt_f32_i32_e32 v19, v252
	v_cvt_f32_i32_e32 v53, v246
	v_cvt_f32_i32_e32 v52, v247
	v_cvt_f32_i32_e32 v50, v248
	v_cvt_f32_i32_e32 v20, v249
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[103:104], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v187, v13
	v_mov_b32_e32 v13, v87
	v_dual_mov_b32 v158, v183 :: v_dual_mov_b32 v131, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[105:106], v[27:28], v[245:252] neg_lo:[1,1,0]
	v_mov_b32_e32 v183, v76
	v_dual_mov_b32 v133, v164 :: v_dual_mov_b32 v164, v189
	v_mov_b32_e32 v137, v167
	v_wmma_i32_16x16x16_iu4 v[245:252], v[117:118], v[29:30], v[245:252] neg_lo:[1,1,0]
	v_dual_mov_b32 v130, v151 :: v_dual_mov_b32 v165, v190
	v_dual_mov_b32 v167, v192 :: v_dual_mov_b32 v192, v9
	v_mov_b32_e32 v141, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[119:120], v[31:32], v[245:252] neg_lo:[1,1,0]
	scratch_load_b32 v9, off, off offset:216 ; 4-byte Folded Reload
	v_dual_mov_b32 v136, v166 :: v_dual_mov_b32 v159, v184
	v_dual_mov_b32 v166, v191 :: v_dual_mov_b32 v139, v169
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v232, v245
	v_cvt_f32_i32_e32 v231, v246
	v_cvt_f32_i32_e32 v226, v247
	v_cvt_f32_i32_e32 v225, v248
	v_cvt_f32_i32_e32 v214, v249
	v_cvt_f32_i32_e32 v213, v250
	v_cvt_f32_i32_e32 v212, v251
	v_cvt_f32_i32_e32 v211, v252
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[111:112], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v190, v56 :: v_dual_mov_b32 v169, v194
	v_mov_b32_e32 v194, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[113:114], v[27:28], v[245:252] neg_lo:[1,1,0]
	v_mov_b32_e32 v148, v178
	v_dual_mov_b32 v126, v156 :: v_dual_mov_b32 v151, v181
	v_dual_mov_b32 v156, v175 :: v_dual_mov_b32 v181, v16
	v_wmma_i32_16x16x16_iu4 v[245:252], v[115:116], v[29:30], v[245:252] neg_lo:[1,1,0]
	v_dual_mov_b32 v152, v182 :: v_dual_mov_b32 v191, v51
	v_dual_mov_b32 v189, v77 :: v_dual_mov_b32 v140, v170
	v_mov_b32_e32 v147, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[121:122], v[31:32], v[245:252] neg_lo:[1,1,0]
	v_mov_b32_e32 v182, v10
	v_dual_mov_b32 v134, v154 :: v_dual_mov_b32 v193, v11
	v_mov_b32_e32 v154, v163
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v29, v245
	v_cvt_f32_i32_e32 v21, v250
	v_cvt_f32_i32_e32 v22, v251
	v_cvt_f32_i32_e32 v23, v252
	v_cvt_f32_i32_e32 v32, v246
	v_cvt_f32_i32_e32 v31, v247
	v_cvt_f32_i32_e32 v30, v248
	v_cvt_f32_i32_e32 v24, v249
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[103:104], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v163, v188 :: v_dual_mov_b32 v188, v78
	v_mov_b32_e32 v149, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[105:106], v[35:36], v[245:252] neg_lo:[1,1,0]
	v_mov_b32_e32 v179, v204
	v_dual_mov_b32 v175, v71 :: v_dual_mov_b32 v170, v200
	v_mov_b32_e32 v177, v202
	v_wmma_i32_16x16x16_iu4 v[245:252], v[117:118], v[37:38], v[245:252] neg_lo:[1,1,0]
	v_dual_mov_b32 v129, v146 :: v_dual_mov_b32 v146, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[119:120], v[39:40], v[245:252] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v240, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v239, v246
	v_cvt_f32_i32_e32 v238, v247
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v237, v248
	v_cvt_f32_i32_e32 v224, v249
	v_cvt_f32_i32_e32 v223, v250
	v_cvt_f32_i32_e32 v222, v251
	v_cvt_f32_i32_e32 v221, v252
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[111:112], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[113:114], v[35:36], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[115:116], v[37:38], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[121:122], v[39:40], v[245:252] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v36, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v250
	v_cvt_f32_i32_e32 v26, v251
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v252
	v_cvt_f32_i32_e32 v40, v246
	v_cvt_f32_i32_e32 v39, v247
	v_cvt_f32_i32_e32 v37, v248
	v_cvt_f32_i32_e32 v28, v249
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[103:104], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[105:106], v[43:44], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[117:118], v[45:46], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[119:120], v[47:48], v[245:252] neg_lo:[1,1,0]
	scratch_load_b32 v120, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v98, v245
	v_cvt_f32_i32_e32 v117, v246
	v_cvt_f32_i32_e32 v118, v247
	v_cvt_f32_i32_e32 v119, v248
	v_cvt_f32_i32_e32 v235, v249
	v_cvt_f32_i32_e32 v234, v250
	v_cvt_f32_i32_e32 v233, v251
	v_cvt_f32_i32_e32 v230, v252
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[111:112], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[113:114], v[43:44], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[115:116], v[45:46], v[245:252] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v45, 0x80000000, v14, vcc_lo
	v_cndmask_b32_e64 v46, 0x80000000, v13, s0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:16
	scratch_load_b32 v115, off, off offset:12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v14, 2, v14
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[121:122], v[47:48], v[245:252] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	v_cndmask_b32_e64 v47, 0x80000000, v12, s1
	v_cndmask_b32_e64 v48, 0x80000000, v205, s3
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v103, v244, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	v_dual_mov_b32 v142, v160 :: v_dual_mov_b32 v121, v150
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v245
	scratch_load_b32 v245, off, off offset:156 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v44, v246
	scratch_load_b32 v246, off, off offset:160 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v43, v247
	v_mov_b32_e32 v178, v203
	v_cvt_f32_i32_e32 v34, v251
	v_cvt_f32_i32_e32 v38, v249
	v_cvt_f32_i32_e32 v42, v248
	v_cvt_f32_i32_e32 v33, v250
	v_cvt_f32_i32_e32 v35, v252
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v12, 2, v12
	v_add_nc_u32_e32 v244, s31, v244
	v_add_nc_u32_e32 v205, 2, v205
	v_add_nc_u32_e32 v13, 2, v13
	s_waitcnt vmcnt(6)
	v_dual_mov_b32 v122, v143 :: v_dual_lshlrev_b32 v45, 16, v45
	v_mov_b32_e32 v143, v161
	v_mov_b32_e32 v161, v81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v97, v45, v97 :: v_dual_mov_b32 v150, v180
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:220
	scratch_load_b32 v247, off, off offset:164
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v15, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v15, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v16, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[103:106], v89
	ds_load_b128 v[111:114], v89 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v88, v45, v88
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:104
	scratch_load_b32 v77, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v183, v97, v103
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v97, v45, v100 :: v_dual_fmac_f32 v80, v88, v106
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v88, 16, v46
	scratch_load_b32 v100, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v160, v185 :: v_dual_fmac_f32 v159, v46, v103
	v_mul_f32_e32 v46, v88, v94
	scratch_load_b32 v94, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v46, v104
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v46, v88, v93 :: v_dual_lshlrev_b32 v93, 16, v48
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v46, v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v92
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v92, 16, v47
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v186, v97, v104
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v97, v45, v99
	scratch_load_b32 v99, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v161, v46, v106 :: v_dual_mul_f32 v46, v92, v220
	scratch_load_b32 v220, off, off offset:132 ; 4-byte Folded Reload
	v_dual_fmac_f32 v187, v97, v105 :: v_dual_fmac_f32 v138, v46, v103
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v219
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v139, v46, v104 :: v_dual_mul_f32 v46, v92, v218
	scratch_load_b32 v218, off, off offset:124 ; 4-byte Folded Reload
	v_fmac_f32_e32 v141, v46, v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v217
	scratch_load_b32 v217, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v46, v106
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v46, v103
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v195
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v46, v104
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v46, v105
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v65
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v46, v106 :: v_dual_mul_f32 v46, v45, v73
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v46, v111
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v45, v75
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v176, v46, v112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v45, v74
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v177, v46, v113 :: v_dual_mul_f32 v46, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v16, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v178, v46, v114
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v151, v46, v111 :: v_dual_mul_f32 v46, v88, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v46, v112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v72
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v153, v46, v113 :: v_dual_mul_f32 v46, v88, v86
	scratch_load_b32 v86, off, off offset:60 ; 4-byte Folded Reload
	v_fmac_f32_e32 v154, v46, v114
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v216
	scratch_load_b32 v216, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v99, v46, v111
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v215
	scratch_load_b32 v215, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v46, v112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v108
	scratch_load_b32 v108, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v46, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v46, v114 :: v_dual_mul_f32 v46, v93, v64
	v_fmac_f32_e32 v116, v46, v111
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v121, v46, v112 :: v_dual_mul_f32 v46, v93, v62
	scratch_load_b32 v112, off, off         ; 4-byte Folded Reload
	v_fmac_f32_e32 v122, v46, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v61
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[61:64], v89 offset:512
	ds_load_b128 v[72:75], v89 offset:528
	scratch_load_b32 v113, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v46, v114 :: v_dual_mul_f32 v46, v229, v45
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v229, off, off offset:148
	scratch_load_b32 v114, off, off offset:8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v247, v46, v61 :: v_dual_mul_f32 v46, v45, v236
	scratch_load_b32 v236, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v167, v46, v62 :: v_dual_mul_f32 v46, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:364
	scratch_load_b32 v219, off, off offset:128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v168, v46, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v45, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v46, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v228, v88
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v46, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v46, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v198
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v46, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v88, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v46, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v91, v92
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v91, off, off offset:64
	scratch_load_b32 v78, off, off offset:44
	scratch_load_b32 v76, off, off offset:36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v46, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v102
	scratch_load_b32 v102, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v91, v46, v62 :: v_dual_mul_f32 v46, v92, v101
	scratch_load_b32 v101, off, off offset:84 ; 4-byte Folded Reload
	v_dual_fmac_f32 v129, v46, v63 :: v_dual_mul_f32 v46, v92, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v46, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v0, v93
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v46, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v60
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v46, v62 :: v_dual_mul_f32 v46, v93, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v46, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v93, v58
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v46, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v45, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v170, v46, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v0, v45
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v246, v46, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v0, v45
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v245, v46, v74 :: v_dual_mul_f32 v46, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v243, v46, v75 :: v_dual_mul_f32 v46, v88, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v46, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v0, v88
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v229, v46, v73 :: v_dual_mul_f32 v46, v0, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v46, v74
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v0, v69, v93 :: v_dual_fmac_f32 v219, v46, v75
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v0, v75
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v9, s[16:19], 0 offen
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v92, v85
	scratch_load_b32 v85, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v94, v46, v72 :: v_dual_add_nc_u32 v9, s31, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v84, v92
	scratch_load_b32 v84, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v217, v46, v73 :: v_dual_mul_f32 v46, v83, v92
	scratch_load_b32 v83, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v216, v46, v74
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v82, v92
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v215, v46, v75 :: v_dual_mul_f32 v46, v93, v49
	scratch_load_b32 v75, off, off offset:176 ; 4-byte Folded Reload
	v_fmac_f32_e32 v112, v46, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v67, v93
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:108
	scratch_load_b32 v107, off, off offset:92
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v193, v46, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v46, v68, v93
	scratch_load_b32 v73, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v46, v74
	scratch_load_b32 v74, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v15, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v89
	ds_load_b128 v[56:59], v89 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v190, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v210
	scratch_load_b32 v210, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v189, v0, v47 :: v_dual_mul_f32 v0, v45, v209
	scratch_load_b32 v209, off, off offset:144 ; 4-byte Folded Reload
	v_fmac_f32_e32 v188, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v232
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v166, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v226
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v163, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v164, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v240
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v143, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v238
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v237
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v107, v0, v49 :: v_dual_mul_f32 v0, v93, v98
	v_fmac_f32_e32 v86, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v117
	scratch_load_b32 v117, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v83, v0, v47 :: v_dual_mul_f32 v0, v93, v118
	scratch_load_b32 v118, off, off offset:24 ; 4-byte Folded Reload
	v_fmac_f32_e32 v84, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v119
	scratch_load_b32 v119, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v0, v49 :: v_dual_mul_f32 v0, v45, v207
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v182, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v110
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v181, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v180, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v55
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v179, v0, v59
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v214
	scratch_load_b32 v214, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v158, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v213
	scratch_load_b32 v213, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v157, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v155, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v211
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v0, v59
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v224
	scratch_load_b32 v224, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v223
	scratch_load_b32 v223, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v222
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v222, off, off offset:204
	scratch_load_b32 v212, off, off offset:184
	scratch_load_b32 v208, off, off offset:140
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v102, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v221
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v221, off, off offset:196
	scratch_load_b32 v211, off, off offset:172
	scratch_load_b32 v207, off, off offset:136
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v101, v0, v59
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v76, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v230
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v77, v0, v59 :: v_dual_mul_f32 v0, v54, v45
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[46:49], v89 offset:512
	ds_load_b128 v[54:57], v89 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v72, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v255, v0, v47 :: v_dual_mul_f32 v0, v45, v52
	v_fmac_f32_e32 v254, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v171, v0, v49 :: v_dual_mul_f32 v0, v29, v88
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v34, v93
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v73, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v88, v31 :: v_dual_mul_f32 v31, v93, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v149, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v88, v30
	v_mul_f32_e32 v30, v35, v93
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v120, v31, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v36, v92
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v212, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v92, v39 :: v_dual_fmac_f32 v207, v30, v57
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v92, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v41, v93
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v210, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v117, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v43
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v93, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v119, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v17, v45
	v_mul_f32_e32 v17, v18, v45
	v_dual_mul_f32 v18, v19, v45 :: v_dual_mul_f32 v19, v45, v20
	v_mul_f32_e32 v20, v21, v88
	v_mul_f32_e32 v21, v22, v88
	v_mul_f32_e32 v22, v23, v88
	v_mul_f32_e32 v23, v88, v24
	v_mul_f32_e32 v24, v25, v92
	v_mul_f32_e32 v25, v26, v92
	v_mul_f32_e32 v26, v27, v92
	v_mul_f32_e32 v27, v92, v28
	scratch_load_b32 v92, off, off offset:72 ; 4-byte Folded Reload
	v_mul_f32_e32 v28, v33, v93
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v75, v25, v56
	v_fmac_f32_e32 v211, v26, v57
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[25:26], off, off offset:232
	scratch_load_b32 v93, off, off offset:100
	v_fmac_f32_e32 v223, v17, v56
	v_dual_fmac_f32 v209, v28, v55 :: v_dual_fmac_f32 v208, v29, v56
	v_dual_fmac_f32 v253, v19, v54 :: v_dual_fmac_f32 v224, v0, v55
	v_dual_fmac_f32 v222, v18, v57 :: v_dual_fmac_f32 v221, v20, v55
	v_dual_fmac_f32 v214, v21, v56 :: v_dual_fmac_f32 v213, v22, v57
	v_fmac_f32_e32 v74, v24, v55
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v92, v27, v54
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:240
	scratch_load_b64 v[16:17], off, off offset:224
	scratch_load_b64 v[27:28], off, off offset:248
	scratch_load_b64 v[28:29], off, off offset:256
	scratch_load_b64 v[29:30], off, off offset:264
	scratch_load_b64 v[30:31], off, off offset:272
	scratch_load_b64 v[31:32], off, off offset:280
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v93, v23, v54
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v25, s33, v25
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v26, s33, v26
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v16, s33, v16
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v27, s33, v27
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v28, s33, v28
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v29, s33, v29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v30, s33, v30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s33, v31
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v5, off, off offset:620
	scratch_load_b32 v105, off, off offset:544
	scratch_load_b32 v106, off, off offset:548
	scratch_load_b32 v109, off, off offset:552
	scratch_load_b32 v110, off, off offset:556
	scratch_load_b32 v111, off, off offset:560
	scratch_load_b32 v79, off, off offset:564
	scratch_load_b32 v184, off, off offset:568
	scratch_load_b32 v185, off, off offset:572
	scratch_load_b32 v82, off, off offset:576
	scratch_load_b32 v87, off, off offset:580
	scratch_load_b32 v88, off, off offset:584
	scratch_load_b32 v89, off, off offset:588
	scratch_load_b32 v90, off, off offset:592
	scratch_load_b32 v95, off, off offset:596
	scratch_load_b32 v96, off, off offset:600
	scratch_load_b32 v97, off, off offset:604
	scratch_load_b32 v98, off, off offset:608
	scratch_load_b32 v103, off, off offset:612
	scratch_load_b32 v104, off, off offset:616
.LBB0_7:                                ; %Flow780
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(15)
	v_or_b32_e32 v0, 62, v110
	v_or_b32_e32 v2, 60, v110
	v_or_b32_e32 v4, 58, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v36, 0xbfb8aa3b, v255 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s1, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s1
	v_add_co_u32 v7, s1, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v110
	v_or_b32_e32 v4, 52, v110
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s6
	v_add_co_u32 v2, s6, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s10
	v_add_co_u32 v7, s10, s66, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 46, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v189
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s14
	v_add_co_u32 v1, s14, s66, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[3:4]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v224 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v222
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v37, 0xbfb8aa3b, v254
	v_mul_f32_e32 v41, 0xbfb8aa3b, v165
	v_mul_f32_e32 v31, 0xbfb8aa3b, v171
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v13
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v12, 0xbfb8aa3b, v223
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v16, 0, 0x42800000, s19
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v12
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v222
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v14, 0, 0x42800000, s18
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v224
	v_exp_f32_e32 v16, v16
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v17
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v223
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v12, v12
	v_mul_f32_e32 v53, 0xbfb8aa3b, v107
	v_ldexp_f32 v11, v11, v0
	v_exp_f32_e32 v14, v14
	v_mul_f32_e32 v0, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v21, 0, 0x42800000, s19
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s19
	v_mul_f32_e32 v44, 0xbfb8aa3b, v148
	v_dual_mul_f32 v22, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v102
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v221
	v_ldexp_f32 v12, v12, v4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v13, v14, v13
	v_ldexp_f32 v14, v16, v15
	v_dual_mul_f32 v16, 0xbfb8aa3b, v214 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v213
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v16
	v_mul_f32_e32 v32, 0xbfb8aa3b, v163
	v_exp_f32_e32 v21, v21
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, s18
	v_mul_f32_e32 v28, 0xbfb8aa3b, v253
	v_mul_f32_e32 v38, 0xbfb8aa3b, v164
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v221
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v214
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s18
	v_mul_f32_e32 v55, 0xbfb8aa3b, v143
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v19, v19
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v22
	v_mul_f32_e32 v199, 0xbfb8aa3b, v83
	v_ldexp_f32 v15, v15, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v212
	v_mul_f32_e32 v50, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v25, 0, 0x42800000, s19
	v_mul_f32_e32 v54, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s19
	v_ldexp_f32 v16, v17, v16
	v_ldexp_f32 v17, v19, v18
	v_ldexp_f32 v18, v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v19, 0xbfb8aa3b, v74
	v_mul_f32_e32 v21, 0xbfb8aa3b, v75
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v211
	v_mul_f32_e32 v29, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v21
	v_exp_f32_e32 v25, v25
	v_mul_f32_e32 v198, 0xbfb8aa3b, v85
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, s18
	v_mul_f32_e32 v206, 0xbfb8aa3b, v150
	v_mul_f32_e32 v42, 0xbfb8aa3b, v108
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v74
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s18
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_and_b32 v6, 0x80, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v23, v23
	v_mul_f32_e32 v196, 0xbfb8aa3b, v76
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v20, v20, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v210
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v11, v11, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v19, v21, v19
	v_ldexp_f32 v21, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v209
	v_ldexp_f32 v22, v25, v24
	v_mul_f32_e32 v25, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v24, 0xbfb8aa3b, v208
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v49, 0, 0x42800000, s18
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v210
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s19, v223, v13, v223
	v_div_scale_f32 v71, null, v15, v15, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s18
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s18
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, vcc_lo, v72, v11, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v59, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v18, 1.0, v18
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v19, 1.0, v19
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v49, v48
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v49, v58, v51
	v_ldexp_f32 v51, v59, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v13, v13, v223
	v_fma_f32 v56, -v57, v61, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v12, v12, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v63, v59
	v_fmac_f32_e32 v61, v56, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v60, v23, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v180
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[7:8]
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v67, -v59, v63, 1.0
	v_mul_f32_e32 v64, v62, v61
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v58, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v67, v63
	v_fma_f32 v66, -v57, v64, v62
	v_div_scale_f32 v67, null, v14, v14, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v65, v56
	v_div_scale_f32 v65, s18, v224, v12, v224
	v_fmac_f32_e32 v64, v66, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v67
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[7:8]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v7, 0xbfb8aa3b, v188 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v81
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v57, -v57, v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v26, 0xbfb8aa3b, v179 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v182
	v_dual_mul_f32 v30, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v57, v61, v64
	v_fma_f32 v64, -v67, v69, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v71
	v_mul_f32_e32 v70, v68, v63
	v_div_fixup_f32 v11, v57, v11, v72
	v_dual_fmac_f32 v69, v64, v69 :: v_dual_mul_f32 v66, v65, v56
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v64, s18, v73, v15, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v40, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v205, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v58, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v34, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v157
	v_dual_mul_f32 v0, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v62, v56
	v_fma_f32 v62, -v59, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v52, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v203, 0xbfb8aa3b, v132
	v_dual_mul_f32 v46, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v201, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v58, v66, v65
	v_fmac_f32_e32 v70, v62, v63
	v_div_scale_f32 v58, s20, v222, v14, v222
	v_fma_f32 v62, -v71, v61, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v56, v57, v56, v66
	v_fma_f32 v57, -v59, v70, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v58, v69
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, null, v16, v16, v221
	v_div_fmas_f32 v57, v57, v63, v70
	v_fma_f32 v65, -v67, v59, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v64, v61
	v_rcp_f32_e32 v63, v62
	v_div_scale_f32 v68, null, v17, v17, v214
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v59, v65, v69
	v_div_fixup_f32 v12, v56, v12, v224
	v_div_fixup_f32 v13, v57, v13, v223
	v_fma_f32 v56, -v71, v66, v64
	v_rcp_f32_e32 v57, v68
	v_fma_f32 v58, -v67, v59, v58
	v_div_scale_f32 v67, null, v18, v18, v213
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v65, -v62, v63, 1.0
	v_fmac_f32_e32 v66, v56, v61
	v_div_scale_f32 v56, s19, v221, v16, v221
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v63, v65, v63
	v_rcp_f32_e32 v65, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v70, -v68, v57, 1.0
	v_div_fmas_f32 v58, v58, v69, v59
	v_fma_f32 v59, -v71, v66, v64
	v_mul_f32_e32 v64, v56, v63
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v57, v70, v57
	v_div_scale_f32 v69, s20, v214, v17, v214
	v_div_scale_f32 v71, null, v20, v20, v212
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v67, v65, 1.0
	v_div_fmas_f32 v59, v59, v61, v66
	v_fma_f32 v61, -v62, v64, v56
	v_mul_f32_e32 v66, v69, v57
	v_div_scale_f32 v72, s18, v213, v18, v213
	v_dual_fmac_f32 v65, v70, v65 :: v_dual_fmac_f32 v64, v61, v63
	v_rcp_f32_e32 v70, v71
	v_div_scale_f32 v61, null, v19, v19, v74
	v_div_fixup_f32 v14, v58, v14, v222
	v_div_fixup_f32 v15, v59, v15, v73
	v_fma_f32 v58, -v68, v66, v69
	v_mul_f32_e32 v59, v72, v65
	v_fma_f32 v56, -v62, v64, v56
	v_rcp_f32_e32 v62, v61
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v73, -v71, v70, 1.0
	v_fmac_f32_e32 v66, v58, v57
	v_fma_f32 v58, -v67, v59, v72
	v_div_fmas_f32 v56, v56, v63, v64
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v70, v73, v70
	v_fma_f32 v63, -v68, v66, v69
	v_fmac_f32_e32 v59, v58, v65
	v_fma_f32 v64, -v61, v62, 1.0
	v_div_scale_f32 v73, s21, v212, v20, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v57, v63, v57, v66
	v_fma_f32 v63, -v67, v59, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v62, v64, v62
	v_div_scale_f32 v64, null, v21, v21, v75
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v67, s19, v74, v19, v74
	v_div_fmas_f32 v59, v63, v65, v59
	v_rcp_f32_e32 v63, v64
	v_mul_f32_e32 v58, v73, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v65, v67, v62
	v_div_fixup_f32 v16, v56, v16, v221
	v_div_fixup_f32 v56, v57, v17, v214
	v_div_fixup_f32 v57, v59, v18, v213
	v_fma_f32 v66, -v71, v58, v73
	v_fma_f32 v18, -v61, v65, v67
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v59, null, v22, v22, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v66, v70
	v_fma_f32 v66, -v64, v63, 1.0
	v_fmac_f32_e32 v65, v18, v62
	v_div_scale_f32 v18, s18, v75, v21, v75
	v_fma_f32 v17, -v71, v58, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v66, v63
	v_div_scale_f32 v66, null, v60, v60, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v204, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v70, v58
	v_rcp_f32_e32 v58, v59
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v202, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v17, v20, v212
	v_fma_f32 v17, -v61, v65, v67
	v_rcp_f32_e32 v67, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v200, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v124
	v_dual_mul_f32 v24, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v59, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v119
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v66, v67, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 44, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[1:2]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v69, v67
	v_div_fmas_f32 v17, v17, v62, v65
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, null, v48, v48, v209
	v_div_scale_f32 v65, s19, v211, v22, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v17, v19, v74
	v_rcp_f32_e32 v17, v61
	v_div_scale_f32 v69, null, v49, v49, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v19, v65, v58 :: v_dual_mul_f32 v20, v18, v63
	v_div_scale_f32 v74, null, v51, v51, v207
	v_rcp_f32_e32 v73, v69
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v62, -v64, v20, v18
	v_fma_f32 v72, -v61, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v17, v72, v17
	v_fma_f32 v72, -v69, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v62, v63
	v_div_scale_f32 v62, s20, v210, v60, v210
	v_fmac_f32_e32 v73, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v64, v20, v18
	v_mul_f32_e32 v71, v62, v67
	v_fma_f32 v64, -v59, v19, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v63, v20
	v_fma_f32 v20, -v66, v71, v62
	v_rcp_f32_e32 v63, v74
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v75, v18, v21, v75
	v_fmac_f32_e32 v71, v20, v67
	v_fmac_f32_e32 v19, v64, v58
	v_div_scale_f32 v64, s18, v209, v48, v209
	v_div_scale_f32 v21, s21, v208, v49, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v59, v19, v65
	v_fma_f32 v59, -v74, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v20, v64, v17
	v_div_fmas_f32 v18, v18, v58, v19
	v_fma_f32 v19, -v66, v71, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v63, v59, v63
	v_div_scale_f32 v59, s19, v207, v51, v207
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v58, -v61, v20, v64
	v_dual_mul_f32 v62, v21, v73 :: v_dual_mul_f32 v65, v59, v63
	v_div_fmas_f32 v19, v19, v67, v71
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v18, v22, v211
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v19, v60, v210
	v_fma_f32 v19, -v74, v65, v59
	v_fmac_f32_e32 v20, v58, v17
	v_fma_f32 v58, -v69, v62, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v19, v63
	v_fma_f32 v18, -v61, v20, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v18, v17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v69, v62, v21
	v_fma_f32 v20, -v74, v65, v59
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s20
	v_cndmask_b32_e64 v59, 0, 0x42800000, s18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v73, v62
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v247, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v20, v63, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v19
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v189
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v10, v48, v209
	v_div_fixup_f32 v9, v9, v51, v207
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v246, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v59
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_ldexp_f32 v8, v20, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v17, v49, v208
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v81
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v245, v13 :: v_dual_mul_f32 v18, v236, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v10, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v8, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v229, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v51, v51, v190
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v220, v56 :: v_dual_mul_f32 v15, v219, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v7, v8, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, vcc_lo, v190, v51, v190
	v_div_scale_f32 v57, null, v56, v56, v189
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v216, v75 :: v_dual_mul_f32 v12, v215, v66
	v_mul_f32_e32 v20, v243, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v59, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v218, v68 :: v_dual_mul_f32 v13, v217, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v8, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s18, v189, v56, v189
	v_mul_f32_e32 v67, v65, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v192, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v64, v64, v81
	v_fma_f32 v7, -v57, v63, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v194, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v62, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v66
	v_fma_f32 v62, -v59, v67, v65
	v_fmac_f32_e32 v63, v7, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v7, v193, v48 :: v_dual_add_f32 v48, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v62, v61
	v_div_scale_f32 v69, s19, v81, v64, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v62, null, v48, v48, v188
	v_fma_f32 v58, -v66, v60, 1.0
	v_mul_f32_e32 v49, v68, v63
	v_fma_f32 v59, -v59, v67, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v58, v60
	v_rcp_f32_e32 v58, v62
	v_fma_f32 v65, -v57, v49, v68
	v_div_fmas_f32 v39, v59, v61, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, s20
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v39, v39, v51, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v182
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v62, v58, 1.0
	v_fmac_f32_e32 v49, v65, v63
	v_mul_f32_e32 v65, v69, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v67, v58
	v_fma_f32 v51, -v57, v49, v68
	v_div_scale_f32 v67, s20, v188, v48, v188
	v_fma_f32 v57, -v66, v65, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v51, v63, v49
	v_mul_f32_e32 v49, v67, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v57, v60
	v_div_fixup_f32 v30, v30, v56, v189
	v_fma_f32 v27, -v62, v49, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v181
	v_ldexp_f32 v57, v61, v59
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v186, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v27, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v65, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s21
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v180
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v66, v60, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v62, v49, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v51
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v191, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v58, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v61, v59
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v48, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v59, null, v49, v49, v181
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v60, v64, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v187, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v61, v61, v180
	v_rcp_f32_e32 v48, v67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v62, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v59, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_fmac_f32 v66, v60, v66
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v63, null, v57, v57, v182
	v_fmac_f32_e32 v48, v60, v48
	v_div_scale_f32 v60, s19, v180, v61, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v63
	v_fma_f32 v58, -v63, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v58, v65
	v_div_scale_f32 v58, vcc_lo, v182, v57, v182
	v_mul_f32_e32 v68, v58, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v63, v68, v58
	v_fmac_f32_e32 v68, v56, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v63, v68, v58
	v_div_scale_f32 v63, null, v51, v51, v179
	v_div_fmas_f32 v58, v58, v65, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v63
	v_mul_f32_e32 v68, v60, v48
	v_div_scale_f32 v56, s18, v181, v49, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v183, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v56, v66
	v_div_fixup_f32 v39, v58, v57, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v255
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v63, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v59, v62, v56
	v_fma_f32 v57, -v67, v68, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v58, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v62, v65, v66 :: v_dual_mul_f32 v27, v80, v27
	v_fmac_f32_e32 v68, v57, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v254
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v59, v62, v56
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v68, v60
	v_div_scale_f32 v59, s20, v179, v51, v179
	v_div_fmas_f32 v56, v56, v66, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_exp_f32_e32 v31, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v58, 1.0, v37 :: v_dual_mul_f32 v39, v175, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v58, v58, v255
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v67
	v_div_fmas_f32 v48, v60, v48, v68
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v57, 1.0
	v_dual_mul_f32 v62, v59, v64 :: v_dual_fmac_f32 v57, v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v63, v62, v59
	v_fmac_f32_e32 v62, v37, v64
	v_div_fixup_f32 v37, v56, v49, v181
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v48, v61, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v63, v62, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v176, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v49, v49, v254
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v177, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	v_div_scale_f32 v60, s18, v255, v58, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v48, v51, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v60, v57
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v178, v28 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v253
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v59, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v62, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v63, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s19, v254, v49, v254
	v_fmac_f32_e32 v62, v64, v57
	v_mul_f32_e32 v64, v63, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v60, -v67, v62, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v51, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v56, v56, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v59, v64, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v51, v60, v57, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v67, v61
	v_div_fixup_f32 v51, v51, v58, v255
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v56, v56, v171
	v_fma_f32 v58, -v59, v64, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v66, v65
	v_div_scale_f32 v45, s18, v171, v56, v171
	v_div_fmas_f32 v41, v58, v61, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, s20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v49, v254
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v165
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v65, v66, 1.0
	v_div_scale_f32 v59, null, v48, v48, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v32
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v57, v66
	v_rcp_f32_e32 v57, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v168, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v61, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v59, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v57, v64, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v45, v66
	v_div_scale_f32 v64, s19, v253, v48, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v58, v58, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v65, v63, v45
	v_fmac_f32_e32 v63, v49, v66
	v_mul_f32_e32 v49, v64, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v65, v63, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v62, v60
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v59, v49, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v45, v66, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v65, v65, v166
	v_fmac_f32_e32 v49, v38, v57
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v62
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v59, v49, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v45, v57, v49
	v_div_scale_f32 v49, vcc_lo, v166, v65, v166
	v_fma_f32 v66, -v61, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v48, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v67, v64, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v32, v56, v171
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v170, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v57, v64
	v_div_scale_f32 v57, s18, v165, v58, v165
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v48, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v66, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v167, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v57, v64
	v_div_scale_f32 v66, null, v60, v60, v164
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v49, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v66
	v_div_scale_f32 v59, null, v51, v51, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v61, v63, v49
	v_fmac_f32_e32 v63, v45, v62
	v_fma_f32 v45, -v67, v56, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v61, v63, v49
	v_fmac_f32_e32 v56, v45, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v66, v68, 1.0
	v_div_fmas_f32 v49, v49, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v59
	v_fma_f32 v57, -v67, v56, v57
	v_fmac_f32_e32 v68, v45, v68
	v_div_scale_f32 v45, s19, v164, v60, v164
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v49, v49, v65, v166
	v_div_fmas_f32 v56, v57, v64, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v59, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v45, v68
	v_div_scale_f32 v64, s18, v163, v51, v163
	v_fmac_f32_e32 v40, v63, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v56, v56, v58, v165
	v_fma_f32 v58, -v66, v57, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v169, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v62
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v58, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v63, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v66, v57, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v35, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v64, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v59, v35, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v0, v0, v158
	v_fmac_f32_e32 v35, v65, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v61
	v_ldexp_f32 v61, v63, v62
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_rcp_f32_e32 v62, v66
	v_div_fmas_f32 v45, v45, v68, v57
	v_fma_f32 v57, -v59, v35, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v58
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v57, v40, v35
	v_div_scale_f32 v61, null, v59, v59, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v66, v62, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v57, v61
	v_div_fixup_f32 v34, v35, v51, v163
	v_div_scale_f32 v68, s18, v157, v59, v157
	v_div_fixup_f32 v45, v45, v60, v164
	v_div_scale_f32 v51, null, v64, v64, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v40, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v61, v57, 1.0
	v_rcp_f32_e32 v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v35, v57 :: v_dual_fmac_f32 v62, v58, v62
	v_div_scale_f32 v58, vcc_lo, v158, v0, v158
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v160, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v63 :: v_dual_mul_f32 v63, v68, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v60, v58, v62 :: v_dual_mul_f32 v35, v161, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v159, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v56, v56, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v66, v60, v58
	v_fmac_f32_e32 v60, v67, v62
	v_fma_f32 v67, -v51, v65, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v162, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v66, v60, v58
	v_rcp_f32_e32 v66, v69
	v_fma_f32 v58, -v61, v63, v68
	v_fmac_f32_e32 v65, v67, v65
	v_div_scale_f32 v67, s19, v155, v64, v155
	v_div_fmas_f32 v49, v49, v62, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v63, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, s20
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v70, -v69, v66, 1.0
	v_div_fixup_f32 v0, v49, v0, v158
	v_fma_f32 v49, -v61, v63, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s20, v156, v56, v156
	v_fmac_f32_e32 v66, v70, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v49, v49, v57, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v70, 0, 0x42800000, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v68, v66
	v_div_fixup_f32 v49, v49, v59, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v69, v57, v68
	v_mul_f32_e32 v62, v67, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v60, v58
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v44, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v51, v62, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v61, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v51, -v51, v62, v67
	v_div_scale_f32 v67, null, v58, v58, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v148
	v_ldexp_f32 v44, v44, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v65, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v67
	v_fma_f32 v43, -v69, v57, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_div_fmas_f32 v43, v43, v66, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v67, v62, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v61, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v56, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v57, v62
	v_div_scale_f32 v57, vcc_lo, v150, v58, v150
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v51, v64, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v43, v154, v43 :: v_dual_mul_f32 v70, v57, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v61, v61, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v65, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v67, v70, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v56, v69
	v_dual_fmac_f32 v70, v51, v62 :: v_dual_mul_f32 v51, v152, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v67, v70, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v65, null, v49, v49, v93
	v_fma_f32 v64, -v69, v56, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v57, v62, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v151, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v64, v56
	v_div_fixup_f32 v0, v62, v58, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s19, v148, v61, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v65, v55, 1.0
	v_mul_f32_e32 v70, v64, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v62, v55
	v_div_scale_f32 v60, null, v66, v66, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v69, v70, v64
	v_div_scale_f32 v62, s20, v93, v49, v93
	v_rcp_f32_e32 v68, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v153, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v71
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v69, v70, v64
	v_fma_f32 v59, -v60, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v59, v68
	v_div_scale_f32 v59, s18, v149, v66, v149
	v_mul_f32_e32 v63, v59, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v60, v63, v59
	v_fmac_f32_e32 v63, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v60, v63, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v59, v59, v68, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v142
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v62, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v65, v63, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v69, null, v60, v60, v143
	v_div_fmas_f32 v56, v64, v56, v70
	v_fmac_f32_e32 v63, v54, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v69
	v_div_fixup_f32 v54, v59, v66, v149
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v56, v61, v148
	v_fma_f32 v56, -v65, v63, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v62, null, v59, v59, v142
	v_fma_f32 v64, -v69, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v55, v56, v55, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s18, v143, v60, v143
	v_div_fixup_f32 v42, v55, v49, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v61, v68
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v62, v63, 1.0
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, s19, v142, v59, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v61, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v65, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v69, v61, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v67, null, v66, v66, v107
	v_dual_fmac_f32 v61, v56, v58 :: v_dual_mul_f32 v56, v146, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v145, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v55, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v69, v61, v64
	v_fma_f32 v64, -v62, v68, v65
	v_div_fmas_f32 v55, v54, v58, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v68, v64, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v62, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v58, v63, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s20
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v59, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v60, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v144, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v63, v63
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v0, v0, v108
	v_fmac_f32_e32 v70, v49, v70
	v_div_scale_f32 v49, s18, v107, v66, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v52, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v62, v61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v49, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v147, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v58, v63, v58
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v67, v64, v49
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v60, v52, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v102
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v59, v70
	v_fmac_f32_e32 v52, v65, v52
	v_div_scale_f32 v65, s19, v108, v0, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v67, v64, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v58, v58, v136
	v_mul_f32_e32 v59, v65, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v46, v49, v70, v64
	v_div_scale_f32 v63, null, v67, v67, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v60, v59, v65
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v101 :: v_dual_fmac_f32 v59, v47, v52
	v_exp_f32_e32 v47, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v60, v59, v65
	v_rcp_f32_e32 v65, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v52, v59
	v_div_scale_f32 v52, vcc_lo, v137, v67, v137
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v69, -v63, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v68, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v62, v69, v62 :: v_dual_add_f32 v61, 1.0, v47
	v_div_fixup_f32 v47, v46, v66, v107
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v141, v0 :: v_dual_fmac_f32 v65, v59, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v52, v62
	v_div_scale_f32 v59, s18, v136, v58, v136
	v_div_scale_f32 v69, null, v61, v61, v102
	v_fma_f32 v0, -v63, v64, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v139, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v59, v65
	v_rcp_f32_e32 v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v64, v0, v62 :: v_dual_mul_f32 v107, v138, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v68, v66, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v140, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v63, v64, v52
	v_fmac_f32_e32 v66, v0, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v69, v70, 1.0
	v_div_scale_f32 v52, null, v49, v49, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v50, v50, v62, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v204
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v68, v66, v59
	v_fmac_f32_e32 v70, v0, v70
	v_rcp_f32_e32 v0, v52
	v_div_scale_f32 v59, s19, v102, v61, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v63, v59, v70
	v_div_fmas_f32 v55, v55, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v133
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v52, v0, 1.0
	v_div_fixup_f32 v50, v50, v67, v137
	v_div_fixup_f32 v55, v55, v58, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v69, v63, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v202
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v64, v0
	v_div_scale_f32 v64, s18, v101, v49, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v63, v58, v70 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v60, v62, v60
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v64, v0
	v_fma_f32 v59, -v69, v63, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v60, 1.0, v60 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v52, v58, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v60, v60, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v68, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v66, v65
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v70, v63
	v_fma_f32 v52, -v52, v58, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v67, v62
	v_exp_f32_e32 v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v69, v71, 1.0
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v66, null, v63, v63, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_fmac_f32 v71, v64, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s19, v133, v60, v133
	v_rcp_f32_e32 v67, v66
	v_div_fmas_f32 v0, v52, v0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v52, null, v62, v62, v131
	v_mul_f32_e32 v58, v64, v71
	v_div_fixup_f32 v59, v59, v61, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v0, v49, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v65, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v52
	v_fma_f32 v65, -v69, v58, v64
	v_fma_f32 v68, -v66, v67, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v102, v135, v0 :: v_dual_mul_f32 v101, v134, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v65, v71
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v49, s18, v132, v63, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v52, v61, 1.0
	v_fma_f32 v64, -v69, v58, v64
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v65, null, v0, v0, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v68, v49, v67 :: v_dual_fmac_f32 v61, v59, v61
	v_div_scale_f32 v59, s20, v131, v62, v131
	v_div_fmas_f32 v58, v64, v71, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v100, v100, v55 :: v_dual_mul_f32 v99, v99, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v66, v68, v49
	v_mul_f32_e32 v55, v59, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v50, v67
	v_fma_f32 v50, -v52, v55, v59
	v_div_fixup_f32 v58, v58, v60, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v65, v69, 1.0
	v_fmac_f32_e32 v55, v50, v61
	v_fma_f32 v49, -v66, v68, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v83 :: v_dual_fmac_f32 v69, v60, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s19, v92, v0, v92
	v_fma_f32 v52, -v52, v55, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v72
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v66, v60, v69
	v_div_fmas_f32 v49, v49, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	v_ldexp_f32 v50, v50, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v91, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v65, v66, v60
	v_div_fixup_f32 v49, v49, v63, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v52, v61, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v59, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v50, v50, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v65, v66, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v59
	v_div_scale_f32 v70, null, v55, v55, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v69, v66
	v_rcp_f32_e32 v66, v70
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v64
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v59, v65, 1.0
	v_div_fixup_f32 v0, v60, v0, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v64, v65
	v_div_scale_f32 v64, vcc_lo, v86, v50, v86
	v_fma_f32 v68, -v70, v66, 1.0
	v_div_scale_f32 v63, null, v61, v61, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v62, v131
	v_mul_f32_e32 v62, v64, v65
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, s18, v83, v55, v83
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v130, v52 :: v_dual_mul_f32 v92, v129, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v60, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v59, v62, v64
	v_mul_f32_e32 v60, v68, v66
	v_div_scale_f32 v58, s19, v85, v61, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v52, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v70, v60, v68
	v_fma_f32 v67, -v63, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s20
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v59, v62, v64
	v_fmac_f32_e32 v60, v52, v66
	v_fmac_f32_e32 v0, v67, v0
	v_div_scale_f32 v67, null, v49, v49, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v59, v59, v65, v62
	v_fma_f32 v62, -v70, v60, v68
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v52, v58, v0
	v_rcp_f32_e32 v64, v67
	v_div_fixup_f32 v50, v59, v50, v86
	v_div_fmas_f32 v60, v62, v66, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v63, v52, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v55, v60, v55, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v65, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v71
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v67, v64, 1.0
	v_div_scale_f32 v33, s18, v84, v49, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v62, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v63, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v63, v33, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v58, v0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v70
	v_ldexp_f32 v66, v68, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v67, v63, v33
	v_div_scale_f32 v69, null, v65, v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v52, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v52, v69
	v_div_fixup_f32 v0, v0, v61, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v58, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v59, v59, v124
	v_fma_f32 v33, -v67, v63, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v69, v52, 1.0
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v64, v63
	v_div_scale_f32 v64, vcc_lo, v76, v65, v76
	v_fmac_f32_e32 v52, v66, v52
	v_div_scale_f32 v63, null, v29, v29, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v58, v67, 1.0
	v_div_fixup_f32 v33, v33, v49, v84
	v_mul_f32_e32 v68, v64, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v63
	v_fmac_f32_e32 v67, v66, v67
	v_div_scale_f32 v66, s18, v124, v59, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v86, v128, v33 :: v_dual_mul_f32 v85, v127, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v69, v68, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v66, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v83, v125, v50 :: v_dual_mul_f32 v84, v126, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v63, v62, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v0, v52
	v_fma_f32 v0, -v58, v33, v66
	v_div_scale_f32 v55, s19, v78, v29, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v62, v60, v62
	v_fma_f32 v50, -v69, v68, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v0, v55, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v50, v50, v52, v68
	v_fma_f32 v52, -v58, v33, v66
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v63, v0, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v52, v67, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v58, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v49, v49, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v63, v0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v118
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v60
	v_cndmask_b32_e64 v60, 0, 0x42800000, s18
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v55, v62, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v52, v33
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v120
	v_exp_f32_e32 v52, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v29, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v58
	v_exp_f32_e32 v33, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v24, v23, 1.0
	v_div_fixup_f32 v25, v25, v59, v124
	v_div_scale_f32 v58, null, v29, v29, v117
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v62, v23
	v_div_scale_f32 v59, vcc_lo, v77, v49, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v4, v4, v118
	v_rcp_f32_e32 v60, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v52, v52, v119
	v_rcp_f32_e32 v63, v61
	v_mul_f32_e32 v62, v59, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, v33, v33, v120
	v_rcp_f32_e32 v66, v55
	v_div_fixup_f32 v50, v50, v65, v76
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v58, v60, 1.0
	v_rcp_f32_e32 v70, v68
	v_fma_f32 v67, -v24, v62, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v121, v25
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v61, v63, 1.0
	v_fmac_f32_e32 v60, v64, v60
	v_div_scale_f32 v64, s18, v117, v29, v117
	v_fmac_f32_e32 v62, v67, v23
	v_fma_f32 v67, -v55, v66, 1.0
	v_fmac_f32_e32 v63, v69, v63
	v_div_scale_f32 v69, s19, v118, v4, v118
	v_fma_f32 v72, -v68, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v71, v64, v60 :: v_dual_fmac_f32 v66, v67, v66
	v_div_scale_f32 v67, s20, v119, v52, v119
	v_fma_f32 v24, -v24, v62, v59
	v_dual_mul_f32 v73, v69, v63 :: v_dual_fmac_f32 v70, v72, v70
	v_div_scale_f32 v72, s21, v120, v33, v120
	v_fma_f32 v59, -v58, v71, v64
	v_mul_f32_e32 v74, v67, v66
	v_div_fmas_f32 v23, v24, v23, v62
	v_fma_f32 v24, -v61, v73, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v62, v72, v70 :: v_dual_fmac_f32 v71, v59, v60
	v_fma_f32 v59, -v55, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v23, v49, v77
	v_fmac_f32_e32 v73, v24, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v24, -v68, v62, v72
	v_fma_f32 v49, -v58, v71, v64
	v_fmac_f32_e32 v74, v59, v66
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v58, -v61, v73, v69
	v_fmac_f32_e32 v62, v24, v70
	v_div_fmas_f32 v49, v49, v60, v71
	v_fma_f32 v24, -v55, v74, v67
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v123, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v58, v63, v73
	v_fma_f32 v58, -v68, v62, v72
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v122, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v66, v74
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v4, v55, v4, v118
	v_div_fmas_f32 v58, v58, v70, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v116, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v24, v52, v119
	v_div_fixup_f32 v24, v49, v29, v117
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v114, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v58, v33, v120
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v27|, |v39|, |v37|
	v_max3_f32 v25, |v32|, |v21|, |v19|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v113, v24
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v48|, |v41|, |v38|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v112, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v36|, |v30|
	v_max_f32_e64 v29, |v45|, |v40|
	v_max3_f32 v33, |v35|, |v57|, |v51|
	v_max3_f32 v49, |v54|, |v53|, |v56|
	v_max3_f32 v50, |v42|, |v17|, |v16|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v115, v23
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v31|, |v28|, |v22|
	v_max3_f32 v0, v0, |v26|, v4
	v_max3_f32 v4, v24, v25, |v20|
	v_max3_f32 v24, |v44|, |v43|, |v18|
	v_max3_f32 v25, v29, |v34|, v33
	v_max3_f32 v29, v49, v50, |v15|
	v_max_f32_e64 v33, |v107|, |v108|
	v_max3_f32 v49, |v47|, |v99|, |v100|
	v_max3_f32 v50, |v91|, |v92|, |v93|
	v_max3_f32 v52, |v94|, |v13|, |v11|
	v_max3_f32 v0, v0, v23, v4
	v_max3_f32 v23, v25, v24, v29
	v_max3_f32 v4, |v101|, |v102|, |v14|
	v_max3_f32 v24, v33, |v46|, v49
	v_max3_f32 v25, v50, v52, |v12|
	v_max_f32_e64 v29, |v83|, |v84|
	v_max3_f32 v33, |v85|, |v71|, |v76|
	v_max3_f32 v49, |v68|, |v69|, |v70|
	v_max3_f32 v50, |v67|, |v7|, |v8|
	s_mov_b32 s18, 0x76543210
	v_max3_f32 v24, v24, v4, v25
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v52, v0, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v77|, |v78|, |v10|
	v_max3_f32 v29, v29, |v86|, v33
	v_max3_f32 v33, v49, v50, |v9|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v50, v23, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v49, v52, v52
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v52, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v62, 1, v6
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v29, v25, v33
	v_dual_max_f32 v50, v50, v50 :: v_dual_and_b32 v33, 3, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v58, v0, v49
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v29, 4, v105
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v59, v23, v50
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 4, v105
	v_lshl_add_u32 v49, v33, 9, 0
	v_lshlrev_b32_e32 v50, 5, v33
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v60, v24, v52
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x60, v105
	v_and_b32_e32 v52, 8, v105
	v_lshl_add_u32 v49, v23, 2, v49
	v_and_or_b32 v55, 0x680, v29, v50
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v50, v50, v24
	v_lshrrev_b32_e32 v63, 3, v6
	v_lshl_add_u32 v49, v52, 4, v49
	v_xor_b32_e32 v55, v55, v24
	v_lshl_add_u32 v64, v23, 6, 0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v61, v25, v0
.Ltmp26:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 42, v110
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v49, v62, v50
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s19, s66, v3
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v49, v64, v63, v55
.Ltmp30:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s19
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[58:61]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v49
.Ltmp32:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v110
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v49, s18, s66, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v50, null, s67, 0, s18
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 38, v110
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s23, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s23
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[3:4]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v64.h, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s23, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[0:1]
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v58
.Ltmp34:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 36, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[2:3]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v25, v60
.Ltmp36:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s27, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s27
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v4, v4 :: v_dual_mov_b32 v4, v59
	v_max_f32_e32 v2, v58, v58
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp38:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[0:1]
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v61, v61
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[49:50]
.Ltmp43:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v3
	v_max_f32_e32 v1, v59, v59
	v_max_f32_e32 v3, v4, v4
	v_dual_max_f32 v4, v60, v60 :: v_dual_max_f32 v25, v25, v25
	v_max_f32_e32 v49, v61, v61
.Ltmp44:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 34, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v1, v3
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v55, v2 :: v_dual_max_f32 v4, v4, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v0, v49
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s29, s66, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v49, v3
.Ltmp50:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s29
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v58, v25
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v50, v4
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[0:1]
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v55, v55
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v49, v49 :: v_dual_max_f32 v49, v58, v58
	v_max_f32_e32 v2, v2, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v50, v50
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 32, v110
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v0
	v_max_f32_e32 v25, v25, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v55, v2 :: v_dual_max_f32 v4, v4, v1
.Ltmp61:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s31, s66, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v49, v3 :: v_dual_mov_b32 v58, v25
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s31
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v50, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[0:1]
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v55, v55
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[0:1]
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v49, v49
	v_max_f32_e32 v49, v58, v58
	v_dual_max_f32 v0, v2, v55 :: v_dual_lshlrev_b32 v33, 4, v33
	v_max_f32_e32 v2, v50, v50
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v50, 1, v24
	v_lshlrev_b32_e32 v52, 3, v52
	v_add_nc_u32_e32 v55, 0, v6
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v3, v1
	v_max_f32_e32 v3, v25, v49
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v23, 5, v23
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v4, v2 :: v_dual_add_nc_u32 v25, 0, v33
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v55, v50, v52
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v23, v25, v23, v52
.Ltmp75:
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v49, s34, s66, v104
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v23
.Ltmp77:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v50, null, s67, 0, s34
	v_add_co_u32 v58, s34, s66, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v59, null, s67, 0, s34
	v_add_co_u32 v60, s34, s66, v98
	v_add_co_ci_u32_e64 v61, null, s67, 0, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[49:50]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v49, s39, s66, v96
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[58:59]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[58:59]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v50, null, s67, 0, s39
	v_add_co_u32 v58, s39, s66, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v59, null, s67, 0, s39
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[49:50]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v4, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v49, s44, s66, v95
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[58:59]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[58:59]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v50, null, s67, 0, s44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v23, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v58, s44, s66, v90
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[60:61]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[60:61]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v59, null, s67, 0, s44
	v_add_co_u32 v60, s44, s66, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_co_ci_u32_e64 v61, null, s67, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v0, v23, 1.0
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[49:50]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s48, s[64:65], v[60:61]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[60:61]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, vcc_lo, v4, 0x40e00000, v4
	v_div_scale_f32 v55, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[49:50]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v52, v25, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v49, s50, s66, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[58:59]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[58:59]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v60, -v0, v52, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v50, null, s67, 0, s50
	v_add_co_u32 v58, s50, s66, v87
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v59, null, s67, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v61, v55
	v_dual_max_f32 v1, v1, v1 :: v_dual_fmac_f32 v52, v60, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[49:50]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v49, s53, s66, v82
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[58:59]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v50, null, s67, 0, s53
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[58:59]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v58, 0x2b8cbccc, v1
	v_fma_f32 v0, -v0, v52, v25
	v_max_f32_e32 v3, v3, v3
	v_fma_f32 v1, -v55, v61, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[49:50]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v23, v0, v23, v52
	v_div_scale_f32 v52, null, 0x40e00000, 0x40e00000, v58
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_fmac_f32_e32 v61, v1, v61
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v52
	v_div_scale_f32 v59, null, 0x40e00000, 0x40e00000, v3
	v_div_fixup_f32 v4, v23, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v25, v61
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s55, s66, v185
	v_add_co_ci_u32_e64 v1, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v63, v59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[49:50]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v55, v62, v25
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v49.l, v4.h
	v_mov_b16_e32 v49.h, v64.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v50, -v52, v60, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v62, v23, v61
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v60, v50, v60 :: v_dual_and_b32 v23, 1, v49
	v_div_scale_f32 v49, s60, v58, 0x40e00000, v58
	v_fma_f32 v0, -v59, v63, 1.0
	v_fma_f32 v25, -v55, v62, v25
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v23, v4, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v4, v49, v60
	v_div_scale_f32 v50, s61, v3, 0x40e00000, v3
	v_fmac_f32_e32 v63, v0, v63
	v_div_fmas_f32 v25, v25, v61, v62
	v_fma_f32 v61, -v52, v4, v49
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v62, 0xffff0000, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s58, s66, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v55, v50, v63 :: v_dual_fmac_f32 v4, v61, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v61, null, v62, v62, v36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[0:1]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v65, -v59, v55, v50
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v52, v4, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v52, v61
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v2, v25, 0x40e00000, v2
	v_fmac_f32_e32 v55, v65, v63
	v_div_fmas_f32 v0, v0, v60, v4
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v62, v62, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v1, -v59, v55, v50
	v_div_fixup_f32 v0, v0, 0x40e00000, v58
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v4, -v61, v52, 1.0
	v_div_scale_f32 v58, null, v62, v62, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v25, 1, v64
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v63, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v50.l, v0.h
	v_mov_b16_e32 v50.h, v64.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v4, v52
	v_div_scale_f32 v60, vcc_lo, v36, v62, v36
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v49, v1, 0x40e00000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v59, v58
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v63, v60, v52 :: v_dual_and_b32 v2, 1, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v49.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v66, null, v62, v62, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v61, v63, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v55, 1, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v58, v59, 1.0
	v_rcp_f32_e32 v64, v65
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v63, v0, v52
	v_rcp_f32_e32 v0, v66
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v59, v50, v59
	v_div_scale_f32 v72, s60, v30, v62, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v65, v64, 1.0
	v_fma_f32 v60, -v61, v63, v60
	v_div_scale_f32 v79, null, v62, v62, v39
	v_mul_f32_e32 v73, v72, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v66, v0, 1.0
	v_fmac_f32_e32 v64, v74, v64
	v_div_scale_f32 v74, s61, v26, v62, v26
	v_fma_f32 v61, -v58, v73, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v75, v0
	v_div_scale_f32 v75, null, v62, v62, v37
	v_div_fmas_f32 v52, v60, v52, v63
	v_dual_fmac_f32 v73, v61, v59 :: v_dual_mul_f32 v60, v74, v64
	v_rcp_f32_e32 v61, v79
	v_div_scale_f32 v63, s62, v27, v62, v27
	v_rcp_f32_e32 v80, v75
	v_div_fixup_f32 v36, v52, v62, v36
	v_fma_f32 v52, -v58, v73, v72
	v_fma_f32 v58, -v65, v60, v74
	v_mul_f32_e32 v72, v63, v0
	s_mov_b32 vcc_lo, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v49, v55, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v79, v61, 1.0
	v_div_fmas_f32 v52, v52, v59, v73
	v_fmac_f32_e32 v60, v58, v64
	v_fma_f32 v58, -v66, v72, v63
	v_fma_f32 v73, -v75, v80, 1.0
	v_fmac_f32_e32 v61, v81, v61
	v_div_scale_f32 v59, s60, v39, v62, v39
	v_div_fixup_f32 v30, v52, v62, v30
	v_fma_f32 v52, -v65, v60, v74
	v_fmac_f32_e32 v72, v58, v0
	v_fmac_f32_e32 v80, v73, v80
	v_div_scale_f32 v73, null, v62, v62, v31
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v58, v59, v61
	v_div_scale_f32 v65, s63, v37, v62, v37
	v_div_fmas_f32 v52, v52, v64, v60
	v_fma_f32 v60, -v66, v72, v63
	v_rcp_f32_e32 v64, v73
	v_div_scale_f32 v74, null, v62, v62, v28
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v63, -v79, v58, v59
	v_mul_f32_e32 v66, v65, v80
	v_div_fmas_f32 v0, v60, v0, v72
	v_rcp_f32_e32 v60, v74
	v_div_fixup_f32 v26, v52, v62, v26
	v_fmac_f32_e32 v58, v63, v61
	v_fma_f32 v63, -v75, v66, v65
	v_fma_f32 v72, -v73, v64, 1.0
	v_div_fixup_f32 v27, v0, v62, v27
	v_div_scale_f32 v52, s61, v31, v62, v31
	v_fma_f32 v0, -v79, v58, v59
	v_fmac_f32_e32 v66, v63, v80
	v_fmac_f32_e32 v64, v72, v64
	v_fma_f32 v59, -v74, v60, 1.0
	v_div_scale_f32 v63, null, v62, v62, v22
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v72, null, v62, v62, v48
	v_div_fmas_f32 v0, v0, v61, v58
	v_fma_f32 v58, -v75, v66, v65
	v_mul_f32_e32 v61, v52, v64
	v_fmac_f32_e32 v60, v59, v60
	v_rcp_f32_e32 v59, v63
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v65, s60, v28, v62, v28
	v_div_fmas_f32 v58, v58, v80, v66
	v_fma_f32 v66, -v73, v61, v52
	v_rcp_f32_e32 v80, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v75, v65, v60
	v_div_fixup_f32 v39, v0, v62, v39
	v_div_fixup_f32 v37, v58, v62, v37
	v_fma_f32 v79, -v63, v59, 1.0
	v_fmac_f32_e32 v61, v66, v64
	v_div_scale_f32 v66, null, v62, v62, v41
	v_fma_f32 v0, -v74, v75, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v79, v59
	v_div_scale_f32 v58, s62, v22, v62, v22
	v_fma_f32 v79, -v72, v80, 1.0
	v_fma_f32 v52, -v73, v61, v52
	v_rcp_f32_e32 v73, v66
	v_dual_fmac_f32 v75, v0, v60 :: v_dual_mul_f32 v0, v58, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v79, s63, v48, v62, v48
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v81, null, v62, v62, v38
	v_div_fmas_f32 v52, v52, v64, v61
	v_fma_f32 v61, -v74, v75, v65
	v_fma_f32 v64, -v63, v0, v58
	v_mul_f32_e32 v65, v79, v80
	v_fma_f32 v74, -v66, v73, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v31, v52, v62, v31
	v_div_fmas_f32 v60, v61, v60, v75
	v_fmac_f32_e32 v0, v64, v59
	v_rcp_f32_e32 v61, v81
	v_fma_f32 v64, -v72, v65, v79
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, s60, v41, v62, v41
	v_fma_f32 v52, -v63, v0, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v64, v80
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v58, v74, v73
	v_div_fixup_f32 v28, v60, v62, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v81, v61, 1.0
	v_div_scale_f32 v63, null, v62, v62, v32
	v_div_fmas_f32 v0, v52, v59, v0
	v_fma_f32 v52, -v72, v65, v79
	v_fma_f32 v59, -v66, v58, v74
	v_div_scale_f32 v72, null, v62, v62, v21
	v_fmac_f32_e32 v61, v60, v61
	v_rcp_f32_e32 v60, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v59, v73
	v_rcp_f32_e32 v59, v72
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v64, s61, v38, v62, v38
	v_div_fmas_f32 v52, v52, v80, v65
	v_div_fixup_f32 v0, v0, v62, v22
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v65, v64, v61
	v_fma_f32 v75, -v63, v60, 1.0
	v_div_fixup_f32 v22, v52, v62, v48
	v_fma_f32 v48, -v66, v58, v74
	v_fma_f32 v74, -v72, v59, 1.0
	v_fma_f32 v52, -v81, v65, v64
	v_fmac_f32_e32 v60, v75, v60
	v_div_scale_f32 v66, s62, v32, v62, v32
	v_div_scale_f32 v75, null, v62, v62, v19
	v_fmac_f32_e32 v59, v74, v59
	v_div_scale_f32 v74, null, v62, v62, v20
	v_div_fmas_f32 v48, v48, v73, v58
	v_dual_fmac_f32 v65, v52, v61 :: v_dual_mul_f32 v52, v66, v60
	v_rcp_f32_e32 v58, v75
	v_div_scale_f32 v73, s60, v21, v62, v21
	v_rcp_f32_e32 v80, v74
	v_div_fixup_f32 v41, v48, v62, v41
	v_fma_f32 v48, -v81, v65, v64
	v_fma_f32 v64, -v63, v52, v66
	v_mul_f32_e32 v79, v73, v59
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v25
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v58, 1.0
	v_div_fmas_f32 v48, v48, v61, v65
	v_fmac_f32_e32 v52, v64, v60
	v_fma_f32 v61, -v72, v79, v73
	v_fma_f32 v65, -v74, v80, 1.0
	v_fmac_f32_e32 v58, v81, v58
	v_div_scale_f32 v64, s61, v19, v62, v19
	v_div_fixup_f32 v38, v48, v62, v38
	v_fma_f32 v48, -v63, v52, v66
	v_fmac_f32_e32 v79, v61, v59
	v_fmac_f32_e32 v80, v65, v80
	v_div_scale_f32 v65, null, v55, v55, v45
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v61, v64, v58
	v_div_scale_f32 v63, s63, v20, v62, v20
	v_div_fmas_f32 v48, v48, v60, v52
	v_fma_f32 v52, -v72, v79, v73
	v_rcp_f32_e32 v66, v65
	v_div_scale_f32 v73, null, v55, v55, v40
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v60, -v75, v61, v64
	v_mul_f32_e32 v72, v63, v80
	v_div_fmas_f32 v52, v52, v59, v79
	v_rcp_f32_e32 v59, v73
	v_div_fixup_f32 v32, v48, v62, v32
	v_fmac_f32_e32 v61, v60, v58
	v_fma_f32 v60, -v74, v72, v63
	v_fma_f32 v79, -v65, v66, 1.0
	v_div_fixup_f32 v21, v52, v62, v21
	v_div_scale_f32 v52, s60, v45, v55, v45
	v_fma_f32 v48, -v75, v61, v64
	v_fmac_f32_e32 v72, v60, v80
	v_fmac_f32_e32 v66, v79, v66
	v_fma_f32 v60, -v73, v59, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v64, null, v55, v55, v34
	v_div_fmas_f32 v48, v48, v58, v61
	v_fma_f32 v58, -v74, v72, v63
	v_mul_f32_e32 v61, v52, v66
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v63, s61, v40, v55, v40
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v60, v64
	v_div_fmas_f32 v58, v58, v80, v72
	v_fma_f32 v72, -v65, v61, v52
	v_mul_f32_e32 v75, v63, v59
	v_div_fixup_f32 v19, v48, v62, v19
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v74, null, v55, v55, v35
	v_fmac_f32_e32 v61, v72, v66
	v_fma_f32 v48, -v73, v75, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v64, v60, 1.0
	v_rcp_f32_e32 v80, v74
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v49, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v65, v61, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v75, v48, v59 :: v_dual_fmac_f32 v60, v79, v60
	v_div_scale_f32 v79, null, v55, v55, v51
	v_div_fmas_f32 v52, v52, v66, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v61, -v73, v75, v63
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v72, -v74, v80, 1.0
	v_div_scale_f32 v81, null, v49, v49, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v61, v59, v75
	v_rcp_f32_e32 v61, v79
	v_fmac_f32_e32 v80, v72, v80
	v_div_scale_f32 v72, s63, v35, v55, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v40, v59, v55, v40
	v_div_fixup_f32 v45, v52, v55, v45
	v_div_scale_f32 v87, null, v49, v49, v94
	v_mul_f32_e32 v66, v72, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v79, v61, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v61, v59, v61
	v_div_fixup_f32 v20, v58, v62, v20
	v_div_scale_f32 v58, s62, v34, v55, v34
	v_div_scale_f32 v62, null, v55, v55, v57
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v48, v58, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v65, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v63, -v64, v48, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v48, v63, v60
	v_fma_f32 v63, -v74, v66, v72
	v_fma_f32 v73, -v62, v65, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v64, v48, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v66, v63, v80 :: v_dual_fmac_f32 v65, v73, v65
	v_div_scale_f32 v73, s60, v57, v55, v57
	v_div_scale_f32 v63, null, v55, v55, v44
	v_div_fmas_f32 v48, v52, v60, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v73, v65
	v_fma_f32 v52, -v74, v66, v72
	v_rcp_f32_e32 v59, v63
	v_div_scale_f32 v72, null, v55, v55, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v60, -v62, v58, v73
	v_div_scale_f32 v64, s61, v51, v55, v51
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v34, v48, v55, v34
	v_fmac_f32_e32 v58, v60, v65
	v_rcp_f32_e32 v60, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v74, -v63, v59, 1.0
	v_div_fmas_f32 v52, v52, v80, v66
	v_mul_f32_e32 v66, v64, v61
	v_fma_f32 v48, -v62, v58, v73
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v59, v74, v59
	v_div_scale_f32 v74, null, v55, v55, v18
	v_div_fixup_f32 v35, v52, v55, v35
	v_fma_f32 v52, -v79, v66, v64
	v_div_scale_f32 v62, s62, v44, v55, v44
	v_fma_f32 v73, -v72, v60, 1.0
	v_div_fmas_f32 v48, v48, v65, v58
	v_rcp_f32_e32 v58, v74
	v_fmac_f32_e32 v66, v52, v61
	v_mul_f32_e32 v52, v62, v59
	v_fmac_f32_e32 v60, v73, v60
	v_div_scale_f32 v65, s60, v43, v55, v43
	v_div_scale_f32 v73, null, v55, v55, v54
	v_div_fixup_f32 v48, v48, v55, v57
	v_fma_f32 v57, -v79, v66, v64
	v_fma_f32 v64, -v63, v52, v62
	v_mul_f32_e32 v75, v65, v60
	v_rcp_f32_e32 v79, v73
	v_fma_f32 v80, -v74, v58, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v52, v64, v59
	v_div_fmas_f32 v57, v57, v61, v66
	v_fma_f32 v61, -v72, v75, v65
	v_fmac_f32_e32 v58, v80, v58
	v_div_scale_f32 v64, s61, v18, v55, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v75, v61, v60 :: v_dual_and_b32 v50, 0xffff0000, v2
	v_fma_f32 v66, -v73, v79, 1.0
	v_div_fixup_f32 v51, v57, v55, v51
	v_fma_f32 v57, -v63, v52, v62
	v_mul_f32_e32 v61, v64, v58
	v_div_scale_f32 v63, null, v55, v55, v53
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v79, v66, v79
	v_div_scale_f32 v62, s63, v54, v55, v54
	v_div_fmas_f32 v52, v57, v59, v52
	v_fma_f32 v57, -v72, v75, v65
	v_fma_f32 v59, -v74, v61, v64
	v_rcp_f32_e32 v65, v63
	v_div_scale_f32 v72, null, v55, v55, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v66, v62, v79 :: v_dual_fmac_f32 v61, v59, v58
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v59, v72
	v_div_fmas_f32 v57, v57, v60, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v60, -v73, v66, v62
	v_div_fixup_f32 v44, v52, v55, v44
	v_fma_f32 v75, -v63, v65, 1.0
	v_fma_f32 v52, -v74, v61, v64
	v_div_fixup_f32 v43, v57, v55, v43
	v_fmac_f32_e32 v66, v60, v79
	v_div_scale_f32 v57, s60, v53, v55, v53
	v_fmac_f32_e32 v65, v75, v65
	v_fma_f32 v60, -v72, v59, 1.0
	v_div_scale_f32 v64, null, v55, v55, v42
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v52, v52, v58, v61
	v_fma_f32 v58, -v73, v66, v62
	v_mul_f32_e32 v61, v57, v65
	v_fmac_f32_e32 v59, v60, v59
	v_rcp_f32_e32 v60, v64
	v_div_scale_f32 v62, s61, v56, v55, v56
	v_div_scale_f32 v73, null, v55, v55, v17
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v74, v62, v59
	v_div_fmas_f32 v58, v58, v79, v66
	v_fma_f32 v66, -v63, v61, v57
	v_rcp_f32_e32 v79, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v64, v60, 1.0
	v_div_fixup_f32 v18, v52, v55, v18
	v_div_fixup_f32 v52, v58, v55, v54
	v_fmac_f32_e32 v61, v66, v65
	v_fma_f32 v54, -v72, v74, v62
	v_fmac_f32_e32 v60, v75, v60
	v_div_scale_f32 v58, s62, v42, v55, v42
	v_div_scale_f32 v66, null, v55, v55, v16
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v73, v79, 1.0
	v_fma_f32 v57, -v63, v61, v57
	v_fmac_f32_e32 v74, v54, v59
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v63, v58, v60
	v_rcp_f32_e32 v80, v66
	v_fmac_f32_e32 v79, v75, v79
	v_div_scale_f32 v75, s63, v17, v55, v17
	v_div_fmas_f32 v54, v57, v65, v61
	v_fma_f32 v57, -v72, v74, v62
	v_div_scale_f32 v72, null, v55, v55, v15
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v61, -v64, v63, v58
	v_mul_f32_e32 v62, v75, v79
	v_div_fmas_f32 v57, v57, v59, v74
	v_rcp_f32_e32 v59, v72
	v_fma_f32 v65, -v66, v80, 1.0
	v_fmac_f32_e32 v63, v61, v60
	v_fma_f32 v61, -v73, v62, v75
	v_div_fixup_f32 v53, v54, v55, v53
	v_div_fixup_f32 v54, v57, v55, v56
	v_fmac_f32_e32 v80, v65, v80
	v_div_scale_f32 v65, s60, v16, v55, v16
	v_fma_f32 v56, -v64, v63, v58
	v_fmac_f32_e32 v62, v61, v79
	v_fma_f32 v58, -v72, v59, 1.0
	v_div_scale_f32 v61, null, v49, v49, v107
	v_mul_f32_e32 v57, v65, v80
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v58, v59
	v_rcp_f32_e32 v58, v61
	v_div_fmas_f32 v56, v56, v60, v63
	v_fma_f32 v60, -v73, v62, v75
	v_fma_f32 v63, -v66, v57, v65
	v_div_scale_f32 v64, s61, v15, v55, v15
	v_div_scale_f32 v73, null, v49, v49, v108
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v57, v63, v80
	v_div_fmas_f32 v60, v60, v79, v62
	v_rcp_f32_e32 v62, v73
	v_mul_f32_e32 v63, v64, v59
	v_fma_f32 v74, -v61, v58, 1.0
	v_div_fixup_f32 v42, v56, v55, v42
	v_div_fixup_f32 v17, v60, v55, v17
	v_fma_f32 v56, -v66, v57, v65
	v_fma_f32 v60, -v72, v63, v64
	v_fmac_f32_e32 v58, v74, v58
	v_div_scale_f32 v74, null, v49, v49, v46
	v_div_scale_f32 v65, s62, v107, v49, v107
	v_fma_f32 v66, -v73, v62, 1.0
	v_fmac_f32_e32 v63, v60, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v60, v74
	v_div_scale_f32 v75, null, v49, v49, v47
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v62, v66, v62
	v_div_fmas_f32 v56, v56, v80, v57
	v_mul_f32_e32 v57, v65, v58
	v_div_scale_f32 v66, s60, v108, v49, v108
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v16, v56, v55, v16
	v_fma_f32 v56, -v72, v63, v64
	v_fma_f32 v64, -v61, v57, v65
	v_mul_f32_e32 v72, v66, v62
	v_fma_f32 v80, -v74, v60, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v56, v56, v59, v63
	v_fmac_f32_e32 v57, v64, v58
	v_fma_f32 v59, -v73, v72, v66
	v_fmac_f32_e32 v60, v80, v60
	v_div_scale_f32 v63, s61, v46, v49, v46
	v_fma_f32 v64, -v75, v79, 1.0
	v_div_fixup_f32 v15, v56, v55, v15
	v_fma_f32 v55, -v61, v57, v65
	v_fmac_f32_e32 v72, v59, v62
	v_mul_f32_e32 v59, v63, v60
	v_fmac_f32_e32 v79, v64, v79
	v_div_scale_f32 v64, null, v49, v49, v99
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v61, s63, v47, v49, v47
	v_div_fmas_f32 v55, v55, v58, v57
	v_fma_f32 v56, -v73, v72, v66
	v_fma_f32 v57, -v74, v59, v63
	v_rcp_f32_e32 v58, v64
	v_div_scale_f32 v66, null, v49, v49, v100
	v_mul_f32_e32 v65, v61, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v57, v60
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v57, v66
	v_div_fmas_f32 v56, v56, v62, v72
	v_fma_f32 v62, -v75, v65, v61
	v_fma_f32 v63, -v74, v59, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v64, v58, 1.0
	v_div_scale_f32 v73, null, v49, v49, v101
	s_mov_b32 vcc_lo, s61
	v_dual_fmac_f32 v65, v62, v79 :: v_dual_fmac_f32 v58, v72, v58
	v_div_scale_f32 v62, s60, v99, v49, v99
	v_fma_f32 v72, -v66, v57, 1.0
	v_div_fmas_f32 v59, v63, v60, v59
	v_rcp_f32_e32 v63, v73
	v_fma_f32 v60, -v75, v65, v61
	v_mul_f32_e32 v61, v62, v58
	v_fmac_f32_e32 v57, v72, v57
	v_div_scale_f32 v72, s61, v100, v49, v100
	v_div_scale_f32 v74, null, v49, v49, v102
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v75, v72, v57
	v_div_fmas_f32 v60, v60, v79, v65
	v_fma_f32 v65, -v64, v61, v62
	v_fma_f32 v79, -v73, v63, 1.0
	v_rcp_f32_e32 v80, v74
	v_div_fixup_f32 v46, v59, v49, v46
	v_div_fixup_f32 v47, v60, v49, v47
	v_fmac_f32_e32 v61, v65, v58
	v_fma_f32 v59, -v66, v75, v72
	v_fmac_f32_e32 v63, v79, v63
	v_div_scale_f32 v60, s62, v101, v49, v101
	v_div_scale_f32 v65, null, v49, v49, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v74, v80, 1.0
	v_fma_f32 v62, -v64, v61, v62
	v_fmac_f32_e32 v75, v59, v57
	v_mul_f32_e32 v59, v60, v63
	v_rcp_f32_e32 v64, v65
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v79, s63, v102, v49, v102
	v_div_fmas_f32 v58, v62, v58, v61
	v_fma_f32 v62, -v73, v59, v60
	v_fma_f32 v61, -v66, v75, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v66, v79, v80
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v72, -v65, v64, 1.0
	v_fmac_f32_e32 v59, v62, v63
	v_rcp_f32_e32 v62, v81
	v_div_fmas_f32 v61, v61, v57, v75
	v_fma_f32 v75, -v74, v66, v79
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s60, v14, v49, v14
	v_div_fixup_f32 v57, v58, v49, v99
	v_div_fixup_f32 v58, v61, v49, v100
	v_fma_f32 v60, -v73, v59, v60
	v_fmac_f32_e32 v66, v75, v80
	v_mul_f32_e32 v61, v72, v64
	v_fma_f32 v73, -v81, v62, 1.0
	v_div_scale_f32 v75, null, v49, v49, v92
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v55, v55, v49, v107
	v_div_fmas_f32 v59, v60, v63, v59
	v_fma_f32 v60, -v74, v66, v79
	v_fma_f32 v63, -v65, v61, v72
	v_fmac_f32_e32 v62, v73, v62
	v_rcp_f32_e32 v73, v75
	v_div_scale_f32 v79, null, v49, v49, v93
	v_div_scale_f32 v74, s61, v91, v49, v91
	v_fmac_f32_e32 v61, v63, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v63, v79
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v56, v56, v49, v108
	v_div_fmas_f32 v60, v60, v80, v66
	v_mul_f32_e32 v66, v74, v62
	v_fma_f32 v80, -v75, v73, 1.0
	v_fma_f32 v65, -v65, v61, v72
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v59, v59, v49, v101
	v_fma_f32 v72, -v81, v66, v74
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, s62, v92, v49, v92
	v_fma_f32 v82, -v79, v63, 1.0
	v_div_fmas_f32 v61, v65, v64, v61
	v_fmac_f32_e32 v66, v72, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v64, v80, v73
	v_rcp_f32_e32 v65, v87
	v_fmac_f32_e32 v63, v82, v63
	v_div_scale_f32 v82, null, v49, v49, v13
	v_div_scale_f32 v72, s60, v93, v49, v93
	v_div_fixup_f32 v14, v61, v49, v14
	v_fma_f32 v61, -v81, v66, v74
	v_fma_f32 v74, -v75, v64, v80
	v_rcp_f32_e32 v88, v82
	v_mul_f32_e32 v81, v72, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v87, v65, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v64, v74, v73
	v_div_fmas_f32 v61, v61, v62, v66
	v_fma_f32 v62, -v79, v81, v72
	v_fmac_f32_e32 v65, v89, v65
	v_div_scale_f32 v66, s61, v94, v49, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v82, v88, 1.0
	v_fma_f32 v75, -v75, v64, v80
	v_div_scale_f32 v80, null, v49, v49, v11
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v81, v62, v63
	v_mul_f32_e32 v62, v66, v65
	v_fmac_f32_e32 v88, v74, v88
	v_div_scale_f32 v74, s63, v13, v49, v13
	v_div_fmas_f32 v64, v75, v73, v64
	v_rcp_f32_e32 v75, v80
	v_fma_f32 v72, -v79, v81, v72
	v_fma_f32 v73, -v87, v62, v66
	v_mul_f32_e32 v79, v74, v88
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v89, null, v49, v49, v12
	v_div_fmas_f32 v63, v72, v63, v81
	v_fmac_f32_e32 v62, v73, v65
	v_fma_f32 v73, -v82, v79, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v80, v75, 1.0
	v_rcp_f32_e32 v72, v89
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v66, -v87, v62, v66
	v_fmac_f32_e32 v79, v73, v88
	v_fmac_f32_e32 v75, v81, v75
	v_div_scale_f32 v73, s60, v11, v49, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v66, v65, v62
	v_fma_f32 v65, -v82, v79, v74
	v_div_scale_f32 v74, null, v50, v50, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v66, v73, v75
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v81, -v89, v72, 1.0
	v_div_fmas_f32 v65, v65, v88, v79
	v_rcp_f32_e32 v79, v74
	v_fma_f32 v82, -v80, v66, v73
	v_div_scale_f32 v88, null, v50, v50, v84
	v_fmac_f32_e32 v72, v81, v72
	v_div_scale_f32 v81, s61, v12, v49, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v82, v75
	v_div_fixup_f32 v13, v65, v49, v13
	v_rcp_f32_e32 v82, v88
	v_mul_f32_e32 v87, v81, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v74, v79, 1.0
	v_fma_f32 v73, -v80, v66, v73
	v_div_scale_f32 v80, null, v50, v50, v86
	v_fma_f32 v65, -v89, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v90, v79
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v90, v80
	v_div_fixup_f32 v61, v61, v49, v91
	v_fmac_f32_e32 v87, v65, v72
	v_div_scale_f32 v65, s62, v83, v50, v83
	v_fma_f32 v91, -v88, v82, 1.0
	v_div_fmas_f32 v66, v73, v75, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v89, v87, v81
	v_mul_f32_e32 v75, v65, v79
	v_div_fixup_f32 v64, v64, v49, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v80, v90, 1.0
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v92, null, v50, v50, v85
	v_fma_f32 v91, -v74, v75, v65
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s63, v86, v50, v86
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v62, v62, v49, v94
	v_div_scale_f32 v81, s60, v84, v50, v84
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v72, v73, v72, v87
	v_fmac_f32_e32 v75, v91, v79
	v_mul_f32_e32 v87, v89, v90
	v_div_fixup_f32 v60, v60, v49, v102
	v_div_fixup_f32 v63, v63, v49, v93
	v_mul_f32_e32 v93, v81, v82
	v_div_fixup_f32 v11, v66, v49, v11
	v_div_fixup_f32 v12, v72, v49, v12
	v_fma_f32 v49, -v74, v75, v65
	v_fma_f32 v65, -v80, v87, v89
	v_div_scale_f32 v72, null, v50, v50, v71
	v_fma_f32 v73, -v88, v93, v81
	v_fma_f32 v66, -v92, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v65, v90
	v_rcp_f32_e32 v65, v72
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v93, v73, v82
	v_fmac_f32_e32 v94, v66, v94
	v_div_scale_f32 v66, s61, v85, v50, v85
	v_div_fmas_f32 v49, v49, v79, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v88, v93, v81
	v_fma_f32 v74, -v80, v87, v89
	v_mul_f32_e32 v75, v66, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v72, v65, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v79, null, v50, v50, v76
	v_div_fmas_f32 v73, v73, v82, v93
	v_fma_f32 v82, -v92, v75, v66
	v_fmac_f32_e32 v65, v80, v65
	v_div_scale_f32 v80, s60, v71, v50, v71
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v75, v82, v94
	v_div_fmas_f32 v74, v74, v90, v87
	v_mul_f32_e32 v82, v80, v65
	v_rcp_f32_e32 v81, v79
	v_div_fixup_f32 v73, v73, v50, v84
	v_div_scale_f32 v84, null, v50, v50, v77
	v_div_fixup_f32 v74, v74, v50, v86
	v_fma_f32 v86, -v72, v82, v80
	v_fma_f32 v66, -v92, v75, v66
	v_div_fixup_f32 v49, v49, v50, v83
	v_rcp_f32_e32 v87, v84
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v82, v86, v65
	v_fma_f32 v83, -v79, v81, 1.0
	v_div_fmas_f32 v66, v66, v94, v75
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v86, null, v50, v50, v78
	v_fma_f32 v72, -v72, v82, v80
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, s62, v76, v50, v76
	v_div_fixup_f32 v66, v66, v50, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v72, v65, v82
	v_div_scale_f32 v72, null, v50, v50, v10
	v_mul_f32_e32 v75, v83, v81
	v_fma_f32 v85, -v84, v87, 1.0
	v_rcp_f32_e32 v88, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v72
	v_div_fixup_f32 v65, v65, v50, v71
	v_fma_f32 v80, -v79, v75, v83
	v_fmac_f32_e32 v87, v85, v87
	v_div_scale_f32 v85, null, v50, v50, v68
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v75, v80, v81
	v_div_scale_f32 v80, s60, v77, v50, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v86, v88, 1.0
	v_fma_f32 v89, -v72, v82, 1.0
	v_rcp_f32_e32 v90, v85
	v_fma_f32 v79, -v79, v75, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v83, v80, v87 :: v_dual_fmac_f32 v88, v71, v88
	v_div_scale_f32 v71, s61, v78, v50, v78
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, null, v50, v50, v69
	v_div_fmas_f32 v75, v79, v81, v75
	v_fma_f32 v79, -v84, v83, v80
	v_mul_f32_e32 v81, v71, v88
	v_div_scale_f32 v91, s62, v10, v50, v10
	v_fma_f32 v92, -v85, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v79, v87
	v_fma_f32 v79, -v86, v81, v71
	v_mul_f32_e32 v94, v91, v82
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s63, v68, v50, v68
	v_div_fixup_f32 v75, v75, v50, v76
	v_fma_f32 v76, -v84, v83, v80
	v_fmac_f32_e32 v81, v79, v88
	v_fma_f32 v79, -v72, v94, v91
	v_mul_f32_e32 v80, v92, v90
	v_fma_f32 v84, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v71, -v86, v81, v71
	v_div_fmas_f32 v76, v76, v87, v83
	v_fmac_f32_e32 v94, v79, v82
	v_fma_f32 v79, -v85, v80, v92
	v_fmac_f32_e32 v93, v84, v93
	v_div_scale_f32 v83, s60, v69, v50, v69
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v72, -v72, v94, v91
	v_div_fmas_f32 v71, v71, v88, v81
	v_fmac_f32_e32 v80, v79, v90
	v_mul_f32_e32 v79, v83, v93
	v_div_scale_f32 v81, null, v50, v50, v70
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v71, v71, v50, v78
	v_div_fmas_f32 v72, v72, v82, v94
	v_fma_f32 v82, -v85, v80, v92
	v_fma_f32 v84, -v89, v79, v83
	v_rcp_f32_e32 v85, v81
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v10, v72, v50, v10
	v_div_fmas_f32 v80, v82, v90, v80
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v76, v76, v50, v77
	v_div_scale_f32 v77, null, v50, v50, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v89, v79, v83
	v_fma_f32 v78, -v81, v85, 1.0
	v_div_fixup_f32 v68, v80, v50, v68
	v_div_scale_f32 v80, null, v50, v50, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v72, v72, v93, v79
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v82, vcc_lo, v70, v50, v70
	v_rcp_f32_e32 v79, v77
	v_div_scale_f32 v78, null, v50, v50, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v82, v85
	v_div_scale_f32 v87, null, v50, v50, v9
	v_rcp_f32_e32 v83, v78
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v90, -v81, v86, v82
	v_div_fixup_f32 v69, v72, v50, v69
	v_fma_f32 v72, -v77, v79, 1.0
	v_rcp_f32_e32 v89, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v72, v79
	v_div_scale_f32 v72, s60, v67, v50, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v81, v86, v82
	v_fma_f32 v88, -v78, v83, 1.0
	v_fma_f32 v91, -v80, v84, 1.0
	v_mul_f32_e32 v92, v72, v79
	v_fma_f32 v93, -v87, v89, 1.0
	v_div_fmas_f32 v81, v81, v85, v86
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v83, v88, v83
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v15, v15, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s61, v7, v50, v7
	v_div_fixup_f32 v70, v81, v50, v70
	v_fma_f32 v90, -v77, v92, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s62, v8, v50, v8
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s63, v9, v50, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v94, v88, v83 :: v_dual_mul_f32 v95, v91, v84
	v_mul_f32_e32 v96, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v85, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v90, v79
	v_fma_f32 v82, -v78, v94, v88
	v_fma_f32 v90, -v80, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v72, -v77, v92, v72
	v_fma_f32 v77, -v87, v96, v93
	v_fmac_f32_e32 v94, v82, v83
	v_fmac_f32_e32 v95, v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v79, v92
	v_fmac_f32_e32 v96, v77, v89
	v_fma_f32 v78, -v78, v94, v88
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v67, v72, v50, v67
	v_fma_f32 v79, -v87, v96, v93
	v_div_fmas_f32 v78, v78, v83, v94
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v7, v78, v50, v7
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v77, v50, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v79, v50, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v78, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v96, v74
	v_and_b32_e32 v74, 15, v20
	v_and_b32_e32 v20, 15, v35
	v_and_b32_e32 v35, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 16, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v64
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v64, v73
	v_rndne_f32_e32 v73, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s60, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v75, v38
	v_cvt_i32_f32_e32 v84, v46
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v89, v62
	v_cvt_i32_f32_e32 v91, v11
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v38, 15, v31
	v_and_b32_e32 v46, 15, v0
	v_and_b32_e32 v62, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v105
	v_and_b32_e32 v30, 0x2f0, v29
	v_lshlrev_b32_e32 v31, 8, v78
	v_and_b32_e32 v32, 64, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v36
	v_and_b32_e32 v36, 15, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v57, 3, v6
	v_and_or_b32 v0, 0xe000, v0, v31
	v_xor_b32_e32 v30, v30, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v82, v54
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v57, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v98, v10
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v42
	v_cvt_i32_f32_e32 v101, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v83, v55
	v_cvt_i32_f32_e32 v93, v64
	v_cvt_i32_f32_e32 v103, v8
	v_cvt_i32_f32_e32 v104, v9
	v_and_b32_e32 v8, 15, v45
	v_and_b32_e32 v9, 15, v82
	v_and_b32_e32 v10, 15, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v30, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v73, v73
	v_and_b32_e32 v15, 15, v26
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v26, 15, v39
	v_and_b32_e32 v42, 15, v28
	v_and_b32_e32 v27, 15, v48
	v_and_b32_e32 v28, 15, v56
	v_and_b32_e32 v29, 15, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v18
	v_and_b32_e32 v48, 15, v14
	v_and_b32_e32 v49, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v63
	v_and_b32_e32 v63, 15, v79
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v65, 15, v101
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v90, v13
	v_cvt_i32_f32_e32 v92, v12
	v_and_b32_e32 v12, 15, v40
	v_and_b32_e32 v13, 15, v83
	v_and_b32_e32 v14, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v30, v[7:10]
	ds_store_b128 v30, v[26:29] offset:256
	ds_store_b128 v30, v[46:49] offset:2048
	ds_store_b128 v30, v[62:65] offset:2304
	v_xad_u32 v7, v0, 16, 0
	v_lshlrev_b32_e32 v8, 6, v105
	v_lshlrev_b32_e32 v9, 5, v24
	v_cndmask_b32_e64 v6, 0x2010, 0, vcc_lo
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_cvt_i32_f32_e32 v77, v34
	v_and_b32_e32 v34, 15, v37
	v_and_b32_e32 v37, 15, v73
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v94, v72
	v_cvt_i32_f32_e32 v99, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v100, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[11:14]
	ds_store_b128 v7, v[34:37] offset:256
	v_lshlrev_b32_e32 v11, 2, v78
	v_and_or_b32 v8, 0x300, v8, v9
	v_xor_b32_e32 v6, v6, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v80, v16
	v_cvt_i32_f32_e32 v86, v58
	v_cvt_i32_f32_e32 v95, v66
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v87, v59
	v_cvt_i32_f32_e32 v97, v71
	v_and_b32_e32 v50, 15, v22
	v_and_b32_e32 v54, 15, v41
	v_and_b32_e32 v58, 15, v75
	v_and_b32_e32 v16, 15, v77
	v_and_b32_e32 v51, 15, v51
	v_and_b32_e32 v55, 15, v52
	v_and_b32_e32 v59, 15, v53
	v_and_b32_e32 v67, 15, v17
	v_and_b32_e32 v17, 15, v84
	v_and_b32_e32 v52, 15, v60
	v_and_b32_e32 v56, 15, v61
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v18, 15, v94
	v_and_b32_e32 v53, 15, v99
	v_and_b32_e32 v57, 15, v69
	v_and_b32_e32 v61, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v10, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v24, v6, v8, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v21
	v_and_b32_e32 v70, 15, v76
	v_and_b32_e32 v39, 15, v44
	v_and_b32_e32 v71, 15, v80
	v_and_b32_e32 v75, 15, v81
	v_and_b32_e32 v40, 15, v86
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v72, 15, v91
	v_and_b32_e32 v76, 15, v92
	v_and_b32_e32 v41, 15, v96
	v_and_b32_e32 v69, 15, v102
	v_and_b32_e32 v73, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v21, 15, v85
	v_and_b32_e32 v22, 15, v95
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v87
	v_and_b32_e32 v45, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[50:53] offset:2048
	ds_store_b128 v7, v[66:69] offset:2304
	ds_store_b128 v10, v[15:18]
	ds_store_b128 v10, v[38:41] offset:256
	ds_store_b128 v10, v[54:57] offset:2048
	ds_store_b128 v10, v[70:73] offset:2304
	ds_store_b128 v0, v[19:22]
	ds_store_b128 v0, v[42:45] offset:256
	ds_store_b128 v0, v[58:61] offset:2048
	ds_store_b128 v0, v[74:77] offset:2304
	v_xad_u32 v0, 0x4020, v24, 0
	v_xad_u32 v22, 0x8040, v24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v0 offset:128
	ds_load_b128 v[34:37], v0 offset:4096
	ds_load_b128 v[38:41], v0 offset:4224
	v_xad_u32 v0, 0xc060, v24, 0
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[46:49], v22 offset:128
	ds_load_b128 v[50:53], v22 offset:4096
	ds_load_b128 v[54:57], v22 offset:4224
	ds_load_b128 v[58:61], v0 offset:4096
	ds_load_b128 v[62:65], v0
	ds_load_b128 v[66:69], v0 offset:128
	ds_load_b128 v[70:73], v0 offset:4224
	v_add_nc_u32_e32 v18, 0, v24
	ds_load_b128 v[6:9], v18
	ds_load_b128 v[10:13], v18 offset:128
	ds_load_b128 v[14:17], v18 offset:4096
	ds_load_b128 v[18:21], v18 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v74, s60, s66, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v75, null, s67, 0, s60
	v_add_co_u32 v76, s60, s66, v110
	v_add_co_ci_u32_e64 v77, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[74:75]
	v_cmp_le_i64_e64 s63, s[64:65], v[76:77]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[74:75]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v74, v34, 4, v26
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 34, v3
	v_lshl_or_b32 v0, s75, 7, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v71, v36, 4, v28
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 36, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v72, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 38, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[72:73], v[76:77]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v50, 4, v42
	v_lshl_or_b32 v50, v58, 4, v62
	v_lshl_or_b32 v62, v38, 4, v30
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 40, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v70, 4, v66
	v_lshl_or_b32 v70, v35, 4, v27
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v63, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[26:27], null, v26, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v24, v14, 4, v6
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[27:28], null, v28, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v16, 4, v8
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 48, v3
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v58, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	v_add_nc_u32_e32 v35, 50, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 52, v3
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v15, 4, v7
	v_lshl_or_b32 v60, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v16, 20, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v18, 24, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v65, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v22, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v65, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v24, v22, s[64:67], 0 offen
	buffer_store_b8 v74, v0, s[64:67], 0 offen
	buffer_store_b8 v42, v4, s[64:67], 0 offen
	buffer_store_b8 v50, v6, s[64:67], 0 offen
	buffer_store_b8 v58, v7, s[64:67], 0 offen
	buffer_store_b8 v62, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v25.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v23.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v46, v0, s[64:67], 0 offen
	buffer_store_b8 v54, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v70, v7, s[64:67], 0 offen
	buffer_store_b8 v43, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v0, s[64:67], 0 offen
	buffer_store_b8 v59, v4, s[64:67], 0 offen
	buffer_store_b8 v63, v6, s[64:67], 0 offen
	buffer_store_b8 v47, v7, s[64:67], 0 offen
	buffer_store_b8 v55, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v67, v0, s[64:67], 0 offen
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v44, v6, s[64:67], 0 offen
	buffer_store_b8 v52, v7, s[64:67], 0 offen
	buffer_store_b8 v60, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v64, v0, s[64:67], 0 offen
	buffer_store_b8 v48, v4, s[64:67], 0 offen
	buffer_store_b8 v56, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v45, v0, s[64:67], 0 offen
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v41, v7, s[64:67], 0 offen
	buffer_store_b8 v49, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v105
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v106
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v105
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp78:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 628
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
		.amdhsa_next_free_sgpr 76
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 628
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36492
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 628
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
    .private_segment_fixed_size: 628
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 156
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
