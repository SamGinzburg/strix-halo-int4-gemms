	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v102, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v106, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v102
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s6, s7
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
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v213, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v102
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow747
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v104, 15, v102
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v105, 0xf0, v102
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v103, 0xc0, v102
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v208, 0
	v_mov_b32_e32 v199, 0
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v205, 0
	v_mov_b32_e32 v207, 0
	v_mov_b32_e32 v209, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s42, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v66, 1, v102
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s2, s4
	s_addc_u32 s7, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v104
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v70, 24, v66
	v_lshrrev_b32_e32 v46, 1, v102
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v189, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v2, v1, s40
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v41, 3, v103
	v_lshl_or_b32 v62, v104, 5, v70
	v_xor_b32_e32 v46, v66, v46
	s_clause 0x1
	s_load_b32 s43, s[0:1], 0x58
	s_load_b32 s44, s[0:1], 0x50
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[6:7], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:376
	scratch_store_b32 off, v41, off offset:372
	scratch_store_b32 off, v102, off offset:368
	v_add_nc_u32_e32 v2, 16, v1
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v46, 24, v46
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v3, 5, v102
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v4, 32, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, v2, s40
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s3, s41, 8
	v_xor_b32_e32 v70, v46, v41
	v_bfe_i32 v46, v102, 7, 1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s40
	.loc	1 1045 36                       ; ragged.py:1045:36
	scratch_store_b32 off, v2, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v2, s3, v3
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v3, v4, s40
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v76, 0x7f, v102
	v_dual_mov_b32 v157, 0 :: v_dual_and_b32 v46, 0x88, v46
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s45, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s43, s45
	v_xor_b32_e32 v46, v46, v76
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v3, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v3, 0xe0, v102
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s26, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v63, 8, v2
	v_xor_b32_e32 v71, 8, v62
	v_xor_b32_e32 v72, 16, v62
	v_xor_b32_e32 v73, 24, v62
	v_xor_b32_e32 v41, 0x208, v62
	v_xor_b32_e32 v74, 0x218, v62
	v_xor_b32_e32 v77, 0x210, v62
	v_xor_b32_e32 v91, 0x410, v62
	v_xor_b32_e32 v79, 0x418, v62
	v_xor_b32_e32 v80, 0x408, v62
	v_lshl_or_b32 v76, v3, 4, v62
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, 0xf8, v2
	v_xor_b32_e32 v3, 0x618, v62
	v_xor_b32_e32 v67, 0x610, v62
	v_xor_b32_e32 v81, 0x608, v62
	v_mad_u64_u32 v[92:93], null, v2, s43, s[26:27]
	scratch_store_b32 off, v62, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v62, s3, v102
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[5:6]
	v_cmp_le_i64_e64 s2, s[38:39], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[5:6]
	v_cmp_gt_i64_e64 s6, s[36:37], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xf0, v2
	v_or_b32_e32 v5, 0xe8, v2
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v6, s33, v1
	v_or_b32_e32 v7, 0xe0, v2
	v_or_b32_e32 v8, 0xd8, v2
	v_or_b32_e32 v11, 0xd0, v2
	v_or_b32_e32 v14, 0xc8, v2
	v_or_b32_e32 v15, 0xc0, v2
	v_or_b32_e32 v17, 0xb8, v2
	v_or_b32_e32 v18, 0xb0, v2
	v_or_b32_e32 v21, 0xa8, v2
	v_or_b32_e32 v24, 0xa0, v2
	v_or_b32_e32 v25, 0x98, v2
	v_or_b32_e32 v27, 0x90, v2
	v_or_b32_e32 v28, 0x88, v2
	v_or_b32_e32 v31, 0x80, v2
	v_or_b32_e32 v34, 0x78, v2
	v_or_b32_e32 v35, 0x70, v2
	v_or_b32_e32 v37, 0x68, v2
	v_or_b32_e32 v38, 0x60, v2
	v_or_b32_e32 v42, 0x58, v2
	v_or_b32_e32 v45, 0x50, v2
	v_or_b32_e32 v47, 0x48, v2
	v_or_b32_e32 v49, 64, v2
	v_or_b32_e32 v50, 56, v2
	v_or_b32_e32 v53, 48, v2
	v_or_b32_e32 v56, 40, v2
	v_or_b32_e32 v57, 32, v2
	v_or_b32_e32 v59, 24, v2
	v_or_b32_e32 v60, 16, v2
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v68, s33, v63
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v75, s33, v2
	scratch_store_b32 off, v46, off offset:396 ; 4-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s43, v1, s[26:27]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v62, off offset:404
	scratch_store_b32 off, v103, off offset:1004
	v_mad_u64_u32 v[62:63], null, s43, v63, s[26:27]
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v64, s33, v59
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v65, s33, v60
	scratch_store_b32 off, v76, off offset:400 ; 4-byte Folded Spill
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v61, s33, v56
	scratch_store_b64 off, v[62:63], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[62:63], null, s43, v60, s[26:27]
	v_mad_u64_u32 v[59:60], null, s43, v59, s[26:27]
	v_add_nc_u32_e32 v78, s33, v57
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[92:93], off offset:408
	scratch_store_b64 off, v[1:2], off offset:656
	v_mov_b32_e32 v92, 0
	scratch_store_b64 off, v[62:63], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v75, s43, s[26:27]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[59:60], off offset:432
	scratch_store_b32 off, v104, off offset:1008
	v_mad_u64_u32 v[59:60], null, s43, v57, s[26:27]
	v_mad_u64_u32 v[56:57], null, s43, v56, s[26:27]
	scratch_store_b64 off, v[1:2], off offset:664 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v68, s43, s[26:27]
	v_add_nc_u32_e32 v69, 0, v0
	scratch_store_b64 off, v[59:60], off offset:440 ; 8-byte Folded Spill
	v_lshl_add_u32 v0, v0, 5, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[56:57], off offset:448
	scratch_store_b32 off, v105, off offset:1012
	v_mad_u64_u32 v[56:57], null, s43, v53, s[26:27]
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v54, s33, v49
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v55, s33, v50
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v0, v0, v70
	scratch_store_b64 off, v[56:57], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[56:57], null, s43, v50, s[26:27]
	v_mad_u64_u32 v[49:50], null, s43, v49, s[26:27]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[1:2], off offset:672
	scratch_store_b32 off, v0, off offset:680
	v_mad_u64_u32 v[0:1], null, v65, s43, s[26:27]
	scratch_store_b64 off, v[56:57], off offset:464 ; 8-byte Folded Spill
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v86, 3, v103
	scratch_store_b64 off, v[49:50], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[49:50], null, s43, v47, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:684 ; 8-byte Folded Spill
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v0, v69, v86
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v87, 5, v102
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v90, 2, v105
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[49:50], off offset:480
	scratch_store_b32 off, v0, off offset:692
	v_mad_u64_u32 v[49:50], null, s43, v45, s[26:27]
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v87, 32, v87
	v_mad_u64_u32 v[0:1], null, v64, s43, s[26:27]
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v66, 28, v66
	scratch_store_b64 off, v[49:50], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[49:50], null, s43, v42, s[26:27]
	v_add3_u32 v87, 0, v90, v87
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v43, s33, v37
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v44, s33, v38
	scratch_store_b64 off, v[0:1], off offset:696 ; 8-byte Folded Spill
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v0, v87, v66
	scratch_store_b64 off, v[49:50], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[49:50], null, s43, v38, s[26:27]
	v_mad_u64_u32 v[37:38], null, s43, v37, s[26:27]
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v39, s33, v34
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v40, s33, v35
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[49:50], off offset:504
	scratch_store_b32 off, v0, off offset:704
	v_mad_u64_u32 v[0:1], null, v78, s43, s[26:27]
	scratch_store_b64 off, v[37:38], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[37:38], null, s43, v35, s[26:27]
	v_mad_u64_u32 v[34:35], null, s43, v34, s[26:27]
	v_mov_b32_e32 v187, 0
	scratch_store_b64 off, v[0:1], off offset:708 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v32, s33, v27
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[37:38], off offset:520
	scratch_store_b64 off, v[34:35], off offset:528
	scratch_store_b32 off, v0, off offset:716
	v_mad_u64_u32 v[34:35], null, s43, v31, s[26:27]
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v33, s33, v28
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v0, 0, v72
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v29, s33, v24
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[34:35], off offset:536
	scratch_store_b32 off, v0, off offset:720
	v_mad_u64_u32 v[34:35], null, s43, v28, s[26:27]
	v_mad_u64_u32 v[27:28], null, s43, v27, s[26:27]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v30, s33, v25
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v0, 0, v73
	scratch_store_b64 off, v[34:35], off offset:544 ; 8-byte Folded Spill
	v_mov_b32_e32 v111, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[27:28], off offset:552
	scratch_store_b32 off, v0, off offset:724
	v_mad_u64_u32 v[27:28], null, s43, v25, s[26:27]
	v_mad_u64_u32 v[24:25], null, s43, v24, s[26:27]
	v_add_nc_u32_e32 v0, 0, v41
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v22, s33, v17
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v23, s33, v18
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[27:28], off offset:560
	scratch_store_b64 off, v[24:25], off offset:568
	scratch_store_b32 off, v0, off offset:728
	v_mad_u64_u32 v[24:25], null, s43, v21, s[26:27]
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v0, 0, v74
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v19, s33, v14
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v20, s33, v15
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[24:25], off offset:576
	scratch_store_b32 off, v0, off offset:732
	v_mad_u64_u32 v[24:25], null, s43, v18, s[26:27]
	v_mad_u64_u32 v[17:18], null, s43, v17, s[26:27]
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v0, 0, v77
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v12, s33, v7
	v_mov_b32_e32 v185, 0
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[24:25], off offset:584
	scratch_store_b64 off, v[17:18], off offset:592
	scratch_store_b32 off, v0, off offset:736
	v_mad_u64_u32 v[17:18], null, s43, v15, s[26:27]
	v_mad_u64_u32 v[14:15], null, s43, v14, s[26:27]
	v_add_nc_u32_e32 v0, 0, v91
	v_add_nc_u32_e32 v13, s33, v8
	v_mov_b32_e32 v163, 0
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v9, s33, v4
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[17:18], off offset:600
	scratch_store_b64 off, v[14:15], off offset:608
	scratch_store_b32 off, v0, off offset:740
	v_mad_u64_u32 v[14:15], null, s43, v11, s[26:27]
	v_add_nc_u32_e32 v0, 0, v79
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v10, s33, v5
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v161, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:744
	scratch_store_b64 off, v[14:15], off offset:616
	v_mad_u64_u32 v[14:15], null, s43, v8, s[26:27]
	v_mad_u64_u32 v[7:8], null, s43, v7, s[26:27]
	v_add_nc_u32_e32 v0, 0, v80
	v_xor_b32_e32 v83, 8, v76
	v_mov_b32_e32 v113, 0
	v_xor_b32_e32 v84, 16, v76
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:624
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b64 off, v[7:8], off offset:632
	v_mad_u64_u32 v[7:8], null, s43, v5, s[26:27]
	v_mad_u64_u32 v[4:5], null, s43, v4, s[26:27]
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_xor_b32_e32 v85, 24, v76
	v_mov_b32_e32 v253, 0
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:640
	scratch_store_b32 off, v0, off offset:752
	scratch_store_b64 off, v[4:5], off offset:648
	v_add_nc_u32_e32 v0, 0, v67
	v_or_b32_e32 v88, 0x3f0, v102
	v_mov_b32_e32 v255, 0
	v_or_b32_e32 v89, 0x7f0, v102
	v_mov_b32_e32 v153, 0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v81
	v_dual_mov_b32 v173, 0 :: v_dual_lshlrev_b32 v90, 1, v105
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v251, 0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v0, 0, v83
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v58, s33, v53
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v52, s33, v47
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v84
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v51, s33, v45
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v48, s33, v42
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v85
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v36, s33, v31
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v26, s33, v21
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v88
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v16, s33, v11
	v_mov_b32_e32 v84, 0
	v_xor_b32_e32 v82, 0x110, v46
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v89
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v46, 0, v104
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v71, 0, v82
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v90
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v90, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v241, 0
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s43, s[26:27]
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b64 off, v[0:1], off offset:788 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v58, s43, s[26:27]
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b64 off, v[0:1], off offset:796 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v55, s43, s[26:27]
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v247, 0
	scratch_store_b64 off, v[0:1], off offset:804 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v54, s43, s[26:27]
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b64 off, v[0:1], off offset:812 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s43, s[26:27]
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v114, 0
	scratch_store_b64 off, v[0:1], off offset:820 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s43, s[26:27]
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v170, 0
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v162, 0
	scratch_store_b64 off, v[0:1], off offset:828 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v48, s43, s[26:27]
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v252, 0
	v_mov_b32_e32 v250, 0
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v96, 0
	scratch_store_b64 off, v[0:1], off offset:836 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v44, s43, s[26:27]
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v98, 0
	scratch_store_b64 off, v[0:1], off offset:844 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s43, s[26:27]
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v248, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v108, 0
	scratch_store_b64 off, v[0:1], off offset:852 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s43, s[26:27]
	v_mov_b32_e32 v106, 0
	s_mov_b32 s4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s46, s40, s7
	s_and_b32 s21, s9, 0xffff
	scratch_store_b64 off, v[0:1], off offset:860 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s43, s[26:27]
	s_mov_b32 s20, s8
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	scratch_store_b64 off, v[0:1], off offset:868 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v36, s43, s[26:27]
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	scratch_store_b64 off, v[0:1], off offset:876 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s43, s[26:27]
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s47, s4
	scratch_store_b64 off, v[0:1], off offset:884 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:892 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:900 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:908 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v26, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:916 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:924 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:932 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:940 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:948 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v16, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:956 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:964 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:972 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:980 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:988 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v6, s43, s[26:27]
	scratch_store_b64 off, v[0:1], off offset:996 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s47, 5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v141, off offset:192
	scratch_store_b32 off, v133, off offset:188
	scratch_store_b32 off, v183, off offset:184
	scratch_store_b32 off, v182, off offset:180
	scratch_store_b32 off, v185, off offset:176
	scratch_store_b32 off, v84, off offset:172
	scratch_store_b32 off, v179, off offset:168
	scratch_store_b32 off, v178, off offset:164
	scratch_store_b32 off, v117, off offset:160
	scratch_store_b32 off, v116, off offset:156
	scratch_store_b32 off, v115, off offset:152
	scratch_store_b32 off, v114, off offset:148
	scratch_store_b32 off, v111, off offset:144
	scratch_store_b32 off, v113, off offset:140
	scratch_store_b32 off, v112, off offset:136
	scratch_store_b32 off, v97, off offset:132
	scratch_store_b32 off, v110, off offset:128
	scratch_store_b32 off, v92, off offset:124
	scratch_store_b32 off, v91, off offset:120
	scratch_store_b32 off, v101, off offset:116
	scratch_store_b32 off, v90, off offset:112
	scratch_store_b32 off, v128, off offset:108
	scratch_store_b32 off, v127, off offset:104
	scratch_store_b32 off, v126, off offset:100
	scratch_store_b32 off, v96, off offset:96
	scratch_store_b32 off, v95, off offset:92
	scratch_store_b32 off, v94, off offset:88
	scratch_store_b32 off, v89, off offset:84
	scratch_store_b32 off, v124, off offset:80
	scratch_store_b32 off, v120, off offset:76
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v119, off offset:72
	scratch_store_b32 off, v118, off offset:68
	scratch_store_b32 off, v100, off offset:64
	scratch_store_b32 off, v99, off offset:60
	scratch_store_b32 off, v98, off offset:56
	scratch_store_b32 off, v129, off offset:52
	scratch_store_b32 off, v93, off offset:48
	scratch_store_b32 off, v125, off offset:44
	scratch_store_b32 off, v123, off offset:40
	scratch_store_b32 off, v122, off offset:36
	scratch_store_b32 off, v121, off offset:32
	scratch_store_b32 off, v88, off offset:28
	scratch_store_b32 off, v87, off offset:24
	scratch_store_b32 off, v86, off offset:20
	scratch_store_b32 off, v85, off offset:16
	scratch_store_b32 off, v109, off offset:12
	scratch_store_b32 off, v108, off offset:8
	scratch_store_b32 off, v107, off offset:4
	scratch_store_b32 off, v106, off
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s23
	v_mov_b32_e32 v52, v83
	v_mov_b32_e32 v76, v162
	v_mov_b32_e32 v78, v163
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v2, s14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[0:1], null, v2, s44, v[213:214]
	v_cmp_gt_i32_e64 s3, s43, v2
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v3, 0x80000000, v0, s3
	v_or_b32_e32 v0, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v4, 0x80000000, v0, s3
	v_or_b32_e32 v0, 2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v5, 0x80000000, v0, s3
	v_or_b32_e32 v0, 3, v2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v54, v3, s[20:23], 0 offen
	buffer_load_u8 v55, v4, s[20:23], 0 offen
	buffer_load_u8 v56, v5, s[20:23], 0 offen
	scratch_load_b64 v[3:4], off, off offset:408 ; 8-byte Folded Reload
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v6, 0x80000000, v0, s3
	v_or_b32_e32 v0, 4, v2
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v0, s3
	v_or_b32_e32 v0, 5, v2
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v8, 0x80000000, v0, s3
	v_or_b32_e32 v0, 7, v2
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v0, s3
	v_or_b32_e32 v0, 6, v2
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[213:214]
	s_and_b32 s3, s42, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_clause 0x4
	buffer_load_u8 v72, v8, s[20:23], 0 offen
	buffer_load_u8 v73, v9, s[20:23], 0 offen
	buffer_load_u8 v44, v0, s[20:23], 0 offen
	buffer_load_u8 v77, v7, s[20:23], 0 offen
	buffer_load_u8 v53, v6, s[20:23], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v72.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v0.h, 8, v73.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v2.l, v77.l, v0.l
	v_lshlrev_b16 v0.l, 8, v55.l
	v_or_b16 v2.h, v44.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v54.l, v0.l
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v53.l
	v_or_b16 v1.h, v56.l, v0.l
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v0, 31, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b32_e32 v79, s14, v0
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s22
	v_add_nc_u32_e32 v0, v3, v79
	s_clause 0x1e                           ; 248-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:416
	scratch_load_b64 v[4:5], off, off offset:424
	scratch_load_b64 v[5:6], off, off offset:432
	scratch_load_b64 v[6:7], off, off offset:440
	scratch_load_b64 v[7:8], off, off offset:448
	scratch_load_b64 v[8:9], off, off offset:456
	scratch_load_b64 v[9:10], off, off offset:464
	scratch_load_b64 v[10:11], off, off offset:472
	scratch_load_b64 v[11:12], off, off offset:480
	scratch_load_b64 v[12:13], off, off offset:488
	scratch_load_b64 v[13:14], off, off offset:496
	scratch_load_b64 v[14:15], off, off offset:504
	scratch_load_b64 v[15:16], off, off offset:512
	scratch_load_b64 v[16:17], off, off offset:520
	scratch_load_b64 v[17:18], off, off offset:528
	scratch_load_b64 v[18:19], off, off offset:536
	scratch_load_b64 v[19:20], off, off offset:544
	scratch_load_b64 v[20:21], off, off offset:552
	scratch_load_b64 v[21:22], off, off offset:560
	scratch_load_b64 v[22:23], off, off offset:568
	scratch_load_b64 v[23:24], off, off offset:576
	scratch_load_b64 v[24:25], off, off offset:584
	scratch_load_b64 v[25:26], off, off offset:592
	scratch_load_b64 v[26:27], off, off offset:600
	scratch_load_b64 v[27:28], off, off offset:608
	scratch_load_b64 v[28:29], off, off offset:616
	scratch_load_b64 v[29:30], off, off offset:624
	scratch_load_b64 v[30:31], off, off offset:632
	scratch_load_b64 v[31:32], off, off offset:640
	scratch_load_b64 v[32:33], off, off offset:648
	scratch_load_b64 v[33:34], off, off offset:656
	v_cmp_gt_i32_e64 s3, s43, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v3, v3, v79
	s_waitcnt vmcnt(29)
	v_add_nc_u32_e32 v4, v4, v79
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v5, v5, v79
	s_waitcnt vmcnt(27)
	v_add_nc_u32_e32 v6, v6, v79
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v7, v7, v79
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v8, v8, v79
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v9, v9, v79
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v10, v10, v79
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v11, v11, v79
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v12, v12, v79
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v13, v13, v79
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v14, v14, v79
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v15, v15, v79
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v16, v16, v79
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v17, v17, v79
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v18, v18, v79
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v19, v19, v79
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v20, v20, v79
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v21, v21, v79
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v22, v22, v79
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v23, v23, v79
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v24, v24, v79
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v25, v25, v79
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v26, v26, v79
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v27, v27, v79
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v28, v28, v79
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v29, v29, v79
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v30, v30, v79
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v31, v31, v79
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v32, v32, v79
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v79
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	v_cndmask_b32_e64 v30, 0x80000000, v30, s3
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v34, v18, s[24:27], 0 offen
	buffer_load_u8 v35, v20, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v32, v32, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v36, v17, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v45, v19, s[24:27], 0 offen
	buffer_load_u8 v33, v33, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:392
	scratch_load_b32 v2, off, off offset:716
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt vmcnt(0)
	ds_load_b64 v[124:125], v2
	scratch_load_b32 v2, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[126:127], v2
	scratch_load_b32 v2, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[128:129], v2
	scratch_load_b32 v2, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[122:123], v2
	scratch_load_b32 v2, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[118:119], v2
	scratch_load_b32 v2, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[120:121], v2
	scratch_load_b32 v2, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[108:109], v2
	scratch_load_b32 v2, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[110:111], v2
	scratch_load_b32 v2, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[106:107], v2
	scratch_load_b32 v2, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[114:115], v2
	scratch_load_b32 v2, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[116:117], v2
	scratch_load_b32 v2, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[112:113], v2
	ds_load_2addr_stride64_b64 v[37:40], v1 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v1 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, 0, v1
	ds_store_b8 v70, v0
	ds_store_b8 v70, v4 offset:512
	ds_store_b8 v70, v6 offset:1024
	ds_store_b8 v70, v8 offset:1536
	ds_store_b8 v70, v10 offset:2048
	ds_store_b8 v70, v12 offset:2560
	ds_store_b8 v70, v14 offset:3072
	ds_store_b8 v70, v16 offset:3584
	ds_store_b8 v70, v34 offset:4096
	ds_store_b8 v70, v35 offset:4608
	ds_store_b8 v70, v22 offset:5120
	ds_store_b8 v70, v24 offset:5632
	ds_store_b8 v70, v26 offset:6144
	ds_store_b8 v70, v28 offset:6656
	ds_store_b8 v70, v30 offset:7168
	ds_store_b8 v70, v32 offset:7680
	ds_store_b8 v71, v3
	ds_store_b8 v71, v5 offset:512
	ds_store_b8 v71, v7 offset:1024
	ds_store_b8 v71, v9 offset:1536
	ds_store_b8 v71, v11 offset:2048
	ds_store_b8 v71, v13 offset:2560
	ds_store_b8 v71, v15 offset:3072
	ds_store_b8 v71, v36 offset:3584
	ds_store_b8 v71, v45 offset:4096
	ds_store_b8 v71, v21 offset:4608
	ds_store_b8 v71, v23 offset:5120
	ds_store_b8 v71, v25 offset:5632
	ds_store_b8 v71, v27 offset:6144
	ds_store_b8 v71, v29 offset:6656
	ds_store_b8 v71, v31 offset:7168
	ds_store_b8 v71, v33 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:400
	scratch_load_b32 v152, off, off offset:764
	scratch_load_b32 v48, off, off offset:768
	scratch_load_b32 v51, off, off offset:772
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[25:28], v152 offset1:8
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[29:32], v48 offset1:8
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[33:36], v51 offset1:8
	ds_load_2addr_stride64_b64 v[21:24], v0 offset1:8
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[23:24], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[23:24], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[124:125], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[27:28], v[124:125], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[23:24], v[114:115], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[27:28], v[110:111], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[126:127], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[31:32], v[126:127], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[27:28], v[116:117], v[89:96] neg_lo:[1,1,0]
	v_mov_b32_e32 v37, v145
	v_wmma_i32_16x16x16_iu4 v[97:104], v[31:32], v[17:18], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[128:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[35:36], v[128:129], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[31:32], v[112:113], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[35:36], v[106:107], v[97:104] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v0, v10
	scratch_load_b64 v[9:10], off, off offset:664 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[89:96], v[35:36], v[19:20], v[89:96] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	v_mov_b32_e32 v11, v213
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v81
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v86
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v87
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v88
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v82
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v83
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v84
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[21:22], v[122:123], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[81:88], v[25:26], v[39:40], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[29:30], v[118:119], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[33:34], v[120:121], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v87
	v_cvt_f32_i32_e32 v124, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v125, v82
	v_cvt_f32_i32_e32 v126, v83
	v_cvt_f32_i32_e32 v129, v84
	v_cvt_f32_i32_e32 v128, v85
	v_cvt_f32_i32_e32 v127, v86
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v88
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[23:24], v[122:123], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[81:88], v[27:28], v[39:40], v[81:88] neg_lo:[1,1,0]
	v_dual_mov_b32 v40, v136 :: v_dual_mov_b32 v39, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[31:32], v[118:119], v[81:88] neg_lo:[1,1,0]
	v_mov_b32_e32 v32, v43
	v_mov_b32_e32 v43, v155
	v_wmma_i32_16x16x16_iu4 v[81:88], v[35:36], v[120:121], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v81
	v_cvt_f32_i32_e32 v120, v82
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v86
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v87
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v88
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v83
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v84
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[21:22], v[108:109], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v97
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[25:26], v[110:111], v[81:88] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v102
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[29:30], v[17:18], v[81:88] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v103
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[33:34], v[106:107], v[81:88] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v104
	v_cvt_f32_i32_e32 v57, v81
	v_cvt_f32_i32_e32 v60, v82
	v_cvt_f32_i32_e32 v61, v83
	v_cvt_f32_i32_e32 v118, v84
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v98
	v_cvt_f32_i32_e32 v119, v85
	v_cvt_f32_i32_e32 v123, v86
	v_cvt_f32_i32_e32 v122, v87
	v_cvt_f32_i32_e32 v121, v88
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v99
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[21:22], v[114:115], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v100
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[25:26], v[116:117], v[81:88] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v101
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[29:30], v[112:113], v[81:88] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v89
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[33:34], v[19:20], v[81:88] neg_lo:[1,1,0]
	v_mov_b32_e32 v33, v42
	v_mov_b32_e32 v42, v130
	v_mov_b32_e32 v130, v131
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v94
	v_cvt_f32_i32_e32 v109, v81
	v_cvt_f32_i32_e32 v108, v82
	v_cvt_f32_i32_e32 v107, v83
	v_cvt_f32_i32_e32 v106, v84
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v95
	v_cvt_f32_i32_e32 v36, v85
	v_cvt_f32_i32_e32 v35, v86
	v_cvt_f32_i32_e32 v58, v87
	v_cvt_f32_i32_e32 v59, v88
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v96
	v_dual_mov_b32 v131, v132 :: v_dual_mov_b32 v132, v154
	v_mov_b32_e32 v34, v143
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v90
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v91
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v92
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v93
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v9, v79
	scratch_load_b64 v[9:10], off, off offset:672 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, v9, v79
	scratch_load_b64 v[9:10], off, off offset:684 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, v9, v79
	scratch_load_b64 v[9:10], off, off offset:696 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, v9, v79
	scratch_load_b64 v[9:10], off, off offset:708 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, v9, v79
	scratch_load_b64 v[9:10], off, off offset:788 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v64, 0x80000000, v64, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, v9, v79
	scratch_load_b64 v[9:10], off, off offset:796 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, v9, v79
	scratch_load_b64 v[9:10], off, off offset:804 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, v9, v79
	scratch_load_b64 v[9:10], off, off offset:812 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v81, 0x80000000, v81, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v82, v9, v79
	scratch_load_b64 v[9:10], off, off offset:820 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v82, 0x80000000, v82, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v83, v9, v79
	scratch_load_b64 v[9:10], off, off offset:828 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v83, 0x80000000, v83, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v84, v9, v79
	scratch_load_b64 v[9:10], off, off offset:836 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, v9, v79
	scratch_load_b64 v[9:10], off, off offset:844 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v85, 0x80000000, v85, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v86, v9, v79
	scratch_load_b64 v[9:10], off, off offset:852 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v86, 0x80000000, v86, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v87, v9, v79
	scratch_load_b64 v[9:10], off, off offset:860 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v87, 0x80000000, v87, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, v9, v79
	scratch_load_b64 v[9:10], off, off offset:868 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v88, 0x80000000, v88, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v89, v9, v79
	scratch_load_b64 v[9:10], off, off offset:876 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v89, 0x80000000, v89, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v90, v9, v79
	scratch_load_b64 v[9:10], off, off offset:884 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v90, 0x80000000, v90, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, v9, v79
	scratch_load_b64 v[9:10], off, off offset:892 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v91, 0x80000000, v91, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v92, v9, v79
	scratch_load_b64 v[9:10], off, off offset:900 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v92, 0x80000000, v92, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v93, v9, v79
	scratch_load_b64 v[9:10], off, off offset:908 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v93, 0x80000000, v93, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v94, v9, v79
	scratch_load_b64 v[9:10], off, off offset:916 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v94, 0x80000000, v94, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, v9, v79
	scratch_load_b64 v[9:10], off, off offset:924 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, v9, v79
	scratch_load_b64 v[9:10], off, off offset:932 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, v9, v79
	scratch_load_b64 v[9:10], off, off offset:940 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v97, 0x80000000, v97, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, v9, v79
	scratch_load_b64 v[9:10], off, off offset:948 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, v9, v79
	scratch_load_b64 v[9:10], off, off offset:956 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v99, 0x80000000, v99, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, v9, v79
	scratch_load_b64 v[9:10], off, off offset:964 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v100, 0x80000000, v100, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, v9, v79
	scratch_load_b64 v[9:10], off, off offset:972 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v101, 0x80000000, v101, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, v9, v79
	scratch_load_b64 v[9:10], off, off offset:980 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v102, 0x80000000, v102, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, v9, v79
	scratch_load_b64 v[9:10], off, off offset:988 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v103, 0x80000000, v103, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, v9, v79
	scratch_load_b64 v[9:10], off, off offset:996 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v104, 0x80000000, v104, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, v9, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v240, v45, s[24:27], 0 offen
	buffer_load_u8 v47, v47, s[24:27], 0 offen
	buffer_load_u8 v50, v50, s[24:27], 0 offen
	buffer_load_u8 v110, v64, s[24:27], 0 offen
	buffer_load_u8 v67, v65, s[24:27], 0 offen
	buffer_load_u8 v228, v66, s[24:27], 0 offen
	buffer_load_u8 v81, v81, s[24:27], 0 offen
	buffer_load_u8 v82, v82, s[24:27], 0 offen
	buffer_load_u8 v83, v83, s[24:27], 0 offen
	buffer_load_u8 v84, v84, s[24:27], 0 offen
	buffer_load_u8 v68, v85, s[24:27], 0 offen
	buffer_load_u8 v86, v86, s[24:27], 0 offen
	buffer_load_u8 v74, v87, s[24:27], 0 offen
	buffer_load_u8 v88, v88, s[24:27], 0 offen
	buffer_load_u8 v75, v89, s[24:27], 0 offen
	buffer_load_u8 v90, v90, s[24:27], 0 offen
	buffer_load_u8 v91, v91, s[24:27], 0 offen
	buffer_load_u8 v92, v92, s[24:27], 0 offen
	buffer_load_u8 v93, v93, s[24:27], 0 offen
	buffer_load_u8 v94, v94, s[24:27], 0 offen
	buffer_load_u8 v95, v95, s[24:27], 0 offen
	buffer_load_u8 v96, v96, s[24:27], 0 offen
	buffer_load_u8 v97, v97, s[24:27], 0 offen
	buffer_load_u8 v98, v98, s[24:27], 0 offen
	buffer_load_u8 v99, v99, s[24:27], 0 offen
	buffer_load_u8 v100, v100, s[24:27], 0 offen
	buffer_load_u8 v227, v101, s[24:27], 0 offen
	buffer_load_u8 v243, v102, s[24:27], 0 offen
	buffer_load_u8 v242, v103, s[24:27], 0 offen
	buffer_load_u8 v254, v104, s[24:27], 0 offen
	buffer_load_u8 v79, v79, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s47, s46
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v9, v54
	ds_store_b8 v9, v55 offset:64
	ds_store_b8 v9, v56 offset:128
	ds_store_b8 v9, v53 offset:192
	ds_store_b8 v9, v77 offset:256
	ds_store_b8 v9, v72 offset:320
	ds_store_b8 v9, v44 offset:384
	ds_store_b8 v9, v73 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v9, off, off offset:776 ; 4-byte Folded Reload
	ds_load_u8 v143, v46 offset:32
	ds_load_u8 v154, v46 offset:48
	ds_load_u8 v155, v46 offset:160
	ds_load_u8 v162, v46 offset:240
	ds_load_u8 v163, v46 offset:176
	ds_load_u8 v44, v46 offset:320
	ds_load_u8 v45, v46 offset:256
	ds_load_u8 v72, v46 offset:336
	ds_load_u8 v73, v46 offset:272
	ds_load_u8 v115, v46 offset:352
	ds_load_u8 v116, v46 offset:288
	ds_load_u8 v145, v46 offset:368
	ds_load_u8 v146, v46 offset:304
	ds_load_u8 v136, v46 offset:848
	ds_load_u8 v137, v46 offset:784
	ds_load_u8 v41, v46 offset:864
	ds_load_u8 v49, v46 offset:800
	ds_load_u8 v62, v46 offset:880
	ds_load_u8 v69, v46 offset:816
	ds_load_u8 v189, v46 offset:656
	ds_load_u8 v179, v46 offset:736
	ds_load_u8 v66, v46 offset:672
	ds_load_u8 v28, v46 offset:752
	ds_load_u8 v87, v46 offset:688
	ds_load_u8 v213, v46 offset:2000
	ds_load_u8 v214, v46 offset:2016
	ds_load_u8 v217, v46 offset:1168
	ds_load_u8 v218, v46 offset:1184
	ds_load_u8 v219, v46 offset:1040
	ds_load_u8 v229, v46 offset:1056
	ds_load_u8 v220, v46 offset:1424
	ds_load_u8 v230, v46 offset:1440
	ds_load_u8 v231, v46 offset:1296
	ds_load_u8 v232, v46 offset:1312
	ds_load_u8 v233, v46 offset:1680
	ds_load_u8 v234, v46 offset:1696
	ds_load_u8 v235, v46 offset:1552
	ds_load_u8 v225, v46 offset:1568
	ds_load_u8 v237, v46 offset:1936
	ds_load_u8 v238, v46 offset:1952
	ds_load_u8 v239, v46 offset:1808
	ds_load_u8 v226, v46 offset:1824
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s45
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v46 offset:448
	ds_load_u8 v53, v46 offset:384
	ds_load_u8 v77, v46 offset:464
	ds_load_u8 v112, v46 offset:400
	ds_load_u8 v117, v46 offset:480
	ds_load_u8 v141, v46 offset:416
	ds_load_u8 v147, v46 offset:496
	ds_load_u8 v148, v46 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v53, v45, 0xc0c0004
	ds_load_u8 v53, v46 offset:64
	ds_load_u8 v54, v46
	ds_load_u8 v113, v46 offset:80
	ds_load_u8 v142, v46 offset:96
	ds_load_u8 v149, v46 offset:112
	ds_load_u8 v133, v46 offset:16
	v_lshl_or_b32 v45, v45, 16, v44
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v46 offset:192
	ds_load_u8 v55, v46 offset:128
	ds_load_u8 v134, v46 offset:208
	ds_load_u8 v135, v46 offset:144
	ds_load_u8 v144, v46 offset:224
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v54, 16, v53
	ds_load_u8 v53, v46 offset:832
	ds_load_u8 v54, v46 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v46 offset:960
	ds_load_u8 v55, v46 offset:896
	ds_load_u8 v138, v46 offset:976
	ds_load_u8 v139, v46 offset:912
	ds_load_u8 v23, v46 offset:992
	ds_load_u8 v111, v46 offset:928
	ds_load_u8 v31, v46 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v46 offset:576
	ds_load_u8 v56, v46 offset:512
	ds_load_u8 v140, v46 offset:592
	ds_load_u8 v182, v46 offset:528
	ds_load_u8 v183, v46 offset:608
	ds_load_u8 v89, v46 offset:544
	ds_load_u8 v30, v46 offset:624
	ds_load_u8 v85, v46 offset:560
	v_lshl_or_b32 v54, v54, 16, v53
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v46 offset:704
	ds_load_u8 v64, v46 offset:640
	ds_load_u8 v178, v46 offset:720
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v56, v64, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v56, 16, v55
	ds_load_u8 v55, v46 offset:1344
	ds_load_u8 v56, v46 offset:1280
	ds_load_u8 v29, v46 offset:1264
	ds_load_u8 v185, v46 offset:1360
	ds_load_u8 v101, v46 offset:1376
	ds_load_u8 v27, v46 offset:1392
	ds_load_u8 v26, v46 offset:1328
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v46 offset:1408
	ds_load_u8 v64, v46 offset:1472
	ds_load_u8 v102, v46 offset:1488
	ds_load_u8 v20, v46 offset:1504
	ds_load_u8 v25, v46 offset:1520
	ds_load_u8 v24, v46 offset:1456
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v56, v56, v64, 0xc0c0004
	ds_load_u8 v64, v46 offset:1024
	ds_load_u8 v65, v46 offset:1088
	ds_load_u8 v105, v46 offset:1104
	ds_load_u8 v14, v46 offset:1120
	ds_load_u8 v22, v46 offset:1136
	ds_load_u8 v21, v46 offset:1072
	v_lshl_or_b32 v56, v56, 16, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v64, v65, 0xc0c0004
	ds_load_u8 v65, v46 offset:1152
	ds_load_u8 v114, v46 offset:1216
	ds_load_u8 v103, v46 offset:1232
	ds_load_u8 v12, v46 offset:1248
	ds_load_u8 v19, v46 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v65, v65, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v65, 16, v64
	ds_load_u8 v64, v46 offset:1792
	ds_load_u8 v65, v46 offset:1856
	ds_load_u8 v104, v46 offset:1872
	ds_load_u8 v13, v46 offset:1888
	ds_load_u8 v18, v46 offset:1904
	ds_load_u8 v17, v46 offset:1840
	ds_load_u8 v16, v46 offset:1776
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v64, v64, v65, 0xc0c0004
	ds_load_u8 v65, v46 offset:1920
	ds_load_u8 v114, v46 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v65, 16, v64
	s_waitcnt vmcnt(0)
	ds_load_u8 v215, v9
	scratch_load_b32 v9, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v216, v9
	ds_load_u8 v15, v46 offset:1968
	ds_load_u8 v114, v46 offset:1536
	ds_load_u8 v150, v46 offset:1600
	ds_load_u8 v63, v46 offset:1616
	ds_load_u8 v9, v46 offset:1632
	ds_load_u8 v10, v46 offset:1648
	ds_load_u8 v221, v46 offset:1584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v114, v150, 0xc0c0004
	ds_load_u8 v150, v46 offset:1664
	ds_load_u8 v151, v46 offset:1728
	ds_load_u8 v222, v46 offset:1744
	ds_load_u8 v223, v46 offset:1760
	ds_load_u8 v224, v46 offset:1712
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v70, v0
	ds_store_b8 v70, v47 offset:512
	ds_store_b8 v70, v110 offset:1024
	ds_store_b8 v70, v228 offset:1536
	ds_store_b8 v70, v82 offset:2048
	ds_store_b8 v70, v84 offset:2560
	ds_store_b8 v70, v86 offset:3072
	ds_store_b8 v70, v88 offset:3584
	ds_store_b8 v70, v90 offset:4096
	ds_store_b8 v70, v92 offset:4608
	ds_store_b8 v70, v94 offset:5120
	ds_store_b8 v70, v96 offset:5632
	ds_store_b8 v70, v98 offset:6144
	ds_store_b8 v70, v100 offset:6656
	ds_store_b8 v70, v243 offset:7168
	ds_store_b8 v70, v254 offset:7680
	ds_store_b8 v71, v240
	ds_store_b8 v71, v50 offset:512
	ds_store_b8 v71, v67 offset:1024
	ds_store_b8 v71, v81 offset:1536
	ds_store_b8 v71, v83 offset:2048
	ds_store_b8 v71, v68 offset:2560
	ds_store_b8 v71, v74 offset:3072
	ds_store_b8 v71, v75 offset:3584
	ds_store_b8 v71, v91 offset:4096
	ds_store_b8 v71, v93 offset:4608
	ds_store_b8 v71, v95 offset:5120
	ds_store_b8 v71, v97 offset:5632
	ds_store_b8 v71, v99 offset:6144
	ds_store_b8 v71, v227 offset:6656
	ds_store_b8 v71, v242 offset:7168
	ds_store_b8 v71, v79 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	v_dual_mov_b32 v74, v157 :: v_dual_mov_b32 v75, v158
	v_dual_mov_b32 v67, v159 :: v_dual_mov_b32 v242, v160
	v_dual_mov_b32 v254, v255 :: v_dual_mov_b32 v255, v153
	v_dual_mov_b32 v68, v165 :: v_dual_mov_b32 v243, v166
	v_mov_b32_e32 v240, v167
	v_mov_b32_e32 v228, v168
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v150, v150, v151, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[165:168], v48 offset1:8
	v_dual_mov_b32 v79, v173 :: v_dual_mov_b32 v110, v174
	v_mov_b32_e32 v81, v175
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v64, v150, 16, v114
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[150:153], v152 offset1:8
	v_mov_b32_e32 v83, v176
	ds_load_2addr_stride64_b64 v[173:176], v51 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v47, v133, v113, 0xc0c0004
	v_perm_b32 v50, v135, v134, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[157:160], v0 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v0, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[157:158], v[44:45], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[150:151], v[53:54], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[165:166], v[55:56], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[173:174], v[64:65], v[91:98] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v227, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v90, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v86, v96
	v_cvt_f32_i32_e32 v84, v97
	v_cvt_f32_i32_e32 v82, v98
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[159:160], v[44:45], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v45, v112, v77, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[152:153], v[53:54], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[167:168], v[55:56], v[93:100] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[175:176], v[64:65], v[93:100] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v45, 16, v0
	v_lshl_or_b32 v64, v50, 16, v47
	v_perm_b32 v0, v137, v136, 0xc0c0004
	v_perm_b32 v45, v139, v138, 0xc0c0004
	v_perm_b32 v47, v182, v140, 0xc0c0004
	v_perm_b32 v50, v189, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[133:140], v[157:158], v[64:65], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v73, v45, 16, v0
	v_perm_b32 v0, v231, v185, 0xc0c0004
	v_lshl_or_b32 v72, v50, 16, v47
	v_perm_b32 v45, v220, v102, 0xc0c0004
	v_perm_b32 v47, v219, v105, 0xc0c0004
	v_perm_b32 v50, v217, v103, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v114, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[150:151], v[72:73], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v45, 16, v0
	v_perm_b32 v0, v239, v104, 0xc0c0004
	v_lshl_or_b32 v102, v50, 16, v47
	v_perm_b32 v45, v237, v213, 0xc0c0004
	v_perm_b32 v47, v235, v63, 0xc0c0004
	v_perm_b32 v50, v233, v222, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v44, v98
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[165:166], v[102:103], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v45, 16, v0
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v53, v99
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v104, v50, 16, v47
	v_perm_b32 v47, v143, v142, 0xc0c0004
	v_perm_b32 v50, v155, v144, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v100
	v_cvt_f32_i32_e32 v38, v94
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[173:174], v[104:105], v[133:140] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v95
	v_cvt_f32_i32_e32 v56, v96
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v0, v116, v115, 0xc0c0004
	v_perm_b32 v45, v141, v117, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v189, v133
	v_cvt_f32_i32_e32 v100, v134
	v_cvt_f32_i32_e32 v99, v135
	v_cvt_f32_i32_e32 v98, v136
	v_cvt_f32_i32_e32 v96, v137
	v_cvt_f32_i32_e32 v95, v138
	v_cvt_f32_i32_e32 v94, v139
	v_cvt_f32_i32_e32 v93, v140
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[159:160], v[64:65], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v64, v50, 16, v47
	v_perm_b32 v47, v89, v183, 0xc0c0004
	v_perm_b32 v50, v66, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[152:153], v[72:73], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v45, 16, v0
	v_perm_b32 v0, v49, v41, 0xc0c0004
	v_perm_b32 v45, v111, v23, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v47
	v_perm_b32 v47, v229, v14, 0xc0c0004
	v_perm_b32 v50, v218, v12, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[133:140], v[167:168], v[102:103], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v45, 16, v0
	v_perm_b32 v0, v232, v101, 0xc0c0004
	v_perm_b32 v45, v230, v20, 0xc0c0004
	v_lshl_or_b32 v141, v50, 16, v47
	v_perm_b32 v47, v225, v9, 0xc0c0004
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v9, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[175:176], v[104:105], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v45, 16, v0
	v_perm_b32 v0, v226, v13, 0xc0c0004
	v_perm_b32 v45, v238, v214, 0xc0c0004
	v_perm_b32 v50, v234, v223, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v185, v133
	v_cvt_f32_i32_e32 v72, v138
	v_cvt_f32_i32_e32 v73, v139
	v_cvt_f32_i32_e32 v77, v140
	v_cvt_f32_i32_e32 v113, v134
	v_cvt_f32_i32_e32 v112, v135
	v_cvt_f32_i32_e32 v178, v136
	v_cvt_f32_i32_e32 v182, v137
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[157:158], v[64:65], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v45, 16, v0
	v_lshl_or_b32 v143, v50, 16, v47
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v55, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[150:151], v[115:116], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v66, v154, v149, 0xc0c0004
	v_perm_b32 v97, v163, v162, 0xc0c0004
	v_mov_b32_e32 v213, v11
	v_wmma_i32_16x16x16_iu4 v[133:140], v[165:166], v[141:142], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[173:174], v[143:144], v[133:140] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v50, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v47, v134
	v_cvt_f32_i32_e32 v0, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v136
	v_cvt_f32_i32_e32 v105, v137
	v_cvt_f32_i32_e32 v104, v138
	v_cvt_f32_i32_e32 v103, v139
	v_cvt_f32_i32_e32 v102, v140
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[133:140], v[159:160], v[64:65], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v64, v146, v145, 0xc0c0004
	v_perm_b32 v65, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[152:153], v[115:116], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[167:168], v[141:142], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[175:176], v[143:144], v[133:140] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v137
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v137, v97, 16, v66
	v_perm_b32 v66, v69, v62, 0xc0c0004
	v_perm_b32 v97, v31, v215, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v115, v138
	v_cvt_f32_i32_e32 v117, v140
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v138, v65, 16, v64
	v_perm_b32 v64, v85, v30, 0xc0c0004
	v_perm_b32 v65, v87, v28, 0xc0c0004
	v_lshl_or_b32 v140, v97, 16, v66
	v_perm_b32 v66, v21, v22, 0xc0c0004
	v_perm_b32 v97, v19, v29, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v116, v139
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v139, v65, 16, v64
	v_perm_b32 v64, v26, v27, 0xc0c0004
	v_perm_b32 v65, v24, v25, 0xc0c0004
	v_lshl_or_b32 v162, v97, 16, v66
	v_perm_b32 v66, v17, v18, 0xc0c0004
	v_perm_b32 v97, v15, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[142:149], v[157:158], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v65, 16, v64
	v_perm_b32 v65, v224, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v155, v97, 16, v66
	scratch_load_b32 v16, off, off offset:404 ; 4-byte Folded Reload
	v_perm_b32 v64, v221, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[142:149], v[150:151], v[139:140], v[142:149] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v49, v133
	v_cvt_f32_i32_e32 v89, v134
	v_cvt_f32_i32_e32 v183, v135
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v154, v65, 16, v64
	v_wmma_i32_16x16x16_iu4 v[142:149], v[165:166], v[162:163], v[142:149] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v179, v136
	v_mov_b32_e32 v158, v75
	v_dual_mov_b32 v166, v243 :: v_dual_mov_b32 v165, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[142:149], v[173:174], v[154:155], v[142:149] neg_lo:[1,1,0]
	v_dual_mov_b32 v174, v110 :: v_dual_mov_b32 v173, v79
	v_mov_b32_e32 v157, v74
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v141, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v136, v143
	v_cvt_f32_i32_e32 v135, v144
	v_cvt_f32_i32_e32 v134, v145
	v_cvt_f32_i32_e32 v133, v146
	v_cvt_f32_i32_e32 v66, v147
	v_cvt_f32_i32_e32 v65, v148
	v_cvt_f32_i32_e32 v64, v149
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[142:149], v[159:160], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v160, v242 :: v_dual_mov_b32 v159, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[152:153], v[139:140], v[142:149] neg_lo:[1,1,0]
	v_mov_b32_e32 v153, v255
	v_mov_b32_e32 v255, v254
	v_wmma_i32_16x16x16_iu4 v[142:149], v[167:168], v[162:163], v[142:149] neg_lo:[1,1,0]
	v_mov_b32_e32 v162, v76
	v_mov_b32_e32 v167, v240
	v_dual_mov_b32 v168, v228 :: v_dual_mov_b32 v163, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[175:176], v[154:155], v[142:149] neg_lo:[1,1,0]
	v_mov_b32_e32 v154, v132
	v_dual_mov_b32 v132, v131 :: v_dual_mov_b32 v131, v130
	v_mov_b32_e32 v130, v42
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v147
	v_cvt_f32_i32_e32 v2, v148
	v_cvt_f32_i32_e32 v4, v146
	v_dual_mov_b32 v176, v83 :: v_dual_mov_b32 v83, v52
	v_cvt_f32_i32_e32 v5, v142
	v_cvt_f32_i32_e32 v8, v143
	v_cvt_f32_i32_e32 v7, v144
	v_cvt_f32_i32_e32 v6, v145
	v_cvt_f32_i32_e32 v3, v149
	v_mov_b32_e32 v155, v43
	v_mov_b32_e32 v43, v32
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v97, s47, v9, 1
	scratch_load_b32 v9, off, off offset:380 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v140, v16, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v137, s47, v9, 1
	scratch_load_b32 v9, off, off offset:384 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v138, s47, v9, 1
	scratch_load_b32 v9, off, off offset:388 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v138, 0x80000000, v138, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v139, s47, v9, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s47, s47, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s47, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v140, v140, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v97, v97, s[12:15], 0 offen
	buffer_load_u16 v146, v137, s[12:15], 0 offen
	buffer_load_u16 v147, v138, s[12:15], 0 offen
	buffer_load_u16 v148, v139, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v42, v33 :: v_dual_lshlrev_b32 v137, 16, v140
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v17, v137
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:304
	scratch_load_b32 v18, off, off offset:784
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v52, v97, v9
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v97, v9
	scratch_load_b32 v9, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[137:140], v18
	ds_load_b128 v[142:145], v18 offset:16
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v175, v81 :: v_dual_fmac_f32 v188, v51, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v97, v9
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v187, v51, v140
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v51, 16, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v186, v52, v138
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v124
	scratch_load_b32 v124, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v52, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v125
	scratch_load_b32 v125, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v52, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v126
	scratch_load_b32 v126, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v52, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v129
	scratch_load_b32 v129, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v161, v52, v140 :: v_dual_lshlrev_b32 v52, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v80, v97, v80 :: v_dual_mul_f32 v57, v52, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v0
	v_mul_f32_e32 v19, v52, v41
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v241, v57, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v52, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v244, v57, v138 :: v_dual_mul_f32 v57, v52, v61
	v_dual_fmac_f32 v184, v80, v137 :: v_dual_lshlrev_b32 v61, 16, v148
	v_fmac_f32_e32 v249, v57, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v52, v118
	scratch_load_b32 v118, off, off offset:68 ; 4-byte Folded Reload
	v_mul_f32_e32 v36, v61, v36
	v_mul_f32_e32 v33, v61, v59
	v_mul_f32_e32 v35, v61, v35
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v245, v57, v140
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v61, v109
	scratch_load_b32 v109, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v4, v61, v4 :: v_dual_mul_f32 v3, v3, v61
	v_mul_f32_e32 v2, v2, v61
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v129, v57, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v61, v108
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v246, v57, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v61, v107
	scratch_load_b32 v107, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v248, v57, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v61, v106
	scratch_load_b32 v106, off, off         ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v247, v57, v140
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v97, v9
	scratch_load_b32 v9, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v97, v9
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v173, v48, v143 :: v_dual_mul_f32 v48, v97, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v48, v144
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v97, v9
	scratch_load_b32 v9, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v175, v48, v145 :: v_dual_mul_f32 v48, v51, v128
	scratch_load_b32 v128, off, off offset:108 ; 4-byte Folded Reload
	v_fmac_f32_e32 v154, v48, v142
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v51, v127
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v48, v143
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v48, v51, v9
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v131, v48, v144 :: v_dual_mul_f32 v48, v51, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:248
	scratch_load_b32 v127, off, off offset:104
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v48, v145
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v52, v119
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v48, v142
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v52, v123
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v172, v57, v142
	scratch_load_b32 v123, off, off offset:40 ; 4-byte Folded Reload
	v_fmac_f32_e32 v125, v33, v145
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v127, v48, v143
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v52, v122
	scratch_load_b32 v122, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v48, v144
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v52, v121
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v121, off, off offset:32
	scratch_load_b32 v108, off, off offset:8
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v122, v35, v143 :: v_dual_mov_b32 v143, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v61, v58
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v121, v36, v142
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v123, v34, v144
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[33:36], v18 offset:512
	ds_load_b128 v[57:60], v18 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v48, v145
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v9, v97
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	v_mov_b32_e32 v145, v37
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v15, v97, v9
	scratch_load_b32 v9, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_fmac_f32 v167, v15, v34 :: v_dual_mul_f32 v14, v97, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v97, v9
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v13, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v9, v51
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v205, v13, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v51, v120
	scratch_load_b32 v120, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v252, v13, v34 :: v_dual_mul_f32 v13, v51, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:264
	scratch_load_b32 v119, off, off offset:72
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v253, v13, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v51, v9
	scratch_load_b32 v9, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v255, v13, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v9, v52
	scratch_load_b32 v9, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v201, v13, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v52, v9
	scratch_load_b32 v9, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v118, v13, v34 :: v_dual_mul_f32 v13, v52, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v13, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v52, v9
	scratch_load_b32 v9, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v13, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v9, v61
	scratch_load_b32 v9, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v197, v13, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v61, v9
	scratch_load_b32 v9, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v13, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v61, v9
	scratch_load_b32 v9, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v13, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v61, v9
	scratch_load_b32 v9, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v13, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v97, v9
	scratch_load_b32 v9, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v170, v12, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v97
	scratch_load_b32 v9, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v208, v11, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v97
	scratch_load_b32 v9, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v207, v10, v59
	v_fmac_f32_e32 v209, v48, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v206, v9, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v51, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v9, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v9, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v203, v9, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v9, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v52, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v9, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v9, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v199, v9, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v9, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v61, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v9, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v9, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v61
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v9, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v9, v60
	v_dual_fmac_f32 v168, v14, v35 :: v_dual_add_nc_u32 v9, s33, v16
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v9, v9, s3, 1
	buffer_load_u16 v9, v9, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v17, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v18
	ds_load_b128 v[13:16], v18 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v97, v227
	scratch_load_b32 v101, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v193, v17, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v97, v92 :: v_dual_fmac_f32 v250, v0, v11
	v_mul_f32_e32 v0, v52, v45
	scratch_load_b32 v92, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v192, v17, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v97, v91
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v143, v0, v12 :: v_dual_mul_f32 v0, v61, v141
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:192
	scratch_load_b32 v91, off, off offset:120
	v_fmac_f32_e32 v190, v17, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v97, v90
	scratch_load_b32 v90, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v191, v17, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v51, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v189, v39 :: v_dual_fmac_f32 v166, v17, v9
	v_mul_f32_e32 v17, v51, v100
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v17, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v51, v99
	scratch_load_b32 v99, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v164, v17, v11 :: v_dual_mul_f32 v17, v51, v98
	scratch_load_b32 v98, off, off offset:56 ; 4-byte Folded Reload
	v_fmac_f32_e32 v163, v17, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v52, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v17, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v52, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v251, v17, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v116, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:156
	scratch_load_b32 v100, off, off offset:64
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v101, v0, v9 :: v_dual_mul_f32 v0, v61, v136
	v_mov_b32_e32 v136, v40
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v100, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v61, v135
	scratch_load_b32 v135, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v99, v0, v11 :: v_dual_mul_f32 v0, v61, v134
	scratch_load_b32 v134, off, off offset:196 ; 4-byte Folded Reload
	v_fmac_f32_e32 v98, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v97, v88
	scratch_load_b32 v88, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v181, v0, v13 :: v_dual_mul_f32 v0, v97, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, v0, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v97, v84
	scratch_load_b32 v84, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v0, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v97, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v177, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v96
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v158, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v95
	scratch_load_b32 v95, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v157, v0, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v94
	scratch_load_b32 v94, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v0, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v93
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v93, off, off offset:48
	scratch_load_b32 v86, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v155, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v0, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v104
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v103
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v134, v0, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v102
	scratch_load_b32 v102, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v135, v0, v16 :: v_dual_mul_f32 v0, v61, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:188
	scratch_load_b32 v96, off, off offset:96
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v93, v0, v13 :: v_dual_mul_f32 v0, v61, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v0, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v61, v65
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v91, v0, v15 :: v_dual_mul_f32 v0, v61, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v90, v0, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v114, v97
	scratch_load_b32 v114, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[9:12], v18 offset:512
	ds_load_b128 v[13:16], v18 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v117, v52
	scratch_load_b32 v117, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v189, v0, v9 :: v_dual_mul_f32 v0, v97, v38
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v116, v2, v15 :: v_dual_fmac_f32 v171, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v97, v70
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v133, v0, v11 :: v_dual_mul_f32 v0, v97, v56
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v114, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v185, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v185, off, off offset:176
	scratch_load_b32 v110, off, off offset:128
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v211, v0, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v113
	scratch_load_b32 v113, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v113, v0, v10 :: v_dual_mul_f32 v0, v51, v112
	scratch_load_b32 v112, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v112, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v178
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:164
	scratch_load_b32 v111, off, off offset:144
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v49, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v185, v0, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v89
	scratch_load_b32 v89, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v183
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:184
	scratch_load_b32 v87, off, off offset:24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v179
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:168
	scratch_load_b32 v85, off, off offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v5, v61
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v178, v0, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v61, v8
	v_mul_f32_e32 v8, v72, v51
	v_dual_mul_f32 v9, v73, v51 :: v_dual_fmac_f32 v88, v0, v10
	v_mul_f32_e32 v0, v61, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v7, v97, v55 :: v_dual_fmac_f32 v210, v8, v14
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v111, v7, v13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v89, v19, v13
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v183, v9, v15
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v87, v0, v11 :: v_dual_mul_f32 v0, v61, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v54, v97
	v_mul_f32_e32 v5, v53, v97
	v_mul_f32_e32 v11, v51, v182
	scratch_load_b32 v182, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v97
	scratch_load_b32 v97, off, off offset:132 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v115, v52
	scratch_load_b32 v115, off, off offset:152 ; 4-byte Folded Reload
	v_dual_mul_f32 v10, v77, v51 :: v_dual_fmac_f32 v43, v0, v14
	v_dual_mul_f32 v1, v1, v61 :: v_dual_fmac_f32 v212, v6, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v42, v5, v15 :: v_dual_fmac_f32 v83, v12, v14
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v84, v17, v15 :: v_dual_fmac_f32 v85, v4, v13
	v_fmac_f32_e32 v179, v18, v16
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v182, v10, v16 :: v_dual_fmac_f32 v117, v1, v14
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v97, v11, v13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v115, v3, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v103, off, off offset:1004
	scratch_load_b32 v104, off, off offset:1008
	scratch_load_b32 v105, off, off offset:1012
	v_and_b32_e32 v1, 0x80, v102
	v_mov_b32_e32 v3, v213
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v192
	v_dual_mul_f32 v8, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v114
	v_dual_mul_f32 v6, 0xbfb8aa3b, v42 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	v_dual_mul_f32 v28, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v6
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v2, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v180
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v212
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v4, 0xbfb8aa3b, v191 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v42
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_dual_mul_f32 v47, 0xbfb8aa3b, v166 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v33, 0xbfb8aa3b, v156
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v9, v10, v9
	v_mul_f32_e32 v10, 0xbfb8aa3b, v211
	v_exp_f32_e32 v14, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v181
	v_ldexp_f32 v8, v11, v8
	v_ldexp_f32 v11, v13, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_dual_mul_f32 v10, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v97
	v_mul_f32_e32 v13, 0xbfb8aa3b, v183
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v14, v2
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_mul_f32_e32 v49, 0xbfb8aa3b, v143
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_mul_f32_e32 v34, 0xbfb8aa3b, v133
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v210 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v183
	v_mul_f32_e32 v55, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_ldexp_f32 v12, v12, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v95
	v_mul_f32_e32 v53, 0xbfb8aa3b, v89
	v_dual_mul_f32 v45, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v110
	v_mul_f32_e32 v19, 0xbfb8aa3b, v179
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v10, v13, v10
	v_ldexp_f32 v13, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v16, 0xbfb8aa3b, v83
	v_mul_f32_e32 v18, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_dual_mul_f32 v62, 0xbfb8aa3b, v136 :: v_dual_add_f32 v9, 1.0, v9
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v9, v9, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_dual_mul_f32 v32, 0xbfb8aa3b, v155 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v83 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v179
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v21, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v56, 0xbfb8aa3b, v98 :: v_dual_add_f32 v11, 1.0, v11
	v_dual_mul_f32 v26, 0xbfb8aa3b, v92 :: v_dual_add_f32 v15, 1.0, v15
	v_ldexp_f32 v17, v17, v2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v18, v16
	v_ldexp_f32 v18, v21, v19
	v_dual_mul_f32 v2, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v117
	v_mul_f32_e32 v21, 0xbfb8aa3b, v116
	v_exp_f32_e32 v24, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v193
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_ldexp_f32 v31, v24, v22
	v_mul_f32_e32 v22, 0xbfb8aa3b, v115
	v_dual_mul_f32 v52, 0xbfb8aa3b, v135 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v178
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v189, v9, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v117
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v54, 0xbfb8aa3b, v94 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v116
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v67, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s0
	v_exp_f32_e32 v69, v21
	v_mul_f32_e32 v24, 0xbfb8aa3b, v90
	v_dual_mul_f32 v48, 0xbfb8aa3b, v93 :: v_dual_add_f32 v31, 1.0, v31
	v_dual_mul_f32 v20, 0xbfb8aa3b, v177 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v171
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v71, v19, v2
	v_ldexp_f32 v64, v67, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v38, 0xbfb8aa3b, v165 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v250
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v65, v69, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v67, v72
	v_div_scale_f32 v69, null, v14, v14, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, s1, v42, v8, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v73, v72
	v_rcp_f32_e32 v67, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v36, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v68, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v115
	v_dual_mul_f32 v30, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v157
	v_dual_mul_f32 v44, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v77, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v69, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v85
	v_mul_f32_e32 v22, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v68, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v46, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v76, v67
	v_div_scale_f32 v76, s0, v43, v14, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v70, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v8, v8, v42
	v_dual_mul_f32 v77, v76, v67 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v50, 0xbfb8aa3b, v251 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v100
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v77, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v60, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v86
	v_mul_f32_e32 v21, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v73, v67
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v70, v74, 1.0
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v78, v74
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v11, v11, v212
	v_mul_f32_e32 v81, v79, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v82, null, v12, v12, v211
	v_rcp_f32_e32 v80, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v70, v81, v79
	v_fmac_f32_e32 v81, v73, v74
	v_div_fmas_f32 v68, v68, v72, v75
	v_rcp_f32_e32 v72, v82
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v78, v80, 1.0
	v_div_fixup_f32 v9, v68, v9, v189
	v_fma_f32 v68, -v69, v77, v76
	v_div_scale_f32 v69, s2, v212, v11, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v80, v75, v80
	v_div_scale_f32 v75, s0, v211, v12, v211
	v_fma_f32 v73, -v82, v72, 1.0
	v_div_fmas_f32 v67, v68, v67, v77
	v_fma_f32 v68, -v70, v81, v79
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v79, null, v13, v13, v183
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, null, v10, v10, v210
	v_div_fmas_f32 v68, v68, v74, v81
	v_div_fixup_f32 v14, v67, v14, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_mul_f32 v77, v75, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v8, v68, v8, v42
	v_rcp_f32_e32 v43, v79
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v82, v77, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_fmac_f32 v77, v42, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v73, v74, 1.0
	v_div_scale_f32 v42, s1, v210, v10, v210
	v_fmac_f32_e32 v74, v67, v74
	v_mul_f32_e32 v70, v69, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v78, v70, v69
	v_fmac_f32_e32 v70, v76, v80
	v_fma_f32 v76, -v79, v43, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v78, v70, v69
	v_div_scale_f32 v69, null, v15, v15, v182
	v_fmac_f32_e32 v43, v76, v43
	v_div_scale_f32 v76, s2, v183, v13, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v69
	v_fma_f32 v78, -v69, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v67, v78, v67
	v_div_fmas_f32 v68, v68, v80, v70
	v_fma_f32 v70, -v82, v77, v75
	v_mul_f32_e32 v75, v42, v74
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v81, s0, v182, v15, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v72, v77
	v_fma_f32 v72, -v73, v75, v42
	v_mul_f32_e32 v77, v76, v43
	v_div_fixup_f32 v11, v68, v11, v212
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v70, v12, v211
	v_fmac_f32_e32 v75, v72, v74
	v_div_scale_f32 v72, null, v16, v16, v83
	v_fma_f32 v68, -v79, v77, v76
	v_mul_f32_e32 v70, v81, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v73, v75, v42
	v_rcp_f32_e32 v73, v72
	v_div_scale_f32 v80, null, v17, v17, v185
	v_fmac_f32_e32 v77, v68, v43
	v_fma_f32 v68, -v69, v70, v81
	v_div_fmas_f32 v42, v42, v74, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v78, v80
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v74, -v79, v77, v76
	v_fmac_f32_e32 v70, v68, v67
	v_fma_f32 v75, -v72, v73, 1.0
	v_div_scale_f32 v76, s1, v83, v16, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v74, v43, v77
	v_fma_f32 v69, -v69, v70, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v73, v75, v73
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v82, -v80, v78, 1.0
	v_div_fixup_f32 v10, v42, v10, v210
	v_div_fmas_f32 v67, v69, v67, v70
	v_mul_f32_e32 v70, v76, v73
	v_div_fixup_f32 v42, v43, v13, v183
	v_div_scale_f32 v75, null, v18, v18, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v43, v67, v15, v182
	v_fma_f32 v15, -v72, v70, v76
	v_div_scale_f32 v67, null, v31, v31, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v75
	v_fmac_f32_e32 v70, v15, v73
	v_div_scale_f32 v15, s0, v84, v18, v84
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s3, v185, v17, v185
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v68, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v80, v68, v82
	v_fmac_f32_e32 v68, v74, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v75, v69, 1.0
	v_fma_f32 v13, -v80, v68, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v74, v69
	v_div_scale_f32 v74, null, v71, v71, v178
	v_div_fmas_f32 v13, v13, v78, v68
	v_rcp_f32_e32 v68, v67
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v77, v13, v17, v185
	v_fma_f32 v13, -v72, v70, v76
	v_rcp_f32_e32 v76, v74
	v_mul_f32_e32 v17, v15, v69
	v_fma_f32 v72, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v13, v73, v70
	v_fma_f32 v70, -v75, v17, v15
	v_div_scale_f32 v73, s1, v179, v31, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, null, v64, v64, v117
	v_div_fixup_f32 v79, v13, v16, v83
	v_fma_f32 v78, -v74, v76, 1.0
	v_fmac_f32_e32 v17, v70, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v13, v72
	v_div_scale_f32 v70, s2, v178, v71, v178
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, null, v65, v65, v116
	v_fma_f32 v15, -v75, v17, v15
	v_div_scale_f32 v83, null, v66, v66, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v70, v76
	v_fma_f32 v81, -v72, v13, 1.0
	v_rcp_f32_e32 v82, v78
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v15, v15, v69, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v13, v81, v13
	v_mul_f32_e32 v16, v73, v68
	v_fma_f32 v17, -v74, v80, v70
	v_rcp_f32_e32 v69, v83
	v_div_fixup_f32 v84, v15, v18, v84
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v75, -v67, v16, v73
	v_fma_f32 v81, -v78, v82, 1.0
	v_fmac_f32_e32 v80, v17, v76
	v_div_scale_f32 v18, s3, v116, v65, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v75, v68
	v_div_scale_f32 v75, s0, v117, v64, v117
	v_fmac_f32_e32 v82, v81, v82
	v_fma_f32 v15, -v67, v16, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v17, v75, v13
	v_fma_f32 v67, -v83, v69, 1.0
	v_div_fmas_f32 v15, v15, v68, v16
	v_fma_f32 v16, -v74, v80, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v68, -v72, v17, v75
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v70, v18, v82 :: v_dual_fmac_f32 v69, v67, v69
	v_div_scale_f32 v67, s1, v115, v66, v115
	v_div_fmas_f32 v16, v16, v76, v80
	v_fmac_f32_e32 v17, v68, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v15, v31, v179
	v_fma_f32 v15, -v78, v70, v18
	v_mul_f32_e32 v68, v67, v69
	v_fma_f32 v7, -v72, v17, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v71, v16, v71, v178
	v_fmac_f32_e32 v70, v15, v82
	v_fma_f32 v15, -v83, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v13, v17
	v_fma_f32 v13, -v78, v70, v18
	v_fmac_f32_e32 v68, v15, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v209, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v13, v82, v70
	v_fma_f32 v15, -v83, v68, v67
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v64, v7, v64, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v13, v65, v116
	v_div_fmas_f32 v5, v15, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_ldexp_f32 v4, v17, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v207, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v5, v66, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v192
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_exp_f32_e32 v4, v13
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v193
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v206, v11
	v_mul_f32_e32 v11, v202, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v208, v14 :: v_dual_mul_f32 v14, v205, v12
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v4, v7
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v203, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v193, v67, v193
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v8, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v68, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v190
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v204, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v43, v43, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v5, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v201, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v70
	v_mul_f32_e32 v76, v73, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v198, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v72, v72, v191
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v196, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v68, v76, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v5, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v195, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v70, v74, 1.0
	v_fmac_f32_e32 v76, v77, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s0, v192, v43, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v78, v74
	v_fma_f32 v65, -v68, v76, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v73, null, v42, v42, v190
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v197, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v31, 1.0
	v_div_fmas_f32 v65, v65, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v200, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v68, v64, v74 :: v_dual_fmac_f32 v31, v71, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s1, v191, v72, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v70, v68, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v65, v67, v193
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v73, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v77, v71, v31 :: v_dual_fmac_f32 v68, v76, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v194, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v77, v71
	v_fma_f32 v64, -v70, v68, v64
	v_div_scale_f32 v70, s2, v190, v42, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v180
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v66, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v74, v68
	v_mul_f32_e32 v68, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v23, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v77, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v73, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v67, v67, v181
	v_div_fmas_f32 v31, v71, v31, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v27, v69
	v_rcp_f32_e32 v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v64, v43, v192
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v31, v72, v191
	v_fma_f32 v31, -v73, v68, v70
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v43, v43, v180
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v66, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v186, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v70
	v_div_fixup_f32 v20, v31, v42, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v71, v66
	v_div_scale_f32 v69, s0, v181, v67, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v64, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v177
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v0, v199, v84 :: v_dual_mul_f32 v71, v69, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v70, v68, 1.0
	v_fma_f32 v73, -v76, v71, v69
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v74, null, v64, v64, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s1, v180, v43, v180
	v_fmac_f32_e32 v71, v73, v66
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v42, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v72, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v184, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v70, v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v69, v66, v71
	v_fma_f32 v65, -v74, v75, 1.0
	v_div_scale_f32 v69, null, v42, v42, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v76, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v65, v75
	v_rcp_f32_e32 v65, v69
	v_div_fixup_f32 v66, v66, v67, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v70, v73, v72
	v_div_scale_f32 v35, s0, v176, v64, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v72, v35, v75
	v_div_fmas_f32 v34, v67, v68, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v43, v180
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v74, v72, v35
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, s1, v177, v42, v177
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v188, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v43, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v74, v72, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v69, v43, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v114
	v_ldexp_f32 v67, v68, v67
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v74, v74, v171
	v_fmac_f32_e32 v43, v29, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v71
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v35, v75, v72
	v_fma_f32 v35, -v69, v43, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v67, v67, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v68, v71, 1.0
	v_div_fmas_f32 v35, v35, v65, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v171, v74, v171
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v28, v64, v176
	v_fmac_f32_e32 v71, v75, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v174, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v42, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v43, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v187, v23
	v_mul_f32_e32 v28, v175, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v68, v72, v43
	v_fma_f32 v65, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v42, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v72, v35, v71 :: v_dual_fmac_f32 v73, v65, v73
	v_div_scale_f32 v65, s0, v133, v67, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v68, v72, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v172, v66 :: v_dual_mul_f32 v64, v65, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v42, v42, v111
	v_div_fmas_f32 v43, v43, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v64, v65
	v_rcp_f32_e32 v47, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v72, v47
	v_div_fixup_f32 v43, v43, v74, v171
	v_fmac_f32_e32 v64, v69, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v65, -v76, v64, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v64, v65, v73, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_exp_f32_e32 v38, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v111, v42, v111
	v_div_fixup_f32 v64, v64, v67, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v36, v38, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v73, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v36 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v70, v70, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v68, v38, v73
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v38, v36, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v77, 1.0
	v_fmac_f32_e32 v77, v66, v77
	v_div_scale_f32 v66, s1, v114, v70, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v66, v77
	v_fma_f32 v67, -v75, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v173, v34 :: v_dual_fmac_f32 v65, v67, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_exp_f32_e32 v30, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v65, v66
	v_div_scale_f32 v75, null, v74, v74, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v69, v75
	v_div_fmas_f32 v65, v66, v77, v65
	v_fma_f32 v66, -v68, v38, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v66, v47, v38
	v_div_scale_f32 v67, null, v68, v68, v165
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v75, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v166, v74, v166
	v_rcp_f32_e32 v66, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v36, v69
	v_div_fixup_f32 v36, v65, v70, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s0, v165, v68, v165
	v_mul_f32_e32 v65, v73, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v65, v71, v69
	v_div_fixup_f32 v30, v38, v42, v111
	v_fma_f32 v38, -v67, v66, 1.0
	v_div_scale_f32 v42, null, v72, v72, v163
	v_fmac_f32_e32 v66, v38, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v168, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v167, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v75, v65, v73
	v_mul_f32_e32 v71, v76, v66
	v_rcp_f32_e32 v70, v42
	v_div_scale_f32 v78, null, v64, v64, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v43, v69, v65
	v_fma_f32 v73, -v67, v71, v76
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v42, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v67, v71, v76
	v_fma_f32 v73, -v78, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v67, v66, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v73, v75
	v_div_fixup_f32 v43, v43, v74, v166
	v_div_scale_f32 v73, s2, v164, v64, v164
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v39, v68, v165
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s1, v163, v72, v163
	v_mul_f32_e32 v66, v73, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v160, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v65, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v78, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v42, v69, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v33, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v71
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v71, null, v51, v51, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v42, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v78, v66, v73
	v_rcp_f32_e32 v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v32, v32, v75, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v155 :: v_dual_add_f32 v66, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v64, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v67, v73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v156 :: v_dual_add_f32 v67, 1.0, v67
	v_exp_f32_e32 v69, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v33, v69, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v71, v70, 1.0
	v_div_scale_f32 v69, null, v66, v66, v157
	v_fmac_f32_e32 v70, v65, v70
	v_div_scale_f32 v65, vcc_lo, v158, v51, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v69
	v_mul_f32_e32 v77, v65, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v64, -v71, v77, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v169, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v69, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v64, v70
	v_div_scale_f32 v64, s0, v157, v66, v157
	v_fmac_f32_e32 v75, v68, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v71, v77, v65
	v_mul_f32_e32 v71, v64, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v65, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v71, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v42, v72, v163
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v67, v67, v155
	v_fmac_f32_e32 v71, v73, v75
	v_div_scale_f32 v76, null, v74, v74, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v113
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_exp_f32_e32 v46, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v69, v71, v64
	v_div_scale_f32 v69, s2, v155, v67, v155
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v170, v30 :: v_dual_mul_f32 v33, v161, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v159, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v65, v51, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v68, v42
	v_div_scale_f32 v68, s1, v156, v74, v156
	v_fma_f32 v65, -v72, v70, 1.0
	v_mul_f32_e32 v77, v68, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v162, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v76, v77, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v51, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v64, v64, v75, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_exp_f32_e32 v40, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v70
	v_fma_f32 v68, -v76, v77, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v46, -v72, v71, v69
	v_div_scale_f32 v76, null, v65, v65, v113
	v_div_fmas_f32 v42, v68, v42, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v40, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v46, v70
	v_rcp_f32_e32 v51, v76
	v_div_fixup_f32 v46, v64, v66, v157
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v42, v74, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v72, v71, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v132, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v64, v64, v112
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v131, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v51, 1.0
	v_div_fmas_f32 v42, v42, v70, v71
	v_rcp_f32_e32 v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v69, v51
	v_div_scale_f32 v69, s0, v113, v65, v113
	v_div_fixup_f32 v37, v42, v67, v155
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v68, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v69
	v_fmac_f32_e32 v70, v72, v70
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v74, null, v66, v66, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v51
	v_div_scale_f32 v72, s1, v112, v64, v112
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v130, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v69, v51, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v154, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v74, v75, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v67, v65, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v43, v75
	v_div_scale_f32 v43, s0, v110, v66, v110
	v_mul_f32_e32 v73, v72, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v76, -v68, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v76, v70
	v_fma_f32 v67, -v68, v73, v72
	v_div_scale_f32 v68, null, v42, v42, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v67, v70, v73
	v_rcp_f32_e32 v58, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s2
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v64, v112
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v41
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v251
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v73, v58
	v_mul_f32_e32 v72, v43, v75
	v_div_scale_f32 v73, s1, v97, v42, v97
	v_fma_f32 v64, -v74, v72, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v67, v70, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v64, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v74, v72, v43
	v_div_scale_f32 v76, null, v67, v67, v251
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v71, v69
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v73, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v49 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v68, v64, v73
	v_div_fmas_f32 v41, v43, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v74, v74, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v64, v49, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v69
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v250
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v41, v66, v110
	v_fmac_f32_e32 v71, v75, v71
	v_fma_f32 v43, -v68, v64, v73
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, s0, v251, v67, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v43, v58, v64
	v_div_scale_f32 v64, vcc_lo, v145, v74, v145
	v_div_scale_f32 v77, null, v69, v69, v143
	v_div_fixup_f32 v42, v43, v42, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v58, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v64, v71
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v58, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v153, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v70, v72, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v255, v49
	v_mul_f32_e32 v58, v252, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v42, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v253, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v76, v66, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v70, v72, v64
	v_fmac_f32_e32 v66, v42, v73
	v_fma_f32 v42, -v77, v78, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v65, null, v43, v43, v250
	v_div_fmas_f32 v64, v64, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v66, v75
	v_div_scale_f32 v63, s1, v143, v69, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v64, v64, v74, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v42, v78
	v_rcp_f32_e32 v42, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v68, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v63, v78
	v_div_scale_f32 v73, s0, v250, v43, v250
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v65, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v66, v67, v251
	v_fma_f32 v67, -v77, v68, v63
	v_fmac_f32_e32 v42, v72, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v62, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v73, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v65, v62, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v134
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v77, v68, v63
	v_div_scale_f32 v75, null, v74, v74, v141
	v_fmac_f32_e32 v62, v55, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v72, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v65, v62, v73
	v_div_fmas_f32 v63, v63, v78, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v75, v70, 1.0
	v_div_scale_f32 v67, null, v68, v68, v136
	v_div_fmas_f32 v42, v65, v42, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v55, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v65, v67
	v_div_scale_f32 v73, vcc_lo, v141, v74, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v63, v69, v143
	v_div_fixup_f32 v42, v42, v43, v250
	v_mul_f32_e32 v69, v73, v70
	v_div_scale_f32 v76, s0, v136, v68, v136
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v62, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v67, v65, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v75, v69, v73
	v_fmac_f32_e32 v65, v43, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v71, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v43, v245, v52 :: v_dual_mul_f32 v52, v244, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v66, 1.0, v55 :: v_dual_mul_f32 v71, v76, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v241, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v69, v73
	v_div_scale_f32 v78, null, v66, v66, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v67, v71, v76
	v_div_fmas_f32 v61, v64, v70, v69
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v75, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v61, v74, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v67, v71, v76
	v_fma_f32 v73, -v78, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v67, v65, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s2, v135, v66, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v72, v72, v134
	v_mul_f32_e32 v65, v73, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v69, v64
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v78, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_fmac_f32 v65, v54, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v64, v64, v96
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v63, v62, 1.0
	v_fmac_f32_e32 v62, v77, v62
	v_div_scale_f32 v77, s1, v134, v72, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v63, v70, v77
	v_fmac_f32_e32 v70, v74, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v63, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v63, v62, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_exp_f32_e32 v63, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v71
	v_fma_f32 v53, -v78, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v53, v53, v75, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v63, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v71, v70, 1.0
	v_div_fixup_f32 v59, v59, v68, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v65, v65, v95
	v_fmac_f32_e32 v70, v63, v70
	v_div_scale_f32 v63, vcc_lo, v96, v64, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v127, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v63, v70
	v_div_fixup_f32 v53, v53, v66, v135
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v249, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v71, v77, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v236, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v69, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v73, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v66, v70
	v_div_scale_f32 v66, s0, v95, v65, v95
	v_fmac_f32_e32 v75, v68, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v71, v77, v63
	v_mul_f32_e32 v71, v66, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v69, v71, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v62, v72, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v70, v75
	v_div_scale_f32 v76, null, v74, v74, v94
	v_div_fixup_f32 v63, v63, v64, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v69, v71, v66
	v_rcp_f32_e32 v62, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v57, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s1, v94, v74, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v67 :: v_dual_mul_f32 v67, v126, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v62
	v_div_scale_f32 v73, null, v72, v72, v89
	v_div_scale_f32 v69, s2, v89, v72, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v76, v77, v68
	v_rcp_f32_e32 v60, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v60, 1.0
	v_fmac_f32_e32 v77, v61, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v64, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v68, -v76, v77, v68
	v_div_fmas_f32 v66, v66, v75, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v60
	v_div_scale_f32 v76, null, v57, v57, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v98
	v_exp_f32_e32 v56, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v70, v64, v60
	v_div_fixup_f32 v64, v66, v65, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	v_ldexp_f32 v56, v56, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v56, v56, v100
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v68, v62, v77
	v_rcp_f32_e32 v68, v76
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v65, v65, v98
	v_div_fixup_f32 v61, v62, v74, v94
	v_fma_f32 v62, -v73, v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v76, v68, 1.0
	v_div_fmas_f32 v60, v62, v60, v70
	v_rcp_f32_e32 v70, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v120, v61 :: v_dual_fmac_f32 v68, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v101, v57, v101
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v128, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v60, v72, v89
	v_mul_f32_e32 v71, v69, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v124, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, s1, v100, v56, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v72, v70
	v_fma_f32 v69, -v76, v71, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v76, -v66, v73, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v119, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v60, v74, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v69, v68, v71
	v_fmac_f32_e32 v73, v76, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v118, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v68, v57, v101
	v_fma_f32 v57, -v66, v73, v72
	v_div_scale_f32 v48, s0, v98, v65, v98
	v_fma_f32 v63, -v75, v64, 1.0
	v_div_scale_f32 v66, null, v60, v60, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v63, v64
	v_rcp_f32_e32 v63, v66
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v66, v63, 1.0
	v_fmac_f32_e32 v63, v74, v63
	v_div_fmas_f32 v26, v57, v70, v73
	v_mul_f32_e32 v73, v48, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_cndmask_b32_e64 v70, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v56, v100
	v_fma_f32 v56, -v75, v73, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v25, v72, v71
	v_exp_f32_e32 v70, v70
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s1, v99, v60, v99
	v_dual_fmac_f32 v73, v56, v64 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v56, v74, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v70, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v75, v73, v48
	v_div_scale_f32 v70, null, v25, v25, v93
	v_fma_f32 v75, -v66, v56, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v24, v70
	v_dual_fmac_f32 v56, v75, v63 :: v_dual_add_f32 v75, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v66, v56, v74
	v_div_scale_f32 v72, null, v75, v75, v92
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v56, v64, v63, v56
	v_rcp_f32_e32 v74, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v70, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v93, v25, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v57 :: v_dual_fmac_f32 v24, v76, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s0, v92, v75, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v72, v74, 1.0
	v_div_scale_f32 v78, null, v73, v73, v91
	v_div_fixup_f32 v56, v56, v60, v99
	v_div_fixup_f32 v48, v48, v65, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v78
	v_fmac_f32_e32 v74, v63, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v63, v246, v26 :: v_dual_mul_f32 v60, v248, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v65, v77, v74 :: v_dual_mul_f32 v76, v71, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v70, v76, v71
	v_fmac_f32_e32 v76, v56, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v72, v65, v77
	v_fmac_f32_e32 v65, v56, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v56, v79
	v_div_scale_f32 v56, s1, v91, v73, v91
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v247, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v64, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v70, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v48, v24, v76
	v_fma_f32 v48, -v72, v65, v77
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v25, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v48, v74, v65
	v_mul_f32_e32 v48, v56, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v75, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v78, v48, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v21, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v78, v48, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v129, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v21, v21, v68
	v_exp_f32_e32 v68, v72
	v_ldexp_f32 v2, v2, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v25, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v26, v26, v90
	v_div_scale_f32 v74, s0, v90, v26, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v71, null, v21, v21, v88
	v_rcp_f32_e32 v65, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v66, v65, 1.0
	v_fmac_f32_e32 v65, v19, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v48, v56, v79, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v74, v65
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v25, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v73, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v66, v56, v74
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v56, v72, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v68, v68, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v19, v19, v85
	v_fma_f32 v66, -v66, v56, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v72
	v_fma_f32 v70, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v76
	v_div_scale_f32 v83, s2, v85, v19, v85
	v_div_fmas_f32 v56, v66, v65, v56
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v77, vcc_lo, v88, v21, v88
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v122, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v56, v26, v90
	v_fma_f32 v56, -v72, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v2, 1.0, v2 :: v_dual_mul_f32 v79, v77, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v56, v75
	v_div_scale_f32 v25, null, v2, v2, v87
	v_div_scale_f32 v80, s0, v87, v2, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v66, v78
	v_rcp_f32_e32 v74, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v123, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v84, v83, v78
	v_fma_f32 v65, -v25, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v65, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v125, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v71, v79, v77
	v_fmac_f32_e32 v79, v26, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v80, v74
	v_div_scale_f32 v56, s1, v86, v68, v86
	v_fma_f32 v22, -v71, v79, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v25, v81, v80
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v45|, |v9|, |v0|
	v_max3_f32 v71, |v41|, |v13|, |v12|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v73, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v81, v26, v74
	v_fma_f32 v26, -v76, v84, v83
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0x76543210
	v_div_fixup_f32 v21, v22, v21, v88
	v_mul_f32_e32 v82, v56, v75
	v_fma_f32 v25, -v25, v81, v80
	v_fmac_f32_e32 v84, v26, v78
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v73, |v40|, |v37|, |v14|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v80, 3, v1
.Ltmp13:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v72, v82, v56
	v_div_fmas_f32 v25, v25, v74, v81
	s_mov_b32 vcc_lo, s1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v74, |v55|, |v52|
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp15:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v48, v75
	v_fma_f32 v48, -v76, v84, v83
	v_div_fixup_f32 v2, v25, v2, v87
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v23|, |v35|, |v34|
	v_max3_f32 v76, |v69|, |v62|, |v61|
.Ltmp17:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v72, v82, v56
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v72, v121, v24
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v31|, |v27|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v75, v82
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v75, |v43|, |v67|, |v59|
.Ltmp21:
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v48, v48, v78, v84
	v_div_fixup_f32 v22, v26, v68, v86
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v47|, |v38|, |v36|
	v_max3_f32 v68, |v30|, |v17|, |v15|
	v_max3_f32 v78, |v54|, |v53|, |v10|
	v_max3_f32 v74, v74, |v42|, v75
.Ltmp23:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v109, v22
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v24, |v20|, v25
	v_max3_f32 v24, v26, v68, |v16|
	v_max_f32_e64 v25, |v44|, |v39|
	v_max3_f32 v26, |v33|, |v51|, |v46|
	v_max3_f32 v68, |v58|, |v50|, |v49|
	v_max3_f32 v75, v76, v77, |v8|
.Ltmp25:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v48, v19, v85
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v77, 8, v102
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, |v32|, v26
	v_max3_f32 v26, v68, v71, |v11|
.Ltmp28:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v107, v21
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v74, v78, v75
.Ltmp30:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v106, v19
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v19, |v29|, |v28|, |v18|
.Ltmp32:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v108, v2
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v76, 4, v102
	v_permlanex16_b32 v75, v21, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v22, v19, v24
	v_max3_f32 v19, v25, v73, v26
	v_max_f32_e64 v22, |v64|, |v63|
	v_max_f32_e32 v75, v75, v75
	v_max3_f32 v26, |v71|, |v68|, |v56|
	v_max3_f32 v73, |v48|, |v4|, |v5|
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v21, v75
	v_max3_f32 v24, |v57|, |v72|, |v70|
	v_max3_f32 v26, v26, v73, |v6|
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v73, v74, v74
	v_max3_f32 v25, |v66|, |v65|, |v7|
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 4, v102
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, |v60|, v24
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v19, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v73, v2, v73 :: v_dual_and_b32 v2, 3, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v82, v21, 6, 0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v22, v25, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v24, v24, v24
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v26, 0x60, v102
	v_lshlrev_b32_e32 v22, 5, v2
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v19, v24
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v24, v2, 9, 0
	v_permlanex16_b32 v19, v25, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v76, 0x680, v76, v22
	v_xor_b32_e32 v79, v22, v26
	v_lshl_add_u32 v78, v21, 2, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_lshlrev_b32 v24, 1, v1
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v81, v76, v26
	v_add_nc_u32_e32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v78, v77, 4, v78
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v25, v19 :: v_dual_lshlrev_b32 v77, 3, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v25, v82, v80, v81
	v_add3_u32 v19, v78, v24, v79
	ds_store_b128 v19, v[73:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v19, v73
	v_mov_b32_e32 v25, v74
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_max_f32 v74, v74, v74
	v_max_f32_e32 v79, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v25, v25, v25
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v2, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v73, v19
	v_max_f32_e32 v25, v74, v25
	v_max_f32_e32 v73, v75, v75
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v78, v75 :: v_dual_max_f32 v75, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v76, v19
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v74, v78, v78 :: v_dual_max_f32 v19, v19, v76
	v_dual_max_f32 v73, v73, v74 :: v_dual_max_f32 v74, v79, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v73
	v_mov_b32_e32 v79, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v25
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v73, v75 :: v_dual_max_f32 v78, v78, v78
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v75 :: v_dual_max_f32 v25, v25, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v19
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v79, v79 :: v_dual_mov_b32 v79, v25
	v_max_f32_e32 v73, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v76, v74, v76
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v78, 1, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v19, v73
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v81, v76 :: v_dual_max_f32 v74, v79, v79
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v78, v77
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v25, v74
	v_max_f32_e32 v25, v81, v81
	v_max_f32_e32 v75, v75, v19
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v19, 5, v21
.Ltmp70:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v21, 4, v105
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v19, v77
.Ltmp73:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v21
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[73:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v2
.Ltmp75:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v1, v73, v73
	v_dual_max_f32 v76, v76, v76 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v74, 0x2b8cbccc, v74 :: v_dual_max_f32 v19, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v76, 0x2b8cbccc, v76 :: v_dual_max_f32 v75, 0x2b8cbccc, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v74
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v19
	v_div_scale_f32 v79, vcc_lo, v19, 0x40e00000, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v73, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v75
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v76
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v77, -v25, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v77, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v77, s0, s34, v78
	v_add_co_ci_u32_e64 v78, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v81, v79, v73
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v83, -v80, v82, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 16, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[77:78]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v25, v81, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s6, v75, 0x40e00000, v75
	v_fmac_f32_e32 v81, v1, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s3, s34, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v25, v81, v79
	v_rcp_f32_e32 v79, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[77:78]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v25, v25, v73, v81
	v_rcp_f32_e32 v81, v85
	v_mul_f32_e32 v73, v83, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v19, v25, 0x40e00000, v19
	v_fma_f32 v77, -v84, v79, 1.0
	v_fma_f32 v25, -v80, v73, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v85, v81, 1.0
	v_fmac_f32_e32 v73, v25, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v25.l, v19.h
	v_mov_b16_e32 v25.h, v78.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s8, v76, 0x40e00000, v76
	v_fmac_f32_e32 v79, v77, v79
	v_div_scale_f32 v77, s7, v74, 0x40e00000, v74
	v_fma_f32 v1, -v80, v73, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v80, v86, v81 :: v_dual_mul_f32 v87, v77, v79
	v_div_fmas_f32 v73, v1, v82, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v19, v19, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v25, -v84, v87, v77
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v19
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v73, v73, 0x40e00000, v75
	v_fmac_f32_e32 v87, v25, v79
	v_fma_f32 v25, -v85, v80, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v73.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v75, -v84, v87, v77
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v77, null, v82, v82, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v80, v25, v81
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[38:39], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v25, v75, v79, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v77
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v75, -v85, v80, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v25, v25, 0x40e00000, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v82, v82, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v74, v75, v81, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v82, v82, v27
	v_fma_f32 v81, -v77, v79, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v76
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v76.l, v25.h
	v_mov_b16_e32 v76.h, v78.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, vcc_lo, v31, v82, v31
	v_rcp_f32_e32 v83, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v74.h
	v_and_b32_e32 v2, 1, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v76, v81, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v73, v75, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v82, v82, v20
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v77, v76, v81
	v_div_scale_f32 v87, s8, v27, v82, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v80, v83, 1.0
	v_rcp_f32_e32 v85, v84
	v_fmac_f32_e32 v76, v78, v79
	v_rcp_f32_e32 v78, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v25, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v73, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v74, v75, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v77, v76, v81
	v_div_scale_f32 v91, null, v82, v82, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v89, -v84, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v76, v77, v79, v76
	v_fma_f32 v90, -v86, v78, 1.0
	v_rcp_f32_e32 v79, v91
	v_fma_f32 v81, -v80, v88, v87
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v85, v89, v85 :: v_dual_fmac_f32 v78, v90, v78
	v_div_scale_f32 v90, null, v82, v82, v34
	v_div_scale_f32 v89, s9, v20, v82, v20
	v_fmac_f32_e32 v88, v81, v83
	v_rcp_f32_e32 v92, v90
	v_div_scale_f32 v81, s10, v23, v82, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v77, v89, v85
	v_div_fixup_f32 v31, v76, v82, v31
	v_fma_f32 v76, -v80, v88, v87
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v87, v81, v78
	v_fma_f32 v80, -v84, v77, v89
	v_fma_f32 v93, -v91, v79, 1.0
	v_div_fmas_f32 v76, v76, v83, v88
	v_fma_f32 v88, -v90, v92, 1.0
	v_div_scale_f32 v83, s8, v35, v82, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v93, v79
	v_div_fixup_f32 v27, v76, v82, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v88, v92
	v_fmac_f32_e32 v77, v80, v85
	v_fma_f32 v80, -v86, v87, v81
	v_div_scale_f32 v88, null, v82, v82, v29
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v84, v77, v89
	v_dual_fmac_f32 v87, v80, v78 :: v_dual_mul_f32 v80, v83, v79
	v_div_scale_f32 v84, s11, v34, v82, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v85, v77
	v_fma_f32 v77, -v86, v87, v81
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v89, null, v82, v82, v28
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v91, v80, v83
	v_mul_f32_e32 v86, v84, v92
	v_div_fmas_f32 v77, v77, v78, v87
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v81, v79 :: v_dual_and_b32 v73, 0xffff0000, v2
	v_fma_f32 v81, -v90, v86, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v88, v85, 1.0
	v_div_fixup_f32 v20, v76, v82, v20
	v_div_fixup_f32 v23, v77, v82, v23
	v_fma_f32 v76, -v91, v80, v83
	v_fmac_f32_e32 v86, v81, v92
	v_div_scale_f32 v77, s9, v29, v82, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v89, v78, 1.0
	v_fmac_f32_e32 v85, v87, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v83, null, v82, v82, v18
	v_div_fmas_f32 v76, v76, v79, v80
	v_fma_f32 v79, -v90, v86, v84
	v_fmac_f32_e32 v78, v81, v78
	v_mul_f32_e32 v80, v77, v85
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s8, v28, v82, v28
	v_div_fmas_f32 v79, v79, v92, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v88, v80, v77
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v87, null, v82, v82, v47
	v_mul_f32_e32 v90, v84, v78
	v_fmac_f32_e32 v80, v86, v85
	v_div_scale_f32 v86, null, v82, v82, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v92, v87
	v_div_fixup_f32 v35, v76, v82, v35
	v_fma_f32 v76, -v89, v90, v84
	v_fma_f32 v77, -v88, v80, v77
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v91, -v83, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v90, v76, v78
	v_div_fmas_f32 v77, v77, v85, v80
	v_div_fixup_f32 v34, v79, v82, v34
	v_div_scale_f32 v79, s10, v18, v82, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v89, v90, v84
	v_div_scale_f32 v93, null, v82, v82, v36
	v_fma_f32 v89, -v86, v88, 1.0
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v91, -v87, v92, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v29, v77, v82, v29
	v_fmac_f32_e32 v88, v89, v88
	v_div_fmas_f32 v78, v80, v78, v90
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v47, v82, v47
	v_rcp_f32_e32 v80, v93
	v_div_scale_f32 v89, s8, v38, v82, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v85, v91, v92
	v_mul_f32_e32 v76, v79, v81
	v_div_fixup_f32 v28, v78, v82, v28
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v83, v76, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v84, v81
	v_fma_f32 v84, -v87, v85, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v83, v76, v79
	v_fma_f32 v79, -v93, v80, 1.0
	v_div_scale_f32 v83, null, v82, v82, v30
	v_fmac_f32_e32 v85, v84, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v77, v81, v76
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v84, s9, v36, v82, v36
	v_fma_f32 v77, -v87, v85, v91
	v_div_fixup_f32 v18, v76, v82, v18
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v82, v82, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v92, v85
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v90, -v83, v79, 1.0
	v_mul_f32_e32 v78, v89, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v47, v77, v82, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v90, v79
	v_fma_f32 v81, -v86, v78, v89
	v_div_scale_f32 v90, null, v82, v82, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v81, v88
	v_rcp_f32_e32 v81, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v86, v78, v89
	v_div_scale_f32 v86, s10, v30, v82, v30
	v_div_fmas_f32 v76, v76, v88, v78
	v_rcp_f32_e32 v78, v90
	v_mul_f32_e32 v85, v84, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v81, 1.0
	v_div_scale_f32 v88, s8, v17, v82, v17
	v_div_fixup_f32 v38, v76, v82, v38
	v_fma_f32 v77, -v93, v85, v84
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v77, v80
	v_mul_f32_e32 v77, v86, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v93, v85, v84
	v_fma_f32 v93, -v90, v78, 1.0
	v_fma_f32 v84, -v83, v77, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v80, v85
	v_fmac_f32_e32 v78, v93, v78
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, null, v82, v82, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v36, v76, v82, v36
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v91, v88, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v91, v88
	v_fmac_f32_e32 v91, v80, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v77, v84, v79
	v_div_scale_f32 v84, s9, v15, v82, v15
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v75, v75, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v83, v77, v86
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, s11, v16, v82, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v85
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v87, v91, v88
	v_fma_f32 v79, -v90, v80, v84
	v_mul_f32_e32 v87, v83, v92
	v_div_scale_f32 v88, null, v75, v75, v39
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v80, v79, v78
	v_div_fmas_f32 v77, v77, v81, v91
	v_rcp_f32_e32 v79, v88
	v_fma_f32 v81, -v89, v87, v83
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v30, v76, v82, v30
	v_div_fixup_f32 v17, v77, v82, v17
	v_fma_f32 v76, -v90, v80, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v81, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_div_scale_f32 v77, s8, v44, v75, v44
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v88, v79, 1.0
	v_div_scale_f32 v84, null, v75, v75, v32
	v_div_fmas_f32 v76, v76, v78, v80
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v80, v77, v86
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v39, v75, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v80, v77
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_fixup_f32 v15, v76, v82, v15
	v_div_fixup_f32 v16, v78, v82, v16
	v_fmac_f32_e32 v80, v87, v86
	v_div_scale_f32 v82, null, v75, v75, v51
	v_div_scale_f32 v78, s10, v32, v75, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v85, v80, v77
	v_rcp_f32_e32 v85, v82
	v_mul_f32_e32 v90, v83, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v89, null, v75, v75, v33
	v_fma_f32 v76, -v88, v90, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v91, v81
	v_div_fmas_f32 v77, v77, v86, v80
	v_rcp_f32_e32 v92, v89
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v90, v76, v79
	v_mul_f32_e32 v76, v78, v81
	v_div_fixup_f32 v44, v77, v75, v44
	v_div_scale_f32 v91, null, v75, v75, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v88, v90, v83
	v_fma_f32 v83, -v84, v76, v78
	v_fma_f32 v88, -v82, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v80, v79, v90
	v_fmac_f32_e32 v76, v83, v81
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s8, v51, v75, v51
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v77, -v84, v76, v78
	v_rcp_f32_e32 v80, v91
	v_mul_f32_e32 v78, v88, v85
	v_div_fixup_f32 v39, v79, v75, v39
	v_div_scale_f32 v84, s9, v46, v75, v46
	v_div_fmas_f32 v76, v77, v81, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v81, -v82, v78, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v76, v75, v32
	v_fmac_f32_e32 v78, v81, v85
	v_fma_f32 v79, -v91, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v82, v78, v88
	v_div_scale_f32 v82, s10, v40, v75, v40
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s11, v33, v75, v33
	v_fmac_f32_e32 v80, v79, v80
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v87, v92
	v_fma_f32 v83, -v89, v86, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v83, v92
	v_div_scale_f32 v83, null, v75, v75, v40
	v_fma_f32 v77, -v89, v86, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v87, null, v75, v75, v37
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v33, v77, v75, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fma_f32 v77, -v91, v86, v84
	v_div_fmas_f32 v76, v76, v85, v78
	v_div_scale_f32 v85, s8, v37, v75, v37
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v75, v75, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v87, v81, 1.0
	v_dual_fmac_f32 v86, v77, v80 :: v_dual_mul_f32 v77, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v89
	v_div_fixup_f32 v51, v76, v75, v51
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, null, v75, v75, v58
	v_fma_f32 v76, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v85, v81
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v89, v78, 1.0
	v_div_fmas_f32 v76, v76, v80, v86
	v_fmac_f32_e32 v77, v84, v79
	v_fma_f32 v80, -v87, v90, v85
	v_div_scale_f32 v84, s9, v14, v75, v14
	v_fmac_f32_e32 v78, v92, v78
	v_div_fixup_f32 v46, v76, v75, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v76, -v83, v77, v82
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, null, v75, v75, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s11, v58, v75, v58
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v75, v75, v49
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v88, v86, v82
	v_div_fixup_f32 v40, v76, v75, v40
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v76, -v89, v80, v84
	v_div_fixup_f32 v37, v77, v75, v37
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v77, s8, v50, v75, v50
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v81, -v87, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v84, null, v75, v75, v41
	v_div_fmas_f32 v76, v76, v78, v80
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v80, v77, v85
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v82, s9, v49, v75, v49
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v14, v76, v75, v14
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v80, v77
	v_mul_f32_e32 v89, v82, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v88, null, v75, v75, v13
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v76, -v87, v89, v82
	v_div_scale_f32 v92, null, v75, v75, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v77, -v83, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v89, v76, v79
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_scale_f32 v86, null, v75, v75, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v85, v80
	v_fma_f32 v80, -v87, v89, v82
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v58, v78, v75, v58
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s10, v41, v75, v41
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v90, -v88, v91, 1.0
	v_rcp_f32_e32 v83, v86
	v_div_fixup_f32 v50, v77, v75, v50
	v_div_fixup_f32 v49, v79, v75, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v13, v75, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v79, v80
	v_mul_f32_e32 v76, v78, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v12, v75, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v82, -v84, v76, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v84, v76, v78
	v_fmac_f32_e32 v85, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_div_scale_f32 v82, null, v74, v74, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v85, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v78, v87
	v_div_scale_f32 v88, null, v74, v74, v52
	v_div_scale_f32 v84, s9, v11, v75, v11
	v_fmac_f32_e32 v78, v81, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v81, v88
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_div_fixup_f32 v41, v76, v75, v41
	v_fma_f32 v76, -v86, v78, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v13, v77, v75, v13
	v_fma_f32 v77, -v92, v85, v84
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v76, v76, v83, v78
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_scale_f32 v86, s10, v55, v74, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, null, v74, v74, v43
	v_fmac_f32_e32 v85, v77, v80
	v_fmac_f32_e32 v79, v89, v79
	v_div_fixup_f32 v12, v76, v75, v12
	v_rcp_f32_e32 v91, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v92, v85, v84
	v_mul_f32_e32 v77, v86, v79
	v_div_scale_f32 v83, s8, v52, v74, v52
	v_div_scale_f32 v89, null, v74, v74, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v80, v85
	v_fma_f32 v84, -v82, v77, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v91, 1.0
	v_rcp_f32_e32 v78, v89
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v11, v76, v75, v11
	v_fmac_f32_e32 v77, v84, v79
	v_dual_fmac_f32 v91, v85, v91 :: v_dual_mul_f32 v90, v83, v81
	v_div_scale_f32 v84, s9, v42, v74, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v82, v77, v86
	v_div_scale_f32 v82, null, v74, v74, v67
	v_fma_f32 v80, -v88, v90, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v89, v78, 1.0
	v_div_fmas_f32 v75, v75, v79, v77
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v86, null, v74, v74, v59
	v_fmac_f32_e32 v90, v80, v81
	v_div_scale_f32 v80, s11, v43, v74, v43
	v_div_fixup_f32 v55, v75, v74, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v88, v90, v83
	v_mul_f32_e32 v85, v80, v91
	v_rcp_f32_e32 v83, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v87, v85, v80
	v_fmac_f32_e32 v78, v92, v78
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v77, v74, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v85, v81, v91 :: v_dual_mul_f32 v76, v84, v78
	v_fma_f32 v88, -v82, v83, 1.0
	v_div_scale_f32 v77, s8, v67, v74, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v76, v84
	v_fmac_f32_e32 v83, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v79, v78
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v75, -v89, v76, v84
	v_div_scale_f32 v84, null, v74, v74, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v81, -v86, v79, 1.0
	v_fma_f32 v76, -v87, v85, v80
	v_mul_f32_e32 v78, v77, v83
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v75, v74, v42
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s9, v59, v74, v59
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v81, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v91, null, v74, v74, v69
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v75, -v86, v88, v81
	v_div_scale_f32 v87, null, v74, v74, v53
	v_div_fixup_f32 v43, v76, v74, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v75, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_scale_f32 v76, s10, v54, v74, v54
	v_div_fmas_f32 v77, v77, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v90, v87
	v_div_scale_f32 v85, null, v74, v74, v10
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v82, v85
	v_div_fixup_f32 v67, v77, v74, v67
	v_div_fixup_f32 v59, v78, v74, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v91, v79, 1.0
	v_fmac_f32_e32 v80, v89, v80
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v86, -v85, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v78, v79
	v_mul_f32_e32 v75, v76, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v84, v75, v76
	v_fmac_f32_e32 v75, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v84, v75, v76
	v_div_scale_f32 v84, s9, v69, v74, v69
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s11, v53, v74, v53
	v_div_fmas_f32 v75, v76, v80, v75
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v89, v90
	v_div_fixup_f32 v54, v75, v74, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v87, v83, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v81, v90
	v_div_scale_f32 v81, null, v74, v74, v62
	v_fma_f32 v76, -v87, v83, v89
	v_div_scale_f32 v87, null, v74, v74, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v53, v76, v74, v53
	v_fma_f32 v76, -v91, v83, v84
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s8, v10, v74, v10
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v76, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	v_mul_f32_e32 v77, v86, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v85, v77, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v80, v82
	v_rcp_f32_e32 v80, v87
	v_fma_f32 v75, -v85, v77, v86
	v_div_scale_f32 v85, s10, v62, v74, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v82, v77
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v82, s8, v61, v74, v61
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v10, v75, v74, v10
	v_fmac_f32_e32 v80, v86, v80
	v_fma_f32 v75, -v91, v83, v84
	v_div_scale_f32 v86, null, v74, v74, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v82, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v79, v83
	v_rcp_f32_e32 v90, v86
	v_div_scale_f32 v83, s9, v45, v74, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v74, v74, v45
	v_div_fixup_f32 v69, v75, v74, v69
	v_fmac_f32_e32 v89, v79, v80
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v88, v77, 1.0
	v_dual_fmac_f32 v77, v91, v77 :: v_dual_mul_f32 v76, v85, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v79, v83, v77
	v_fma_f32 v84, -v81, v76, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v84, -v86, v90, 1.0
	v_fma_f32 v75, -v81, v76, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v81, s11, v9, v74, v9
	v_div_scale_f32 v84, null, v74, v74, v0
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_mul_f32_e32 v85, v81, v90
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v87, null, v74, v74, v8
	v_div_fmas_f32 v76, v76, v80, v89
	v_fmac_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v86, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v87
	v_div_fixup_f32 v62, v75, v74, v62
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v75, -v88, v79, v83
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v88, null, v73, v73, v63
	v_rcp_f32_e32 v82, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v80, -v87, v78, 1.0
	v_div_scale_f32 v81, s9, v8, v74, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v90, v85
	v_div_fixup_f32 v45, v75, v74, v45
	v_div_fixup_f32 v61, v76, v74, v61
	v_fma_f32 v89, -v84, v82, 1.0
	v_div_scale_f32 v76, s8, v0, v74, v0
	v_div_fixup_f32 v9, v77, v74, v9
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v73, v73, v64
	v_div_scale_f32 v90, null, v73, v73, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_rcp_f32_e32 v83, v80
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v87, v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v75, v78
	v_div_scale_f32 v75, s10, v64, v73, v64
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v89, -v88, v77, 1.0
	v_mul_f32_e32 v79, v76, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v89, v77
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v73, v73, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v83
	v_div_fmas_f32 v76, v76, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v79, -v87, v86, v81
	v_mul_f32_e32 v81, v75, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v0, v76, v74, v0
	v_fma_f32 v76, -v90, v92, 1.0
	v_div_scale_f32 v82, s8, v63, v73, v63
	v_fma_f32 v89, -v80, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v85, 1.0
	v_fmac_f32_e32 v92, v76, v92
	v_div_scale_f32 v76, s9, v57, v73, v57
	v_fmac_f32_e32 v81, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s11, v60, v73, v60
	v_div_fmas_f32 v78, v79, v78, v86
	v_mul_f32_e32 v91, v82, v77
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v8, v78, v74, v8
	v_fma_f32 v74, -v80, v81, v75
	v_mul_f32_e32 v80, v76, v92
	v_mul_f32_e32 v86, v87, v85
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v78, null, v73, v73, v72
	v_div_fmas_f32 v74, v74, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v84, v86, v87
	v_fmac_f32_e32 v91, v79, v77
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v81, null, v73, v73, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v79, -v88, v91, v82
	v_div_fixup_f32 v64, v74, v73, v64
	v_rcp_f32_e32 v83, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v84, -v90, v80, v76
	v_fma_f32 v82, -v78, v75, 1.0
	v_div_fixup_f32 v63, v77, v73, v63
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v84, v92 :: v_dual_fmac_f32 v75, v82, v75
	v_div_scale_f32 v82, s8, v72, v73, v72
	v_div_fixup_f32 v60, v79, v73, v60
	v_div_scale_f32 v79, null, v73, v73, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v82, v75
	v_fma_f32 v76, -v90, v80, v76
	v_fma_f32 v77, -v81, v83, 1.0
	v_rcp_f32_e32 v85, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v78, v74, v82
	v_div_fmas_f32 v76, v76, v92, v80
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v74, v84, v75
	v_div_scale_f32 v84, null, v73, v73, v65
	v_div_fixup_f32 v57, v76, v73, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v78, v74, v82
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v82, v85
	v_div_fmas_f32 v74, v76, v75, v74
	v_div_scale_f32 v82, null, v73, v73, v71
	v_div_scale_f32 v76, s8, v66, v73, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v72, v74, v73, v72
	v_fma_f32 v74, -v84, v86, 1.0
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s10, v70, v73, v70
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v74, v86
	v_div_scale_f32 v75, null, v73, v73, v7
	v_mul_f32_e32 v80, v77, v83
	v_div_scale_f32 v74, s9, v65, v73, v65
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s10, v7, v73, v7
	v_fma_f32 v78, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v82, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v90, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v90, s11, v71, v73, v71
	v_fma_f32 v77, -v81, v80, v77
	v_mul_f32_e32 v81, v76, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v87, -v75, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v74, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v70, v77, v73, v70
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v73, v73, v68
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v89, v78
	v_rcp_f32_e32 v91, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v74, -v84, v83, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v73, v73, v56
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	v_div_fmas_f32 v74, v74, v86, v83
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v68, v73, v68
	v_div_fmas_f32 v75, v75, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v77, v80, v91
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v66, v76, v73, v66
	v_div_fmas_f32 v78, v78, v88, v79
	v_div_fixup_f32 v65, v74, v73, v65
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v7, v75, v73, v7
	v_div_scale_f32 v75, null, v73, v73, v48
	v_div_fixup_f32 v71, v78, v73, v71
	v_div_scale_f32 v78, null, v73, v73, v5
	v_fmac_f32_e32 v77, v82, v91
	v_fma_f32 v76, -v81, v83, 1.0
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v85, null, v73, v73, v6
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v73, v73, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v82, 1.0
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v74, -v87, v77, v80
	v_rcp_f32_e32 v80, v76
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, s10, v5, v73, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v91, v77
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v79, vcc_lo, v56, v73, v56
	v_mul_f32_e32 v93, v89, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v68, v74, v73, v68
	v_fma_f32 v86, -v76, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s9, v4, v73, v4
	v_fma_f32 v74, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v86, v80
	v_dual_mul_f32 v84, v79, v83 :: v_dual_fmac_f32 v77, v74, v77
	v_div_scale_f32 v74, s8, v48, v73, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v81, v84, v79
	v_mul_f32_e32 v90, v74, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v88, -v75, v90, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v81, -v76, v92, v86
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s11, v6, v73, v6
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v88, -v78, v93, v89
	v_fmac_f32_e32 v92, v81, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v74, -v75, v90, v74
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	v_div_fmas_f32 v74, v74, v77, v90
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v75, v87
	v_fma_f32 v75, -v78, v93, v89
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	v_div_fixup_f32 v5, v75, v73, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v73, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v56, v79, v73, v56
	v_div_fixup_f32 v48, v74, v73, v48
	v_div_fixup_f32 v4, v76, v73, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v76, v37
	v_cvt_i32_f32_e32 v100, v5
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v40, 15, v58
	v_and_b32_e32 v58, 15, v61
	v_and_b32_e32 v61, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v102
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v5, 15, v27
	v_and_b32_e32 v27, 15, v30
	v_and_b32_e32 v30, 15, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v16, 16, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_cvt_i32_f32_e32 v80, v12
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v101, v6
	v_and_b32_e32 v6, 15, v20
	v_and_b32_e32 v11, 15, v28
	v_and_b32_e32 v12, 15, v18
	v_and_b32_e32 v28, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 4, v104
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v18, 6, v16
	v_lshlrev_b32_e32 v20, 6, v102
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v74, v32
	v_cvt_i32_f32_e32 v75, v33
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v82, v42
	v_cvt_i32_f32_e32 v83, v43
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v89, v63
	v_cvt_i32_f32_e32 v90, v60
	v_cvt_i32_f32_e32 v91, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v17, v17, v26
	v_add3_u32 v0, 0, v0, v18
	v_and_or_b32 v18, 0x1b00, v20, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_cvt_i32_f32_e32 v73, v15
	v_cvt_i32_f32_e32 v77, v14
	v_cvt_i32_f32_e32 v78, v41
	v_cvt_i32_f32_e32 v79, v13
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v85, v10
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v94, v7
	v_cvt_i32_f32_e32 v95, v71
	v_cvt_i32_f32_e32 v96, v68
	v_cvt_i32_f32_e32 v97, v56
	v_cvt_i32_f32_e32 v87, v9
	v_cvt_i32_f32_e32 v88, v8
	v_cvt_i32_f32_e32 v92, v66
	v_cvt_i32_f32_e32 v93, v65
	v_cvt_i32_f32_e32 v98, v48
	v_cvt_i32_f32_e32 v99, v4
	v_and_b32_e32 v4, 15, v31
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v35
	v_and_b32_e32 v9, 15, v34
	v_and_b32_e32 v10, 15, v29
	v_and_b32_e32 v13, 15, v47
	v_and_b32_e32 v14, 15, v38
	v_and_b32_e32 v15, 15, v36
	v_and_b32_e32 v31, 15, v44
	v_and_b32_e32 v32, 15, v39
	v_and_b32_e32 v33, 15, v74
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v35, 15, v51
	v_and_b32_e32 v36, 15, v46
	v_and_b32_e32 v38, 15, v76
	v_and_b32_e32 v41, 15, v50
	v_and_b32_e32 v42, 15, v49
	v_and_b32_e32 v47, 15, v55
	v_and_b32_e32 v48, 15, v52
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v50, 15, v83
	v_and_b32_e32 v63, 15, v64
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v65, 15, v90
	v_and_b32_e32 v66, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v17, v24
	v_xad_u32 v17, v18, v105, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v45
	v_and_b32_e32 v29, 15, v73
	v_and_b32_e32 v39, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v44, 15, v79
	v_and_b32_e32 v45, 15, v80
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v51, 15, v67
	v_and_b32_e32 v55, 15, v85
	v_and_b32_e32 v56, 15, v69
	v_and_b32_e32 v57, 15, v62
	v_and_b32_e32 v67, 15, v72
	v_and_b32_e32 v71, 15, v94
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v73, 15, v96
	v_and_b32_e32 v74, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v17
	ds_load_b128 v[12:15], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v17
	ds_load_b128 v[39:42], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v17
	ds_load_b128 v[55:58], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v17
	ds_load_b128 v[71:74], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v17
	ds_load_b128 v[26:29], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[35:38]
	ds_store_b128 v0, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v17
	ds_load_b128 v[43:46], v17 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_and_b32_e32 v60, 15, v87
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v84, v53
	v_cvt_i32_f32_e32 v70, v70
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v52, 15, v59
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v68, 15, v70
	v_and_b32_e32 v69, 15, v92
	v_and_b32_e32 v70, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[51:54]
	ds_store_b128 v0, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v17
	ds_load_b128 v[59:62], v17 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v98
	v_and_b32_e32 v76, 15, v99
	v_and_b32_e32 v77, 15, v100
	v_and_b32_e32 v78, 15, v101
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	v_lshl_or_b32 v14, v26, 4, v8
	v_lshl_or_b32 v26, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v104
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[67:70]
	ds_store_b128 v0, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v17
	ds_load_b128 v[75:78], v17 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v27, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v28, 4, v10
	v_lshl_or_b32 v11, v29, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s8, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v24, v43, 4, v35
	v_lshl_or_b32 v27, v45, 4, v37
	v_lshl_or_b32 v28, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v39, 4, v31
	v_lshl_or_b32 v20, v40, 4, v32
	v_lshl_or_b32 v22, v41, 4, v33
	v_lshl_or_b32 v23, v42, 4, v34
	v_lshl_or_b32 v33, v59, 4, v51
	v_lshl_or_b32 v34, v60, 4, v52
	v_lshl_or_b32 v35, v61, 4, v53
	v_lshl_or_b32 v36, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v24.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v55, 4, v47
	v_lshl_or_b32 v30, v56, 4, v48
	v_lshl_or_b32 v31, v57, 4, v49
	v_lshl_or_b32 v32, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v75, 4, v67
	v_lshl_or_b32 v42, v76, 4, v68
	v_lshl_or_b32 v43, v77, 4, v69
	v_lshl_or_b32 v21, v78, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v22.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v18.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v38, v72, 4, v64
	v_lshl_or_b32 v39, v73, 4, v65
	v_lshl_or_b32 v40, v74, 4, v66
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
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v102
	v_lshrrev_b32_e32 v5, 2, v16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
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
	buffer_store_b64 v[6:7], v8, s[8:11], 0 offen
	buffer_store_b64 v[10:11], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v25.h
	v_mov_b16_e32 v1.l, v19.h
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_and_b32 vcc_lo, vcc_lo, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s41, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp76:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1020
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1020
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35068
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 1020
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 1020
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 254
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
