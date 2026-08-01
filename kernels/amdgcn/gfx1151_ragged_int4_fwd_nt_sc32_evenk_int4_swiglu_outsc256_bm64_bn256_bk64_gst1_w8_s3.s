	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v121, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v67, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v116, 4, v121
	v_lshlrev_b32_e32 v35, 4, v121
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s45, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s10
	s_addc_u32 s3, s5, s11
	s_load_b64 s[42:43], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s42, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s43, 0, s2
	v_add_nc_u32_e32 v41, s42, v116
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[40:41], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[2:3]
	v_cmp_le_i64_e64 s6, s[34:35], v[4:5]
	v_cmp_le_i64_e64 s7, s[34:35], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[2:3]
	v_cmp_gt_i64_e64 s8, s[40:41], v[4:5]
	v_cmp_gt_i64_e64 s9, s[40:41], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s42, v116
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v121
	v_and_b32_e32 v2, 0x80, v121
	v_lshlrev_b32_e32 v3, 4, v121
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v175, 16, v5
	v_add_nc_u32_e32 v176, 32, v5
	v_add_nc_u32_e32 v177, 48, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr176
                                        ; implicit-def: $vgpr177
.LBB0_3:                                ; %Flow562
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v123, 0
	s_load_b128 s[28:31], s[0:1], 0x40
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v178, 0xf0, v121
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v125, 15, v121
	v_mov_b32_e32 v131, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v115, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v155, 0
	v_mov_b32_e32 v243, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v163, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v165, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v179, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v183, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v182, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	v_mov_b32_e32 v8, v125
	s_load_b32 s21, s[0:1], 0x58
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v35, off offset:496
	scratch_store_b32 off, v41, off offset:492
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v38, 16, v41
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s8, s42, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s43, 0, s8
	v_add_nc_u32_e32 v39, 32, v41
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s9, s7, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[0:1]
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v0, s42, v8
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v40, 48, v41
	v_mul_lo_u32 v41, v41, s21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	v_bfe_i32 v32, v121, 3, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s11, s[8:9], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[40:41], v[2:3]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s44
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v35, 0x70, v35
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v32, 0x88, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v41, off offset:184
	scratch_store_b32 off, v38, off offset:476
	v_mul_lo_u32 v38, v38, s21
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v33, 3, v121
	v_or_b32_e32 v37, v32, v35
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s44
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v33, 0x700, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v38, off offset:188
	scratch_store_b32 off, v39, off offset:480
	v_mul_lo_u32 v38, v39, s21
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s20, s45, 8
	v_or3_b32 v35, v35, v33, v32
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:156
	scratch_store_b32 off, v116, off offset:472
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v0, s20, v116
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v38, off offset:192
	scratch_store_b32 off, v40, off offset:484
	v_mul_lo_u32 v38, v40, s21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s7, s33, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, 0xf0, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s8, s21, s7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[4:5]
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s8, s11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[34:35], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[40:41], v[4:5]
	v_cmp_gt_i64_e64 s10, s[40:41], v[6:7]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xe0, v0
	v_or_b32_e32 v3, 0xd0, v0
	v_or_b32_e32 v4, 0xc0, v0
	v_or_b32_e32 v5, 0xb0, v0
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v6, s33, v1
	v_or_b32_e32 v11, 0xa0, v0
	v_or_b32_e32 v12, 0x90, v0
	v_or_b32_e32 v13, 0x80, v0
	v_or_b32_e32 v14, 0x70, v0
	v_or_b32_e32 v15, 0x60, v0
	v_or_b32_e32 v21, 0x50, v0
	v_or_b32_e32 v22, 64, v0
	v_or_b32_e32 v23, 48, v0
	v_or_b32_e32 v24, 32, v0
	v_or_b32_e32 v25, 16, v0
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v31, s33, v0
	scratch_store_b32 off, v38, off offset:196 ; 4-byte Folded Spill
	v_mad_u64_u32 v[38:39], null, v0, s21, s[22:23]
	v_mad_u64_u32 v[0:1], null, s21, v1, s[22:23]
	scratch_store_b32 off, v37, off offset:172 ; 4-byte Folded Spill
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v30, s33, v25
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v29, s33, v24
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v28, s33, v23
	scratch_store_b64 off, v[0:1], off offset:320 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s21, s[22:23]
	scratch_store_b32 off, v35, off offset:176 ; 4-byte Folded Spill
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v27, s33, v22
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v26, s33, v21
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v20, s33, v15
	scratch_store_b64 off, v[0:1], off offset:328 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s21, s[22:23]
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v19, s33, v14
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v18, s33, v13
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v17, s33, v12
	scratch_store_b64 off, v[0:1], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s21, s[22:23]
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v16, s33, v11
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v10, s33, v5
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v9, s33, v4
	scratch_store_b64 off, v[0:1], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v28, s21, s[22:23]
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v8, s33, v3
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v7, s33, v2
	v_bfe_i32 v34, v121, 7, 1
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v36, 0x7f, v121
	scratch_store_b64 off, v[0:1], off offset:352 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v27, s21, s[22:23]
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v34, 0x88, v34
	v_xor_b32_e32 v33, 8, v37
	v_dual_mov_b32 v166, 0 :: v_dual_lshlrev_b32 v37, 2, v178
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v32, v34, v36
	scratch_store_b64 off, v[0:1], off offset:360 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v26, s21, s[22:23]
	v_xor_b32_e32 v34, 8, v35
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v35, 5, v121
	v_or_b32_e32 v36, s20, v121
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v36, off offset:180
	scratch_store_b32 off, v121, off offset:468
	scratch_store_b64 off, v[0:1], off offset:368
	v_mad_u64_u32 v[0:1], null, v20, s21, s[22:23]
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v36, 1, v121
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v35, 32, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v181, 0 :: v_dual_and_b32 v36, 28, v36
	scratch_store_b64 off, v[0:1], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s21, s[22:23]
	v_add3_u32 v35, 0, v37, v35
	v_lshlrev_b32_e32 v37, 1, v178
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v180, 0, v32
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b64 off, v[0:1], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v18, s21, s[22:23]
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b64 off, v[0:1], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s21, s[22:23]
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v161, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v127, 0
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v16, s21, s[22:23]
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v157, 0
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s21, s[22:23]
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v120, 0
	v_mov_b32_e32 v105, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v103, 0
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s21, s[22:23]
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v139, 0
	scratch_store_b64 off, v[0:1], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v8, s21, s[22:23]
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v145, 0
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v7, s21, s[22:23]
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v135, 0
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v6, s21, s[22:23]
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v33
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v34
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v155, 0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v35, v36
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v178, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v118, 0, v37
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v69, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[38:39], off offset:200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[38:39], null, v25, s21, s[22:23]
	v_mad_u64_u32 v[24:25], null, v24, s21, s[22:23]
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v66, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[24:25], off offset:216
	scratch_store_b32 off, v0, off offset:8
	v_mad_u64_u32 v[23:24], null, v23, s21, s[22:23]
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v142, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b64 off, v[23:24], off offset:224
	v_mad_u64_u32 v[22:23], null, s21, v22, s[22:23]
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v70, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s10
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:16
	scratch_store_b64 off, v[22:23], off offset:232
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[21:22], null, s21, v21, s[22:23]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s46, s44, s11
	s_mov_b32 s11, 0x31027000
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s20, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s9
	s_and_b32 s13, s13, 0xffff
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s37, s19, 0xffff
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s36, s18
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[38:39], off offset:208 ; 8-byte Folded Spill
	s_mov_b32 s27, s20
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[21:22], off offset:240 ; 8-byte Folded Spill
	v_mad_u64_u32 v[21:22], null, s21, v15, s[22:23]
	v_mad_u64_u32 v[14:15], null, s21, v14, s[22:23]
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s47, s20
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[21:22], off offset:248
	scratch_store_b64 off, v[14:15], off offset:256
	scratch_store_b32 off, v0, off offset:24
	v_mad_u64_u32 v[13:14], null, s21, v13, s[22:23]
	scratch_store_b64 off, v[13:14], off offset:264 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s21, v12, s[22:23]
	scratch_store_b64 off, v[12:13], off offset:272 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s21, v11, s[22:23]
	scratch_store_b64 off, v[11:12], off offset:280 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s21, v5, s[22:23]
	v_mad_u64_u32 v[4:5], null, s21, v4, s[22:23]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:288
	scratch_store_b64 off, v[4:5], off offset:296
	v_mad_u64_u32 v[3:4], null, s21, v3, s[22:23]
	scratch_store_b64 off, v[3:4], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s21, v2, s[22:23]
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	scratch_store_b64 off, v[2:3], off offset:312 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b64 v[6:7], off, off offset:200
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v206, off offset:140
	scratch_store_b32 off, v205, off offset:136
	scratch_store_b32 off, v204, off offset:132
	scratch_store_b32 off, v203, off offset:128
	scratch_store_b32 off, v202, off offset:124
	scratch_store_b32 off, v201, off offset:120
	scratch_store_b32 off, v200, off offset:116
	scratch_store_b32 off, v199, off offset:112
	scratch_store_b32 off, v198, off offset:108
	scratch_store_b32 off, v109, off offset:104
	scratch_store_b32 off, v74, off offset:100
	scratch_store_b32 off, v225, off offset:96
	scratch_store_b32 off, v136, off offset:92
	scratch_store_b32 off, v75, off offset:88
	scratch_store_b32 off, v115, off offset:84
	scratch_store_b32 off, v155, off offset:80
	scratch_store_b32 off, v150, off offset:76
	scratch_store_b32 off, v76, off offset:72
	scratch_store_b32 off, v133, off offset:68
	scratch_store_b32 off, v79, off offset:64
	scratch_store_b32 off, v80, off offset:60
	scratch_store_b32 off, v81, off offset:56
	scratch_store_b32 off, v82, off offset:52
	v_mov_b32_e32 v109, v125
	v_mov_b32_e32 v133, v160
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_add_i32 s48, s47, s46
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s38, s10
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s48, s48, s7
	v_lshl_or_b32 v1, s47, 4, v109
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s39, s11
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	scratch_load_b64 v[7:8], off, off offset:208 ; 8-byte Folded Reload
	v_mov_b32_e32 v115, v243
	scratch_load_b64 v[8:9], off, off offset:216 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_mov_b32_e32 v192, s27
	v_mov_b32_e32 v188, s23
	scratch_load_b64 v[9:10], off, off offset:224 ; 8-byte Folded Reload
	v_mov_b32_e32 v121, v242
	v_mov_b32_e32 v125, v73
	s_clause 0xb                            ; 96-byte Folded Reload
	scratch_load_b64 v[10:11], off, off offset:232
	scratch_load_b64 v[11:12], off, off offset:240
	scratch_load_b64 v[12:13], off, off offset:248
	scratch_load_b64 v[13:14], off, off offset:256
	scratch_load_b64 v[14:15], off, off offset:264
	scratch_load_b64 v[15:16], off, off offset:272
	scratch_load_b64 v[16:17], off, off offset:280
	scratch_load_b64 v[17:18], off, off offset:288
	scratch_load_b64 v[18:19], off, off offset:296
	scratch_load_b64 v[19:20], off, off offset:304
	scratch_load_b64 v[20:21], off, off offset:312
	scratch_load_b64 v[21:22], off, off offset:320
	v_mov_b32_e32 v190, s25
	v_dual_mov_b32 v186, s21 :: v_dual_mov_b32 v191, s26
	v_dual_mov_b32 v160, v114 :: v_dual_mov_b32 v189, s24
	v_dual_mov_b32 v116, v63 :: v_dual_mov_b32 v187, s22
	v_dual_mov_b32 v185, s20 :: v_dual_mov_b32 v114, v67
	v_dual_mov_b32 v143, v61 :: v_dual_mov_b32 v150, v131
	v_dual_mov_b32 v131, v110 :: v_dual_mov_b32 v110, v68
	v_mov_b32_e32 v136, v159
	v_mov_b32_e32 v159, v119
	v_mov_b32_e32 v119, v69
	v_dual_mov_b32 v243, v71 :: v_dual_mov_b32 v242, v66
	v_dual_mov_b32 v155, v70 :: v_dual_mov_b32 v184, v72
	v_mov_b32_e32 v92, v137
	v_mov_b32_e32 v137, v93
	v_dual_mov_b32 v93, v102 :: v_dual_mov_b32 v102, v101
	v_mov_b32_e32 v101, v128
	v_mov_b32_e32 v128, v108
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v2, v0, v1
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v6, v6, v1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v6, v6, s[8:11], 0 offen
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v7, v7, v1
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v8, v8, v1
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v9, v9, v1
	s_clause 0x1
	buffer_load_u8 v7, v7, s[8:11], 0 offen
	buffer_load_u8 v8, v8, s[8:11], 0 offen
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v10, v10, v1
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v11, v11, v1
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v12, v12, v1
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v13, v13, v1
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v14, v14, v1
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v15, v15, v1
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v16, v16, v1
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v17, v17, v1
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v18, v18, v1
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v19, v19, v1
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v20, v20, v1
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v21, v21, v1
	s_clause 0xb
	buffer_load_u8 v9, v9, s[8:11], 0 offen
	buffer_load_u8 v10, v10, s[8:11], 0 offen
	buffer_load_u8 v11, v11, s[8:11], 0 offen
	buffer_load_u8 v12, v12, s[8:11], 0 offen
	buffer_load_u8 v13, v13, s[8:11], 0 offen
	buffer_load_u8 v14, v14, s[8:11], 0 offen
	buffer_load_u8 v15, v15, s[8:11], 0 offen
	buffer_load_u8 v16, v16, s[8:11], 0 offen
	buffer_load_u8 v17, v17, s[8:11], 0 offen
	buffer_load_u8 v18, v18, s[8:11], 0 offen
	buffer_load_u8 v19, v19, s[8:11], 0 offen
	buffer_load_u8 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v3, v0, v1
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, v0, v1
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, v0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u8 v21, v21, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	buffer_load_u8 v3, v3, s[12:15], 0 offen
	buffer_load_u8 v4, v4, s[12:15], 0 offen
	buffer_load_u8 v5, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b8 v180, v2
	s_waitcnt vmcnt(2)
	ds_store_b8 v180, v3 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v180, v4 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v180, v5 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v0
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	ds_load_2addr_b64 v[39:42], v2 offset1:32
	ds_load_2addr_b64 v[225:228], v2 offset0:64 offset1:96
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[229:232], v0 offset1:32
	ds_load_2addr_b64 v[175:178], v0 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:328
	scratch_load_b64 v[3:4], off, off offset:336
	scratch_load_b64 v[4:5], off, off offset:344
	ds_store_b8 v180, v6
	ds_store_b8 v180, v7 offset:256
	ds_store_b8 v180, v8 offset:512
	ds_store_b8 v180, v9 offset:768
	ds_store_b8 v180, v10 offset:1024
	ds_store_b8 v180, v11 offset:1280
	ds_store_b8 v180, v12 offset:1536
	ds_store_b8 v180, v13 offset:1792
	ds_store_b8 v180, v14 offset:2048
	ds_store_b8 v180, v15 offset:2304
	ds_store_b8 v180, v16 offset:2560
	ds_store_b8 v180, v17 offset:2816
	ds_store_b8 v180, v18 offset:3072
	ds_store_b8 v180, v19 offset:3328
	ds_store_b8 v180, v20 offset:3584
	ds_store_b8 v180, v21 offset:3840
	s_clause 0xc                            ; 104-byte Folded Reload
	scratch_load_b64 v[5:6], off, off offset:352
	scratch_load_b64 v[6:7], off, off offset:360
	scratch_load_b64 v[7:8], off, off offset:368
	scratch_load_b64 v[8:9], off, off offset:376
	scratch_load_b64 v[9:10], off, off offset:384
	scratch_load_b64 v[10:11], off, off offset:392
	scratch_load_b64 v[11:12], off, off offset:400
	scratch_load_b64 v[12:13], off, off offset:408
	scratch_load_b64 v[13:14], off, off offset:416
	scratch_load_b64 v[14:15], off, off offset:424
	scratch_load_b64 v[15:16], off, off offset:432
	scratch_load_b64 v[16:17], off, off offset:440
	scratch_load_b64 v[17:18], off, off offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v2, v2, v1
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v3, v3, v1
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v4, v4, v1
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v5, v5, v1
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v6, v6, v1
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v7, v7, v1
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v8, v8, v1
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v9, v9, v1
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v10, v10, v1
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v11, v11, v1
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v12, v12, v1
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v13, v13, v1
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v14, v14, v1
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v15, v15, v1
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, v16, v1
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, v17, v1
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v2, v2, s[8:11], 0 offen
	buffer_load_u8 v3, v3, s[8:11], 0 offen
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	buffer_load_u8 v6, v6, s[8:11], 0 offen
	buffer_load_u8 v7, v7, s[8:11], 0 offen
	buffer_load_u8 v8, v8, s[8:11], 0 offen
	buffer_load_u8 v17, v9, s[8:11], 0 offen
	buffer_load_u8 v18, v10, s[8:11], 0 offen
	buffer_load_u8 v19, v11, s[8:11], 0 offen
	buffer_load_u8 v20, v12, s[8:11], 0 offen
	buffer_load_u8 v13, v13, s[8:11], 0 offen
	buffer_load_u8 v14, v14, s[8:11], 0 offen
	buffer_load_u8 v15, v15, s[8:11], 0 offen
	buffer_load_u8 v16, v16, s[8:11], 0 offen
	buffer_load_u8 v1, v1, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v21, 0, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	ds_load_2addr_stride64_b64 v[9:12], v21 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[193:200], v[9:10], v[39:40], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[201:208], v[11:12], v[39:40], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[209:216], v[9:10], v[41:42], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[217:224], v[11:12], v[41:42], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[9:10], v[225:226], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[11:12], v[225:226], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[11:12], v[227:228], v[185:192] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[79:82], v0 offset1:4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v180, v2
	ds_store_b8 v180, v3 offset:256
	ds_store_b8 v180, v4 offset:512
	ds_store_b8 v180, v5 offset:768
	ds_store_b8 v180, v6 offset:1024
	ds_store_b8 v180, v7 offset:1280
	ds_store_b8 v180, v8 offset:1536
	ds_store_b8 v180, v17 offset:1792
	ds_store_b8 v180, v18 offset:2048
	ds_store_b8 v180, v19 offset:2304
	ds_store_b8 v180, v20 offset:2560
	ds_store_b8 v180, v13 offset:2816
	ds_store_b8 v180, v14 offset:3072
	ds_store_b8 v180, v15 offset:3328
	ds_store_b8 v180, v16 offset:3584
	ds_store_b8 v180, v1 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[73:76], v21 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[227:228], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[79:80], v[229:230], v[193:200] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[177:178], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[201:208], v[81:82], v[229:230], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[217:224], v[81:82], v[231:232], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[81:82], v[175:176], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[81:82], v[177:178], v[167:174] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[39:40], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[39:40], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[41:42], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[41:42], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[225:226], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[225:226], v[185:192] neg_lo:[1,1,0]
	v_mov_b32_e32 v225, v139
	v_mov_b32_e32 v139, v64
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[227:228], v[185:192] neg_lo:[1,1,0]
	v_mov_b32_e32 v226, v140
	v_mov_b32_e32 v140, v65
	v_wmma_i32_16x16x16_iu4 v[65:72], v[75:76], v[227:228], v[185:192] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[73:76], v0 offset1:4
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v82, v200
	v_mov_b32_e32 v200, v152
	v_mov_b32_e32 v152, v100
	v_cvt_f32_i32_e32 v100, v1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[209:216], v[79:80], v[231:232], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[79:80], v[175:176], v[234:241] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v78, v196
	v_mov_b32_e32 v196, v149
	v_cvt_f32_i32_e32 v149, v245
	v_cvt_f32_i32_e32 v0, v209
	v_cvt_f32_i32_e32 v209, v4
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v4, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v191, v241
	v_cvt_f32_i32_e32 v188, v237
	v_mov_b32_e32 v190, v97
	v_cvt_f32_i32_e32 v97, v238
	v_cvt_f32_i32_e32 v81, v199
	v_cvt_f32_i32_e32 v199, v224
	v_cvt_f32_i32_e32 v253, v210
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[229:230], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[231:232], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[231:232], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[229:230], v[9:16] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v22
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v229, v202
	v_mov_b32_e32 v202, v153
	v_cvt_f32_i32_e32 v153, v2
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v2, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v23
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[177:178], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[75:76], v[177:178], v[65:72] neg_lo:[1,1,0]
	v_dual_mov_b32 v177, v144 :: v_dual_mov_b32 v178, v165
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v24
	v_mov_b32_e32 v165, v91
	v_dual_mov_b32 v91, v86 :: v_dual_mov_b32 v86, v117
	v_mov_b32_e32 v117, v162
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v3, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v37, v52
	scratch_load_b32 v52, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[175:176], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v176, v107
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v107, v5
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v241, v27
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v76, v195
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v245, v44
	v_cvt_f32_i32_e32 v27, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v64
	v_mov_b32_e32 v64, v139
	v_cvt_f32_i32_e32 v44, v67
	v_mov_b32_e32 v67, v114
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v195, v221
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v238, v11
	v_cvt_f32_i32_e32 v237, v12
	v_cvt_f32_i32_e32 v221, v13
	v_cvt_f32_i32_e32 v224, v30
	v_cvt_f32_i32_e32 v30, v53
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v211
	v_cvt_f32_i32_e32 v231, v216
	v_cvt_f32_i32_e32 v108, v6
	v_cvt_f32_i32_e32 v211, v7
	v_cvt_f32_i32_e32 v210, v8
	v_mov_b32_e32 v144, v146
	v_mov_b32_e32 v146, v99
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v99, v45
	v_cvt_f32_i32_e32 v45, v66
	v_mov_b32_e32 v66, v242
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v79, v197
	v_cvt_f32_i32_e32 v197, v204
	v_mov_b32_e32 v204, v183
	v_cvt_f32_i32_e32 v183, v212
	v_cvt_f32_i32_e32 v73, v193
	v_cvt_f32_i32_e32 v175, v201
	v_cvt_f32_i32_e32 v232, v207
	v_cvt_f32_i32_e32 v201, v218
	v_cvt_f32_i32_e32 v212, v240
	v_cvt_f32_i32_e32 v207, v247
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v218, v16
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v240, v28
	v_cvt_f32_i32_e32 v28, v33
	v_cvt_f32_i32_e32 v19, v38
	v_cvt_f32_i32_e32 v38, v35
	v_cvt_f32_i32_e32 v247, v42
	v_cvt_f32_i32_e32 v42, v65
	v_dual_mov_b32 v65, v140 :: v_dual_mov_b32 v140, v226
	v_cvt_f32_i32_e32 v33, v72
	v_mov_b32_e32 v72, v184
	v_cvt_f32_i32_e32 v35, v69
	v_mov_b32_e32 v69, v119
	v_mov_b32_e32 v119, v159
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v75, v194
	v_mov_b32_e32 v74, v181
	v_cvt_f32_i32_e32 v181, v213
	v_cvt_f32_i32_e32 v194, v220
	v_mov_b32_e32 v213, v85
	v_cvt_f32_i32_e32 v85, v234
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v220, v14
	v_mov_b32_e32 v159, v136
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v228, v206
	v_cvt_f32_i32_e32 v227, v223
	v_dual_mov_b32 v206, v104 :: v_dual_mov_b32 v139, v225
	v_cvt_f32_i32_e32 v104, v246
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v223, v31
	v_cvt_f32_i32_e32 v246, v43
	v_cvt_f32_i32_e32 v31, v70
	v_mov_b32_e32 v70, v155
	v_cvt_f32_i32_e32 v43, v68
	v_mov_b32_e32 v68, v110
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v255, v215
	v_cvt_f32_i32_e32 v215, v219
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v219, v15
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v21, v39
	v_cvt_f32_i32_e32 v39, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v23, v48
	v_cvt_f32_i32_e32 v36, v49
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v189, v235
	v_cvt_f32_i32_e32 v254, v214
	v_cvt_f32_i32_e32 v187, v236
	v_cvt_f32_i32_e32 v80, v198
	v_cvt_f32_i32_e32 v198, v222
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v222, v32
	v_cvt_f32_i32_e32 v32, v71
	v_mov_b32_e32 v71, v243
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v208
	v_cvt_f32_i32_e32 v208, v248
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v22, v40
	v_cvt_f32_i32_e32 v248, v41
	v_cvt_f32_i32_e32 v41, v50
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v214, v239
	v_cvt_f32_i32_e32 v193, v203
	v_cvt_f32_i32_e32 v192, v217
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v236, v61
	v_mov_b32_e32 v61, v143
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v203, v205
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v217, v17
	v_cvt_f32_i32_e32 v17, v20
	v_cvt_f32_i32_e32 v20, v29
	v_cvt_f32_i32_e32 v29, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v186, v249
	v_cvt_f32_i32_e32 v205, v250
	v_cvt_f32_i32_e32 v185, v251
	v_cvt_f32_i32_e32 v252, v252
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v239, v10
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v234, v63
	v_mov_b32_e32 v63, v116
	v_cvt_f32_i32_e32 v10, v57
	v_cvt_f32_i32_e32 v251, v58
	v_cvt_f32_i32_e32 v250, v59
	v_cvt_f32_i32_e32 v249, v60
	v_cvt_f32_i32_e32 v235, v62
	v_cvt_f32_i32_e32 v55, v55
	v_mov_b32_e32 v243, v115
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v4, s47, v4, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, s47, v2, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s47, v1, 1
	v_mov_b32_e32 v114, v160
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s47, v3, 1
	v_mov_b32_e32 v160, v133
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s47, s47, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, v52, s48, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v5, v5, s[36:39], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v1, v1, s[16:19], 0 offen
	buffer_load_u16 v11, v2, s[16:19], 0 offen
	buffer_load_u16 v12, v3, s[16:19], 0 offen
	buffer_load_u16 v13, v4, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v53, off, off offset:464 ; 4-byte Folded Reload
	v_mov_b32_e32 v242, v121
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s47, s44
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v2, 16, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v216, 16, v1
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v53, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v118
	ds_load_b128 v[5:8], v118 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v11, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v225, off, off offset:96
	scratch_load_b32 v51, off, off offset:44
	scratch_load_b32 v50, off, off offset:8
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v145, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v11, v253
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v147, v0, v2 :: v_dual_mul_f32 v0, v11, v156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v14, v216, v73 :: v_dual_mov_b32 v73, v125
	v_mov_b32_e32 v125, v109
	scratch_load_b32 v109, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v242, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v11, v183 :: v_dual_mov_b32 v183, v204
	scratch_load_b32 v204, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v0, v4
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v0, 16, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v12, v0, v85 :: v_dual_mov_b32 v85, v213
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v14, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v216, v75
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v75, off, off offset:88
	scratch_load_b32 v136, off, off offset:92
	scratch_load_b32 v115, off, off offset:84
	scratch_load_b32 v155, off, off offset:80
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v14, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v216, v76
	v_dual_mov_b32 v110, v131 :: v_dual_mov_b32 v131, v150
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v76, off, off offset:72
	scratch_load_b32 v150, off, off offset:76
	scratch_load_b32 v133, off, off offset:68
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v159, v14, v3 :: v_dual_mul_f32 v14, v216, v78
	v_fmac_f32_e32 v131, v12, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v12, v0, v189 :: v_dual_fmac_f32 v157, v14, v4
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v14, off, off
	scratch_load_b32 v48, off, off offset:32
	scratch_load_b32 v49, off, off offset:36
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v133, v12, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v0, v187
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v12, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v0, v188
	scratch_store_b32 off, v49, off offset:36 ; 4-byte Folded Spill
	scratch_load_b32 v49, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v155, v12, v4 :: v_dual_lshlrev_b32 v12, 16, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v12, v100
	v_mov_b32_e32 v100, v152
	v_mov_b32_e32 v152, v200
	scratch_load_b32 v200, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v49, v13, v1
	scratch_load_b32 v13, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v12, v153
	v_mov_b32_e32 v153, v202
	scratch_load_b32 v202, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v13, v1, v2
	scratch_load_b32 v2, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v1, v12, v162 :: v_dual_mov_b32 v162, v117
	v_dual_mov_b32 v117, v86 :: v_dual_mov_b32 v86, v91
	v_mov_b32_e32 v91, v165
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v1, v3 :: v_dual_mul_f32 v1, v12, v209
	scratch_load_b32 v3, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v165, v178 :: v_dual_fmac_f32 v2, v1, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v216, v79
	scratch_load_b32 v79, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v111, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v216, v80
	scratch_load_b32 v80, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v114, v1, v6 :: v_dual_mul_f32 v1, v216, v81
	scratch_store_b32 off, v2, off offset:24 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:12
	scratch_load_b32 v81, off, off offset:56
	v_dual_fmac_f32 v136, v1, v7 :: v_dual_mul_f32 v1, v216, v82
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v119, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v11, v181
	v_mov_b32_e32 v181, v74
	scratch_load_b32 v74, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v11, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v96, v1, v6 :: v_dual_mul_f32 v1, v11, v255
	v_fmac_f32_e32 v138, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v11, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v0, v97
	v_mov_b32_e32 v97, v190
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v0, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v72, v1, v6 :: v_dual_mul_f32 v1, v0, v212
	v_fmac_f32_e32 v73, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v0, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v12, v107
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v14, v1, v5 :: v_dual_mul_f32 v1, v12, v108
	v_mov_b32_e32 v108, v128
	v_mov_b32_e32 v128, v101
	scratch_store_b32 off, v14, off         ; 4-byte Folded Spill
	v_dual_fmac_f32 v50, v1, v6 :: v_dual_mul_f32 v1, v12, v211
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v49, off offset:4
	scratch_store_b32 off, v13, off offset:20
	scratch_load_b32 v14, off, off offset:28 ; 4-byte Folded Reload
	scratch_store_b32 off, v50, off offset:8 ; 4-byte Folded Spill
	scratch_load_b32 v50, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v2, v1, v7 :: v_dual_mul_f32 v1, v12, v210
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v3, v1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:12
	scratch_store_b32 off, v3, off offset:16
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[1:4], v118 offset:512
	ds_load_b128 v[5:8], v118 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v175, v216
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v183, v13, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v216, v229
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v88, v13, v2 :: v_dual_mul_f32 v13, v216, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v13, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v216, v197
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v90, v13, v4 :: v_dual_mul_f32 v13, v192, v11
	v_dual_mov_b32 v101, v102 :: v_dual_mov_b32 v102, v93
	v_mov_b32_e32 v93, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v13, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v11, v201
	scratch_load_b32 v201, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v134, v13, v2 :: v_dual_mul_f32 v13, v11, v215
	v_fmac_f32_e32 v135, v13, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v11, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v13, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v149, v0
	v_dual_mov_b32 v137, v92 :: v_dual_fmac_f32 v122, v13, v1
	v_dual_mul_f32 v13, v0, v104 :: v_dual_mov_b32 v104, v206
	scratch_load_b32 v206, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v13, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v0, v207
	scratch_store_b32 off, v51, off offset:44 ; 4-byte Folded Spill
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v64, v13, v3 :: v_dual_mul_f32 v13, v0, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v13, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v167, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v179, v13, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v12, v168
	scratch_load_b32 v13, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v68, v1, v2 :: v_dual_mul_f32 v1, v12, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v1, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v12, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v70, v1, v4 :: v_dual_mul_f32 v1, v216, v203
	scratch_load_b32 v203, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v94, v1, v5 :: v_dual_mul_f32 v1, v228, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v182, v1, v6 :: v_dual_mul_f32 v1, v232, v216
	v_fmac_f32_e32 v137, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v230, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v11, v195
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v198, v11
	scratch_load_b32 v198, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v86, v1, v6 :: v_dual_mul_f32 v1, v227, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v117, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v199, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:112
	scratch_load_b32 v82, off, off offset:52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v0, v186
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v205, v0
	scratch_load_b32 v205, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v1, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v185, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v74, v1, v7 :: v_dual_mul_f32 v1, v252, v0
	v_fmac_f32_e32 v181, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v12, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v1, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v172, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v166, v1, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v173, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v165, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v174, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v1, v8
	v_add_nc_u32_e32 v1, s33, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v1, v1, s48, 1
	buffer_load_u16 v1, v1, s[36:39], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v53, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v118
	ds_load_b128 v[5:8], v118 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v216, v9
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, v9, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v216, v239
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v160, v9, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v216, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v9, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v216, v237
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v85, v9, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v11, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v87, v9, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v11, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v84, v9, v2 :: v_dual_mul_f32 v9, v11, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v9, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v11, v240
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v243, v9, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v0, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v82, v9, v1 :: v_dual_mul_f32 v9, v0, v247
	v_fmac_f32_e32 v81, v9, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v0, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v79, v9, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v0, v245
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v80, v9, v4 :: v_dual_mul_f32 v9, v12, v10
	v_dual_mov_b32 v107, v176 :: v_dual_mul_f32 v10, v21, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v48, v9, v1 :: v_dual_mul_f32 v1, v12, v251
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v217, v216
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v1, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v1, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v249
	v_dual_mov_b32 v149, v196 :: v_dual_fmac_f32 v50, v1, v4
	v_mul_f32_e32 v1, v216, v221
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v151, v1, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v216, v220
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v120, v1, v6 :: v_dual_mul_f32 v1, v216, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v112, v1, v7 :: v_dual_mul_f32 v1, v216, v218
	v_fmac_f32_e32 v113, v1, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v11, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v1, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v11, v224
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v140, v1, v6 :: v_dual_mul_f32 v1, v11, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v98, v1, v7 :: v_dual_mul_f32 v1, v11, v222
	v_fmac_f32_e32 v97, v1, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v0, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v1, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v0, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v162, v1, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v100, v1, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v0, v23
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v1, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v236
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v13, v1, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v235
	scratch_store_b32 off, v13, off offset:40 ; 4-byte Folded Spill
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v14, v1, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v234
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v48, off offset:32
	scratch_store_b32 off, v50, off offset:48
	v_mul_f32_e32 v13, v22, v11
	scratch_store_b32 off, v14, off offset:28 ; 4-byte Folded Spill
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v1, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v12, v47 :: v_dual_mul_f32 v14, v54, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v1, v8
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[1:4], v118 offset:512
	ds_load_b128 v[5:8], v118 offset:528
	v_dual_mov_b32 v99, v146 :: v_dual_mov_b32 v146, v144
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v244, v9, v1 :: v_dual_mul_f32 v9, v216, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v15, v55, v0 :: v_dual_fmac_f32 v202, v10, v7
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v201, v13, v8
	v_fmac_f32_e32 v233, v14, v6
	v_dual_fmac_f32 v106, v9, v2 :: v_dual_mul_f32 v9, v216, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v16, v29, v0 :: v_dual_fmac_f32 v63, v15, v7
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v9, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v216, v17
	v_mul_f32_e32 v17, v31, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v199, v16, v8
	v_dual_fmac_f32 v104, v9, v4 :: v_dual_mul_f32 v9, v28, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v9, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v11, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v9, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v11, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v130, v9, v3 :: v_dual_mul_f32 v9, v11, v34
	v_fmac_f32_e32 v149, v9, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v36, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v200, v9, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v0, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v124, v9, v2 :: v_dual_mul_f32 v9, v0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v123, v9, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v0, v37
	v_mul_f32_e32 v0, v0, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v17, v6
	v_fmac_f32_e32 v107, v9, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v42, v12 :: v_dual_fmac_f32 v108, v0, v5
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v198, v9, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v45
	v_mul_f32_e32 v9, v19, v11
	v_mul_f32_e32 v11, v11, v26
	v_mul_f32_e32 v19, v33, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v177, v1, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v44
	scratch_load_b32 v2, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v152, v11, v5 :: v_dual_fmac_f32 v203, v9, v6
	v_mov_b32_e32 v144, v177
	v_fmac_f32_e32 v142, v1, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v12, v43
	scratch_load_b32 v3, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v19, v8
	v_fmac_f32_e32 v76, v1, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	v_mul_f32_e32 v4, v216, v18
	v_mul_f32_e32 v18, v32, v12
	v_mul_f32_e32 v12, v12, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v103, v4, v5 :: v_dual_fmac_f32 v102, v18, v7
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v75, v12, v5 :: v_dual_mul_f32 v2, v2, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v205, v2, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v3, v3, v216
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v216
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v3, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v206, v1, v6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v121, off, off offset:468
	scratch_load_b32 v3, off, off offset:496
	scratch_load_b32 v5, off, off offset:492
	scratch_load_b32 v116, off, off offset:472
	scratch_load_b32 v175, off, off offset:476
	scratch_load_b32 v176, off, off offset:480
	scratch_load_b32 v177, off, off offset:484
	scratch_load_b32 v178, off, off offset:488
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v1, 8, v121
	v_and_b32_e32 v2, 0x80, v121
.LBB0_7:                                ; %._crit_edge
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v118, off, off offset:48
	scratch_load_b32 v78, off, off offset:32
	scratch_load_b32 v156, off, off offset:40
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v244 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v85
	v_dual_mul_f32 v4, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v106
	v_dual_mul_f32 v8, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v244 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v132
	v_exp_f32_e32 v12, v12
	v_dual_mul_f32 v10, 0xbfb8aa3b, v161 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v201
	v_exp_f32_e32 v16, v8
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v11, v12, v11
	v_mul_f32_e32 v12, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_mul_f32_e32 v37, 0xbfb8aa3b, v129
	v_ldexp_f32 v13, v16, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_mul_f32_e32 v12, 0xbfb8aa3b, v203
	v_dual_mul_f32 v16, 0xbfb8aa3b, v202 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v107
	v_ldexp_f32 v0, v4, v0
	v_ldexp_f32 v14, v15, v14
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_mul_f32_e32 v26, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v167, 0xbfb8aa3b, v115 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v201
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v203
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	v_exp_f32_e32 v18, v18
	v_dual_mul_f32 v196, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v199
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v15, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v200
	v_mul_f32_e32 v186, 0xbfb8aa3b, v130
	v_dual_mul_f32 v38, 0xbfb8aa3b, v80 :: v_dual_add_f32 v11, 1.0, v11
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v34, 0xbfb8aa3b, v126 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v194, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v11, v11, v244
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v15, v15, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v160
	v_exp_f32_e32 v25, v25
	v_dual_mul_f32 v8, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v149
	v_dual_mul_f32 v30, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v141
	v_dual_mul_f32 v24, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v98
	v_dual_mul_f32 v32, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v81
	v_dual_mul_f32 v192, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v100
	v_dual_mul_f32 v190, 0xbfb8aa3b, v140 :: v_dual_mov_b32 v143, v146
	v_dual_mul_f32 v188, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v124
	v_mul_f32_e32 v184, 0xbfb8aa3b, v152
	v_mul_f32_e32 v180, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v27, 0xbfb8aa3b, v143
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v56, s1, v205, v13, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v169, 0xbfb8aa3b, v118
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v12, v16, v12
	v_ldexp_f32 v16, v18, v17
	v_ldexp_f32 v17, v20, v19
	v_mul_f32_e32 v18, 0xbfb8aa3b, v233
	v_mul_f32_e32 v20, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v200
	v_dual_mul_f32 v172, 0xbfb8aa3b, v108 :: v_dual_add_f32 v17, 1.0, v17
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v233
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v4
	v_dual_mul_f32 v4, 0xbfb8aa3b, v198 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_ldexp_f32 v18, v20, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v20, v22, v21
	v_mul_f32_e32 v22, 0xbfb8aa3b, v93
	v_ldexp_f32 v21, v25, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v102
	v_mul_f32_e32 v25, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_dual_mul_f32 v174, 0xbfb8aa3b, v123 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v244, v11, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_mul_f32_e32 v40, 0xbfb8aa3b, v82
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v46, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v47, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v144
	v_ldexp_f32 v41, v42, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v42, v46, v43
	v_mul_f32_e32 v170, 0xbfb8aa3b, v150
	v_ldexp_f32 v43, v47, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v13, v13, v205
	v_fma_f32 v44, -v45, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v198 :: v_dual_add_f32 v43, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v44, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v43, v43, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v52, v50, v49
	v_fma_f32 v55, -v47, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v45, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v22, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, null, v14, v14, v204
	v_fmac_f32_e32 v52, v54, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v58, v56, v51
	v_rcp_f32_e32 v57, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v52, v50
	v_div_fmas_f32 v45, v45, v49, v52
	v_rcp_f32_e32 v49, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v55, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v45, v11, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v57, v52, v57 :: v_dual_add_f32 v0, 1.0, v0
	v_div_scale_f32 v46, null, v0, v0, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v46
	v_fma_f32 v53, -v46, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, s0, v206, v0, v206
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v52, s0, v61, v15, v61
	v_mul_f32_e32 v54, v53, v44
	v_fma_f32 v50, -v46, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v50, v44
	v_fma_f32 v50, -v47, v58, v56
	v_fma_f32 v45, -v46, v54, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v50, v51
	v_fma_f32 v50, -v59, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v45, v44, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v47, v58, v56
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v56, null, v16, v16, v202
	v_fmac_f32_e32 v49, v50, v49
	v_div_fmas_f32 v45, v45, v51, v58
	v_div_scale_f32 v50, null, v12, v12, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v52, v49
	v_div_fixup_f32 v13, v45, v13, v205
	v_rcp_f32_e32 v45, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v50
	v_fma_f32 v58, -v56, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v58, v45
	v_div_scale_f32 v46, s6, v204, v14, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v47, v46, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v55, v47, v46
	v_fmac_f32_e32 v47, v53, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v50, v51, 1.0
	v_div_fixup_f32 v0, v44, v0, v206
	v_fma_f32 v44, -v59, v54, v52
	v_fma_f32 v46, -v55, v47, v46
	v_div_scale_f32 v55, null, v17, v17, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v53, v51 :: v_dual_fmac_f32 v54, v44, v49
	v_div_fmas_f32 v46, v46, v57, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v53, v55
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v60, s0, v201, v17, v201
	v_fma_f32 v47, -v59, v54, v52
	v_div_fixup_f32 v14, v46, v14, v204
	v_div_scale_f32 v59, null, v19, v19, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v47, v47, v49, v54
	v_fma_f32 v58, -v55, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v47, v15, v61
	v_fmac_f32_e32 v53, v58, v53
	v_div_scale_f32 v44, s1, v203, v12, v203
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v58, v59
	v_mul_f32_e32 v47, v60, v53
	v_div_scale_f32 v57, s6, v202, v16, v202
	v_mul_f32_e32 v52, v44, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v57, v45
	v_fma_f32 v49, -v50, v52, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v59, v58, 1.0
	v_fma_f32 v46, -v56, v54, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v49, v51
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, s7, v200, v19, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v46, v45
	v_fma_f32 v46, -v55, v47, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v50, v52, v44
	v_fmac_f32_e32 v47, v46, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v49, null, v18, v18, v233
	v_div_fmas_f32 v44, v44, v51, v52
	v_fma_f32 v51, -v56, v54, v57
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v50, v49
	v_mul_f32_e32 v46, v61, v58
	v_div_fixup_f32 v12, v44, v12, v203
	v_div_fmas_f32 v45, v51, v45, v54
	v_fma_f32 v51, -v55, v47, v60
	v_div_scale_f32 v55, s1, v233, v18, v233
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v44, v45, v16, v202
	v_div_fmas_f32 v47, v51, v53, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v49, v50, 1.0
	v_fma_f32 v54, -v59, v46, v61
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v45, v47, v17, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_fmac_f32_e32 v46, v54, v58
	v_div_scale_f32 v47, null, v21, v21, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v55, v50
	v_fma_f32 v16, -v59, v46, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v49, v53, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v16, v16, v58, v46
	v_rcp_f32_e32 v46, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v17, v50
	v_div_scale_f32 v52, null, v20, v20, v63
	v_div_scale_f32 v17, s0, v63, v20, v63
	v_div_fixup_f32 v56, v16, v19, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v52
	v_fma_f32 v16, -v49, v53, v55
	v_fma_f32 v49, -v47, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v16, v50, v53
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, null, v41, v41, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v52, v51, 1.0
	v_div_scale_f32 v53, s1, v199, v21, v199
	v_div_fixup_f32 v58, v16, v18, v233
	v_rcp_f32_e32 v16, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v54, v51 :: v_dual_add_f32 v48, 1.0, v48
	v_mul_f32_e32 v18, v53, v46
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v19, v17, v51
	v_div_scale_f32 v54, null, v48, v48, v198
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v49, v16, 1.0
	v_fma_f32 v50, -v52, v19, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v55, v54
	v_dual_fmac_f32 v16, v60, v16 :: v_dual_fmac_f32 v19, v50, v51
	v_div_scale_f32 v50, s6, v198, v48, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v17, -v52, v19, v17
	v_fma_f32 v57, -v54, v55, 1.0
	v_fma_f32 v52, -v47, v18, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v51, v19
	v_dual_fmac_f32 v55, v57, v55 :: v_dual_add_f32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v52, v46
	v_div_scale_f32 v52, s0, v93, v41, v93
	v_mul_f32_e32 v59, v50, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v57, null, v42, v42, v102
	v_div_fixup_f32 v63, v17, v20, v63
	v_fma_f32 v17, -v47, v18, v53
	v_fma_f32 v19, -v54, v59, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v61, v57
	v_div_scale_f32 v20, s7, v102, v42, v102
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v59, v19, v55
	v_mul_f32_e32 v19, v52, v16
	v_rcp_f32_e32 v51, v62
	v_div_fmas_f32 v17, v17, v46, v18
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v18, -v54, v59, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v57, v61, 1.0
	v_fma_f32 v46, -v49, v19, v52
	v_div_fixup_f32 v53, v17, v21, v199
	v_div_fmas_f32 v18, v18, v55, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v60, v61
	v_fmac_f32_e32 v19, v46, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v62, v51, 1.0
	v_div_fixup_f32 v46, v18, v48, v198
	v_mul_f32_e32 v50, v20, v61
	v_fma_f32 v10, -v49, v19, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v17, -v57, v50, v20
	v_fmac_f32_e32 v51, v47, v51
	v_div_scale_f32 v47, s1, v91, v43, v91
	v_div_fmas_f32 v10, v10, v16, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v17, v61
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v21, v47, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v10, v41, v93
	v_fma_f32 v16, -v57, v50, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v182, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v62, v21, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v16, v16, v61, v50
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v21, v17, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v42, v16, v42, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v62, v21, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v19, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v17, v51, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v21, v183, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v128, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v9, v43, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v7, v19, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v117, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v85
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v101, v14
	v_mul_f32_e32 v14, v109, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v16
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v0, v0, v161
	v_rcp_f32_e32 v48, v47
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v7, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v161, v0, v161
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v11, v9
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v11, v181, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v45, null, v44, v44, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v9, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v179, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v49, v49, v85
	v_mul_f32_e32 v55, v50, v48
	v_div_scale_f32 v46, s0, v160, v44, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v53, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v166, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v52, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v45, v51, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v165, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v57, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v137, v13 :: v_dual_mul_f32 v13, v122, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v47, v55, v50
	v_fma_f32 v52, -v54, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v55, v56, v48
	v_fmac_f32_e32 v53, v52, v53
	v_div_scale_f32 v52, null, v41, v41, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v47, v55, v50
	v_mul_f32_e32 v47, v46, v51
	v_div_scale_f32 v50, s1, v85, v49, v85
	v_div_fmas_f32 v42, v42, v48, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v52
	v_fma_f32 v55, -v45, v47, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v86, v12
	v_mul_f32_e32 v12, v77, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v164, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v50, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v52, v48, 1.0
	v_fmac_f32_e32 v47, v55, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v43, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v45, v47, v46
	v_div_scale_f32 v46, s6, v127, v41, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v42, v0, v161
	v_fma_f32 v42, -v54, v56, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v42, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v45, v45, v51, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v26, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v47, v46, v48
	v_fma_f32 v50, -v54, v56, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v43, v43, v151
	v_fma_f32 v30, -v52, v47, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v55
	v_div_fmas_f32 v50, v50, v53, v56
	v_fmac_f32_e32 v47, v30, v48
	v_div_fixup_f32 v30, v45, v44, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v26, v50, v49, v85
	v_fma_f32 v45, -v52, v47, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v44, v44, v120
	v_fma_f32 v50, -v55, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v45, v48, v47
	v_div_scale_f32 v48, s0, v151, v43, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v50, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v24, v45, v41, v127
	v_rcp_f32_e32 v47, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v127, v158, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v48, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v55, v50, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v113 :: v_dual_fmac_f32 v50, v52, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v45, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v55, v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v42, v48, v42, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v45, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v43, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v112
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v46, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v0, v0, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v46, v46, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v49, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_fmac_f32 v47, v51, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, s1, v120, v44, v120
	v_div_scale_f32 v53, null, v46, v46, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v52, v51, v47
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v49, v52, v51
	v_fmac_f32_e32 v52, v55, v47
	v_fma_f32 v55, -v45, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v53, v54, 1.0
	v_fma_f32 v43, -v49, v52, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v41, v54
	v_div_scale_f32 v41, s0, v112, v46, v112
	v_div_fmas_f32 v43, v43, v47, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v74, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v41, v54
	v_fmac_f32_e32 v48, v55, v48
	v_div_fixup_f32 v43, v43, v44, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, s1, v113, v0, v113
	v_fma_f32 v44, -v53, v52, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v32, v50, v49
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v44, v54
	v_mul_f32_e32 v44, v55, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v31
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v53, v52, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v45, v44, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v51, v47
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, null, v53, v53, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v32, v48 :: v_dual_add_f32 v47, 1.0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v51
	v_div_fmas_f32 v31, v41, v54, v52
	v_fma_f32 v41, -v45, v44, v55
	v_div_scale_f32 v56, null, v47, v47, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v56
	v_div_fmas_f32 v41, v41, v48, v44
	v_fma_f32 v55, -v51, v50, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, vcc_lo, v106, v53, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v55, v50
	v_div_fixup_f32 v0, v41, v0, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v56, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v49, 1.0, v32 :: v_dual_mul_f32 v52, v44, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v31, v46, v112
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v119, v0 :: v_dual_fmac_f32 v54, v48, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, s0, v105, v47, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v51, v52, v44
	v_div_scale_f32 v55, null, v49, v49, v104
	v_mul_f32_e32 v46, v48, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v0, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v57, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v111, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v56, v46, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v51, v52, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v120, v114, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, s1, v104, v49, v104
	v_fmac_f32_e32 v46, v0, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v55, v57, 1.0
	v_div_scale_f32 v43, null, v41, v41, v103
	v_fma_f32 v44, -v56, v46, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v0, v57
	v_rcp_f32_e32 v0, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v44, v54, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v45, v57
	v_div_fixup_f32 v42, v42, v53, v106
	v_div_scale_f32 v53, s0, v103, v41, v103
	v_div_fixup_f32 v44, v44, v47, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v50
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v43, v0, 1.0
	v_fma_f32 v50, -v55, v46, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v112, v89, v44 :: v_dual_mul_f32 v111, v88, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v51, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v47, v47, v48
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v53, v0
	v_fmac_f32_e32 v46, v50, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v43, v48, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v55, v46, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v243
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v47, v47, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v52, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v56, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v55
	v_div_fmas_f32 v45, v45, v57, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v43, v48, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v49, v104
	v_div_scale_f32 v53, null, v46, v46, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v54, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v55, v52, 1.0
	v_div_fmas_f32 v0, v43, v0, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, vcc_lo, v87, v47, v87
	v_div_fixup_f32 v0, v0, v41, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v41, null, v50, v50, v243
	v_mul_f32_e32 v49, v51, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v53, v48, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v94, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v43, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v56, -v55, v49, v51
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v54, s0, v84, v46, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v56, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v159, v24 :: v_dual_mul_f32 v113, v90, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v44, v54, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v41, v43, 1.0
	v_div_scale_f32 v56, null, v0, v0, v83
	v_fma_f32 v42, -v55, v49, v51
	v_fma_f32 v51, -v53, v44, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v45, v43
	v_rcp_f32_e32 v45, v56
	v_div_scale_f32 v55, s1, v243, v50, v243
	v_fmac_f32_e32 v44, v51, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v157, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v52, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v52, v55, v43 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v141
	v_fma_f32 v57, -v56, v45, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v154, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v47, v87
	v_fma_f32 v47, -v53, v44, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v57, v45
	v_div_scale_f32 v54, s6, v83, v0, v83
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v53, -v41, v52, v55
	v_div_fmas_f32 v44, v47, v48, v44
	v_mul_f32_e32 v47, v54, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v49, v51, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v53, v43
	v_fma_f32 v53, -v56, v47, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v41, v52, v55
	v_fmac_f32_e32 v47, v53, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v57
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v49, v49, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v43, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v56, v47, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v53, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v44, v46, v84
	v_div_fixup_f32 v41, v41, v50, v243
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v54, v45, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v55, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v97 :: v_dual_add_f32 v43, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v51, null, v47, v47, v140
	v_fmac_f32_e32 v52, v48, v52
	v_div_scale_f32 v48, vcc_lo, v141, v49, v141
	v_div_scale_f32 v57, null, v43, v43, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v54, v51
	v_mul_f32_e32 v58, v48, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v242, v0
	v_mul_f32_e32 v104, v147, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v55, v58, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v148, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s0, v140, v47, v140
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v51, v54, 1.0
	v_fmac_f32_e32 v58, v46, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v57, v45, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v145, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v50, v54
	v_fma_f32 v44, -v55, v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v45, v46, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, s1, v98, v43, v98
	v_div_fmas_f32 v44, v44, v52, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v41, v54
	v_div_scale_f32 v50, null, v0, v0, v97
	v_mul_f32_e32 v55, v46, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v51, v48, v41
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v42, v44, v49, v141
	v_fma_f32 v44, -v57, v55, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v53, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v44, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s6, v97, v0, v97
	v_fma_f32 v49, -v50, v52, 1.0
	v_fma_f32 v41, -v51, v48, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v136, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v57, v55, v46
	v_fmac_f32_e32 v52, v49, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v130
	v_ldexp_f32 v44, v44, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v95, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v54, v48
	v_mul_f32_e32 v48, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v47, v140
	v_fma_f32 v54, -v50, v48, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v44, v44, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v48, v54, v52
	v_div_fmas_f32 v45, v46, v45, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v51, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v43, v45, v43, v98
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v50, v48, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v96, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v46, v46, v130
	v_fma_f32 v51, -v58, v49, 1.0
	v_div_fmas_f32 v45, v45, v52, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v50
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s0, v132, v44, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v51, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v48, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v139, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v58, v53, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v54, s1, v130, v46, v130
	v_div_scale_f32 v55, null, v0, v0, v149
	v_fmac_f32_e32 v53, v47, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v54, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v138, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v52, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v58, v53, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v51, -v50, v47, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v49, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v51, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v55, v41, 1.0
	v_div_scale_f32 v49, null, v42, v42, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v44, v132
	v_fma_f32 v44, -v50, v47, v54
	v_fmac_f32_e32 v41, v45, v41
	v_rcp_f32_e32 v45, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s0, v149, v0, v149
	v_div_fmas_f32 v39, v44, v48, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, s6
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v40, v41
	v_fma_f32 v52, -v49, v45, 1.0
	v_div_fixup_f32 v39, v39, v46, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v55, v48, v40
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s1, v152, v42, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v38, v51, v50
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v46, v41
	v_mul_f32_e32 v46, v52, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v55, v48, v40
	v_fma_f32 v53, -v49, v46, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v47, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v38, v38, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v53, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v135, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v44, v44, v81
	v_div_fmas_f32 v40, v40, v41, v48
	v_fma_f32 v41, -v49, v46, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, s6
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v52, v54
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v45, v46
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v46, vcc_lo, v82, v38, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v42, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v46, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v51, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v54, v52, 1.0
	v_div_fixup_f32 v0, v40, v0, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v153, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v47, v49, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_fmac_f32 v52, v50, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s0, v81, v44, v81
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v163, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v42, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v40, v53
	v_mul_f32_e32 v41, v50, v52
	v_div_scale_f32 v51, null, v45, v45, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v47, v49, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v54, v41, v50
	v_rcp_f32_e32 v55, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v134, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v79
	v_div_fmas_f32 v39, v39, v53, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v40, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v39, v38, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v54, v41, v50
	v_fma_f32 v40, -v51, v55, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v43, v52, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s1, v80, v45, v80
	v_fma_f32 v43, -v42, v37, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v40, v55
	v_div_scale_f32 v48, s0, v79, v0, v79
	v_fmac_f32_e32 v37, v43, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v44, v81
	v_fma_f32 v44, -v51, v39, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_ldexp_f32 v35, v36, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v48, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v44, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v42, v36, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v51, v39, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v100
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v49, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v43, v47, v43
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v50, null, v35, v35, v129
	v_div_fmas_f32 v39, v40, v55, v39
	v_fma_f32 v40, -v42, v36, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v50
	v_div_fmas_f32 v36, v40, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:36
	scratch_load_b32 v92, off, off offset:28
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v168, 0xbfb8aa3b, v156
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v39, v45, v80
	v_div_fixup_f32 v0, v36, v0, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v50, v46, 1.0
	v_div_scale_f32 v44, null, v42, v42, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v81, v155, v39 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v43, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v43, vcc_lo, v129, v35, v129
	v_div_scale_f32 v36, null, v34, v34, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v80, v133, v41 :: v_dual_mul_f32 v45, v43, v46
	v_mul_f32_e32 v79, v131, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v171, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v44, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v48, v40
	v_div_scale_f32 v48, s0, v162, v42, v162
	v_mul_f32_e32 v39, v48, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v82, v49, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v37, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v47, -v50, v45, v43
	v_div_scale_f32 v49, s1, v100, v34, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v45, v47, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v0, v0, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v36, v37, 1.0
	v_fma_f32 v38, -v50, v45, v43
	v_fma_f32 v43, -v44, v39, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v41, v37
	v_rcp_f32_e32 v41, v47
	v_fmac_f32_e32 v39, v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v38, v46, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v49, v37
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v35, v129
	v_fma_f32 v35, -v44, v39, v48
	v_fma_f32 v46, -v47, v41, 1.0
	v_fma_f32 v44, -v36, v45, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	v_cndmask_b32_e64 v48, 0, 0x42800000, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v40, v39
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s6, v126, v0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v45, v44, v37 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v46, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v43, v38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v36, v45, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v47, v39, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v38, v38, v124
	v_div_fmas_f32 v36, v36, v37, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v48
	v_fma_f32 v46, -v47, v39, v46
	v_div_fixup_f32 v34, v36, v34, v100
	v_div_fixup_f32 v35, v35, v42, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v44, v40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v46, v41, v39
	v_fma_f32 v41, -v48, v45, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v108
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v39, v0, v126
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v41, vcc_lo, v124, v38, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v49, null, v37, v37, v107
	v_div_scale_f32 v43, null, v40, v40, v123
	v_mul_f32_e32 v50, v41, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v72, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v48, v50, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v225, v0
	v_mul_f32_e32 v73, v73, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s0, v123, v40, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v50, v39, v45
	v_fma_f32 v39, -v49, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v47, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v43, v46, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v71, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v48, v50, v41
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s1, v107, v37, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v45, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v47, v39, v36 :: v_dual_fmac_f32 v46, v42, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v42, null, v0, v0, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v35, v38, v124
	v_fma_f32 v35, -v49, v47, v39
	v_mul_f32_e32 v41, v34, v46
	v_rcp_f32_e32 v44, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v35, v36
	v_fma_f32 v45, -v43, v41, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_exp_f32_e32 v35, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v49, v47, v39
	v_fmac_f32_e32 v41, v45, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v42, v44, 1.0
	v_div_scale_f32 v45, s6, v108, v0, v108
	v_fma_f32 v34, -v43, v41, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v38, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v48
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v46, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v45, v44
	v_div_scale_f32 v50, null, v35, v35, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v42, v41, v45
	v_div_fmas_f32 v36, v39, v36, v47
	v_rcp_f32_e32 v39, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v118
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v40, v123
	v_fmac_f32_e32 v41, v46, v44
	v_div_fixup_f32 v36, v36, v37, v107
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v49
	v_ldexp_f32 v38, v43, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v42, v41, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v65, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v50, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, s0, v78, v35, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v37, v0, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v40, v48
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v43, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v66, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v50, v45, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v48, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v38, v38, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v40, v39
	v_div_scale_f32 v47, null, v0, v0, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v50, v45, v43
	v_rcp_f32_e32 v34, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v29, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v39, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v39, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v42, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v44, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v36, v35, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v29
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s1, v150, v38, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v42, v40, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v43, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v42, v40, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v29, v36, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v38, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v44, v43
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v36, v40, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v28, v28, v156
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v63, v39, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v47, v34, 1.0
	v_div_scale_f32 v39, null, v33, v33, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v37, v34
	v_div_scale_f32 v37, s0, v118, v0, v118
	v_rcp_f32_e32 v42, v39
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v37, v34
	v_fma_f32 v38, -v47, v41, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v39, v42, 1.0
	v_fmac_f32_e32 v41, v38, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, s1, v115, v33, v115
	v_fma_f32 v37, -v47, v41, v37
	v_fma_f32 v47, -v40, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v45, v42
	v_div_fmas_f32 v34, v37, v34, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v39, v38, v45
	v_fmac_f32_e32 v27, v47, v27
	v_div_fixup_f32 v0, v34, v0, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v143 :: v_dual_fmac_f32 v38, v46, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v36, v36, v92
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v48, v0
	scratch_load_b32 v48, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v39, v38, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v42, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v44, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, vcc_lo, v156, v28, v156
	v_div_fixup_f32 v33, v37, v33, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v46, v45, 1.0
	v_dual_mul_f32 v41, v42, v27 :: v_dual_add_f32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v110, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v43, s0, v92, v36, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v40, v41, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v37, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v43, v45
	v_div_scale_f32 v44, null, v38, v38, v99
	v_dual_fmac_f32 v41, v33, v27 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v34, v43
	v_rcp_f32_e32 v47, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v34, v33, v45 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v144
	v_fma_f32 v33, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v47, v33, v47
	v_div_scale_f32 v33, s1, v99, v38, v99
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v37, v29
	scratch_load_b32 v29, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v29, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v40, v41, v42
	v_div_scale_f32 v35, null, v0, v0, v143
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v27, v29, v27, v41
	v_fma_f32 v29, -v46, v34, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v46, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v41, s0, v143, v0, v143
	v_div_fmas_f32 v25, v29, v45, v34
	v_mul_f32_e32 v29, v33, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v35
	v_div_fixup_f32 v27, v27, v28, v156
	v_div_fixup_f32 v25, v25, v36, v92
	v_fma_f32 v23, -v44, v29, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v23, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v39
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v35, v34, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v44, v29, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v76
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v22, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v37
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v37, v40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v33, v47, v29
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_add_f32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v38, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v35, v33, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v23, v23, v144
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v33, v40, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v28, null, v4, v4, v142
	v_div_scale_f32 v39, null, v37, v37, v76
	v_fma_f32 v35, -v35, v33, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v28
	v_rcp_f32_e32 v42, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v48, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v22, v22, v75
	v_fma_f32 v40, -v36, v38, 1.0
	v_div_scale_f32 v35, vcc_lo, v144, v23, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v34
	v_div_fixup_f32 v0, v33, v0, v143
	v_fmac_f32_e32 v38, v40, v38
	v_fma_f32 v40, -v28, v41, 1.0
	v_fma_f32 v33, -v39, v42, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v48, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v44, v35, v38 :: v_dual_fmac_f32 v41, v40, v41
	v_div_scale_f32 v40, s0, v142, v4, v142
	v_fmac_f32_e32 v42, v33, v42
	v_div_scale_f32 v33, s1, v76, v37, v76
	v_fma_f32 v45, -v34, v43, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v47, v33, v42
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s6, v75, v22, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v39, v47, v33
	v_mul_f32_e32 v51, v45, v43
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v47, v29, v42 :: v_dual_mul_f32 v50, v46, v0
	v_fma_f32 v0, -v36, v44, v35
	v_mul_f32_e32 v46, v40, v41
	v_fmac_f32_e32 v44, v0, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v28, v46, v40
	v_fmac_f32_e32 v46, v0, v41
	v_fma_f32 v0, -v34, v51, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v46, v40
	v_fmac_f32_e32 v51, v0, v43
	v_fma_f32 v0, -v39, v47, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v33, off, off          ; 4-byte Folded Reload
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v39, |v66|, |v12|, |v10|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v34, v51, v45
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v34, |v87|, |v88|, |v89|
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v48, v48, v25
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v25, -v36, v44, v35
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v35, |v90|, |v16|, |v15|
	v_max_f32_e64 v36, |v79|, |v80|
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v38, v44
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0x76543210
	v_div_fmas_f32 v28, v28, v41, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v25, v23, v144
	v_div_fmas_f32 v0, v0, v42, v47
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v4, v28, v4, v142
	v_div_fmas_f32 v29, v29, v43, v51
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v25, |v127|, |v30|
	v_max3_f32 v28, |v111|, |v112|, |v113|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v37, v76
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v37, |v81|, |v71|, |v72|
.Ltmp16:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v29, v22, v75
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v114|, |v20|, |v18|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v69, v4
	v_mul_f32_e32 v42, v70, v0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v32|, |v31|, |v21|
	v_max3_f32 v38, |v63|, |v64|, |v65|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v68, v23
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v55|, |v56|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v33, v27
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v26|, |v119|, |v120|
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v67, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v25, |v24|, v27
	v_max3_f32 v25, v28, v29, |v19|
	v_max_f32_e64 v27, |v103|, |v104|
	v_max3_f32 v28, |v105|, |v95|, |v96|
	v_max3_f32 v29, |v97|, |v98|, |v17|
	v_max3_f32 v0, v22, v0, v25
	v_max3_f32 v25, |v57|, |v47|, |v48|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v27, v27, |v106|, v28
	v_max3_f32 v28, v34, v35, |v14|
	v_max3_f32 v34, |v73|, |v74|, |v13|
	v_max3_f32 v35, v36, |v82|, v37
	v_max3_f32 v36, v38, v39, |v11|
	v_max3_f32 v23, v23, |v58|, v25
	v_max3_f32 v4, v27, v29, v28
	v_max3_f32 v27, |v40|, |v41|, |v42|
	v_max3_f32 v28, |v33|, |v6|, |v7|
	v_max3_f32 v22, v35, v34, v36
	v_max3_f32 v29, |v49|, |v50|, |v9|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v35, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 3, v121
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v27, v28, |v8|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v34, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v22, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v35, v35
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v39, 3, v2
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v23, v29, v25
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v25, 5, v38
	v_and_b32_e32 v29, 0x60, v121
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v35, v4, v28 :: v_dual_and_b32 v4, 4, v121
	v_max_f32_e32 v27, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v3, 0x680, v3, v25
	v_permlanex16_b32 v28, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v43, v4, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v0, v27
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v3, v3, v29
	v_lshl_add_u32 v27, v38, 9, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v43, v39, v3
.Ltmp37:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v39.h, 0
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v36, v36
.Ltmp39:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v43.h, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v22, v0
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v4, 2, v27
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v28, v28 :: v_dual_lshlrev_b32 v27, 1, v2
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v28, v25, v29
	v_add_nc_u32_e32 v2, 0, v2
	v_lshl_add_u32 v0, v1, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v23, v22
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
	v_add3_u32 v0, v0, v27, v28
	ds_store_b128 v0, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v0, v34 :: v_dual_mov_b32 v3, v35
	v_dual_mov_b32 v22, v36 :: v_dual_max_f32 v23, v34, v34
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v37, v37
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v0, v23, v0
	v_max_f32_e32 v23, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v28, v3 :: v_dual_max_f32 v28, v37, v37
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v35, v0 :: v_dual_max_f32 v22, v23, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v36, v3 :: v_dual_max_f32 v23, v34, v28
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v28, v22
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v34, v23
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v3, v3, v36 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v35, v0 :: v_dual_max_f32 v22, v22, v28
	v_mov_b32_e32 v36, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v23, v34
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v28, v22
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v37, v23
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v0, v28, v28 :: v_dual_max_f32 v35, v3, v35
	v_max_f32_e32 v3, v37, v37
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v28, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v22, v0
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 5, v4
	v_lshl_add_u32 v4, v38, 4, 0
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v23, v3
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v28, v1
	v_add3_u32 v0, v4, v0, v1
	ds_store_b128 v2, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v0
.Ltmp70:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v0, v0
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v34, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v45, s1, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v22, v4
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v4, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v23, v22
	v_fma_f32 v35, -v4, v28, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v35, v22
	v_div_scale_f32 v35, null, 0x40e00000, 0x40e00000, v3
	v_fma_f32 v4, -v4, v28, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v34, v36, 1.0
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v22, v28
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v1
	v_fmac_f32_e32 v36, v23, v36
	v_div_scale_f32 v22, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v28
	v_div_fixup_f32 v0, v4, 0x40e00000, v0
	v_mul_f32_e32 v4, v22, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v43.l, v0.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v34, v4, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v28, v37, 1.0
	v_dual_fmac_f32 v4, v23, v36 :: v_dual_and_b32 v43, 1, v43
	v_fma_f32 v23, -v35, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s0, v1, 0x40e00000, v1
	v_fmac_f32_e32 v38, v23, v38
	v_fma_f32 v23, -v34, v4, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v0, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v0, v44, v37
	v_mul_f32_e32 v34, v45, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v23, v36, v4
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v36, 0xffff0000, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v28, v0, v44
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v43, -v35, v34, v45
	v_div_fixup_f32 v4, v4, 0x40e00000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v36, v36, v127
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v23, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v43, v38
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v4.h
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v23, 63, v121
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v51, null, v36, v36, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v28, v0, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v44, v46
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v35, v34, v45
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v35, 1, v39
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v52, v51
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v0, v2, v37, v0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v53, null, v36, v36, v26
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v28, v38, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v34, null, v36, v36, v30
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v1, -v46, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v37, v2, 0x40e00000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v38, v34
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.h, v39.h
	v_mov_b16_e32 v28.l, v0.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v44, v1, v44
	v_div_scale_f32 v45, vcc_lo, v127, v36, v127
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v4, v35, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	v_and_b32_e32 v4, 1, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v35, v45, v44
	v_fma_f32 v43, -v34, v38, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s42, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s43, 0, s0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v28, v0, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v46, v35, v45
	v_fmac_f32_e32 v38, v43, v38
	v_div_scale_f32 v59, s0, v30, v36, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v0, v44
	v_rcp_f32_e32 v0, v53
	v_mul_f32_e32 v37, v59, v38
	v_fma_f32 v39, -v51, v52, 1.0
	v_div_scale_f32 v61, null, v36, v36, v119
	v_fma_f32 v45, -v46, v35, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, v59
	v_fmac_f32_e32 v52, v39, v52
	v_div_scale_f32 v39, s1, v24, v36, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v53, v0, 1.0
	v_fmac_f32_e32 v37, v46, v38
	v_rcp_f32_e32 v46, v61
	v_div_fmas_f32 v35, v45, v44, v35
	v_mul_f32_e32 v45, v39, v52
	v_fmac_f32_e32 v0, v60, v0
	v_div_scale_f32 v60, s6, v26, v36, v26
	v_div_scale_f32 v62, null, v36, v36, v120
	v_div_fixup_f32 v44, v35, v36, v127
	v_fma_f32 v34, -v34, v37, v59
	v_fma_f32 v35, -v51, v45, v39
	v_mul_f32_e32 v59, v60, v0
	v_rcp_f32_e32 v67, v62
	v_fma_f32 v68, -v61, v46, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v45, v35, v52
	v_div_fmas_f32 v34, v34, v38, v37
	v_fma_f32 v35, -v53, v59, v60
	v_fmac_f32_e32 v46, v68, v46
	v_div_scale_f32 v37, s0, v119, v36, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v30, v34, v36, v30
	v_fma_f32 v38, -v62, v67, 1.0
	v_fma_f32 v34, -v51, v45, v39
	v_fmac_f32_e32 v59, v35, v0
	v_mul_f32_e32 v35, v37, v46
	v_div_scale_f32 v39, null, v36, v36, v32
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v67, v38, v67
	v_div_scale_f32 v38, s7, v120, v36, v120
	v_div_fmas_f32 v34, v34, v52, v45
	v_fma_f32 v45, -v53, v59, v60
	v_fma_f32 v51, -v61, v35, v37
	v_rcp_f32_e32 v52, v39
	v_div_scale_f32 v60, null, v36, v36, v31
	v_mul_f32_e32 v53, v38, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v51, v46
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v51, v60
	v_div_fmas_f32 v0, v45, v0, v59
	v_fma_f32 v45, -v62, v53, v38
	v_div_fixup_f32 v24, v34, v36, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v39, v52, 1.0
	v_div_scale_f32 v34, s1, v32, v36, v32
	v_div_fixup_f32 v26, v0, v36, v26
	v_fma_f32 v0, -v61, v35, v37
	v_dual_fmac_f32 v53, v45, v67 :: v_dual_fmac_f32 v52, v59, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v60, v51, 1.0
	v_div_scale_f32 v59, null, v36, v36, v21
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v61, s0, v31, v36, v31
	v_div_fmas_f32 v0, v0, v46, v35
	v_fma_f32 v35, -v62, v53, v38
	v_dual_mul_f32 v38, v34, v52 :: v_dual_fmac_f32 v51, v37, v51
	v_rcp_f32_e32 v37, v59
	v_div_scale_f32 v62, null, v36, v36, v111
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v45, v0, v36, v119
	v_div_fmas_f32 v35, v35, v67, v53
	v_fma_f32 v53, -v39, v38, v34
	v_mul_f32_e32 v67, v61, v51
	v_rcp_f32_e32 v69, v62
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v68, -v59, v37, 1.0
	v_fmac_f32_e32 v38, v53, v52
	v_fma_f32 v0, -v60, v67, v61
	v_div_scale_f32 v53, null, v36, v36, v112
	v_div_fixup_f32 v46, v35, v36, v120
	v_fmac_f32_e32 v37, v68, v37
	v_div_scale_f32 v35, s6, v21, v36, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v62, v69, 1.0
	v_fma_f32 v34, -v39, v38, v34
	v_fmac_f32_e32 v67, v0, v51
	v_rcp_f32_e32 v39, v53
	v_mul_f32_e32 v0, v35, v37
	v_fmac_f32_e32 v69, v68, v69
	v_div_scale_f32 v68, s7, v111, v36, v111
	v_div_fmas_f32 v34, v34, v52, v38
	v_fma_f32 v38, -v60, v67, v61
	v_div_scale_f32 v70, null, v36, v36, v113
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v52, -v59, v0, v35
	v_mul_f32_e32 v60, v68, v69
	v_fma_f32 v61, -v53, v39, 1.0
	v_div_fmas_f32 v38, v38, v51, v67
	v_rcp_f32_e32 v67, v70
	v_fmac_f32_e32 v0, v52, v37
	v_fma_f32 v51, -v62, v60, v68
	v_fmac_f32_e32 v39, v61, v39
	v_div_scale_f32 v52, s0, v112, v36, v112
	v_div_fixup_f32 v32, v34, v36, v32
	v_div_fixup_f32 v31, v38, v36, v31
	v_fma_f32 v34, -v59, v0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v60, v51, v69 :: v_dual_mul_f32 v35, v52, v39
	v_fma_f32 v38, -v70, v67, 1.0
	v_div_scale_f32 v59, null, v36, v36, v114
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v61, s1, v113, v36, v113
	v_div_fmas_f32 v0, v34, v37, v0
	v_fma_f32 v34, -v62, v60, v68
	v_fma_f32 v37, -v53, v35, v52
	v_fmac_f32_e32 v67, v38, v67
	v_rcp_f32_e32 v38, v59
	v_div_scale_f32 v62, null, v36, v36, v20
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v35, v37, v39
	v_div_fmas_f32 v34, v34, v69, v60
	v_rcp_f32_e32 v37, v62
	v_mul_f32_e32 v60, v61, v67
	v_div_fixup_f32 v21, v0, v36, v21
	v_fma_f32 v0, -v53, v35, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v68, -v59, v38, 1.0
	v_div_fixup_f32 v51, v34, v36, v111
	v_fma_f32 v34, -v70, v60, v61
	v_div_scale_f32 v69, null, v36, v36, v18
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v38, v68, v38
	v_div_scale_f32 v68, s6, v114, v36, v114
	v_fma_f32 v52, -v62, v37, 1.0
	v_div_fmas_f32 v0, v0, v39, v35
	v_fmac_f32_e32 v60, v34, v67
	v_rcp_f32_e32 v35, v69
	v_div_scale_f32 v75, null, v36, v36, v19
	v_mul_f32_e32 v34, v68, v38
	v_fmac_f32_e32 v37, v52, v37
	v_div_scale_f32 v39, s0, v20, v36, v20
	v_div_fixup_f32 v52, v0, v36, v112
	v_fma_f32 v0, -v70, v60, v61
	v_rcp_f32_e32 v70, v75
	v_fma_f32 v53, -v59, v34, v68
	v_mul_f32_e32 v61, v39, v37
	v_fma_f32 v76, -v69, v35, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v67, v60
	v_fmac_f32_e32 v34, v53, v38
	v_fma_f32 v60, -v62, v61, v39
	v_fmac_f32_e32 v35, v76, v35
	v_fma_f32 v76, -v75, v70, 1.0
	v_div_scale_f32 v67, s1, v18, v36, v18
	v_div_fixup_f32 v53, v0, v36, v113
	v_fma_f32 v0, -v59, v34, v68
	v_fmac_f32_e32 v61, v60, v37
	v_fmac_f32_e32 v70, v76, v70
	v_div_scale_f32 v76, null, v84, v84, v103
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v60, v67, v35
	v_div_scale_f32 v68, s7, v19, v36, v19
	v_div_fmas_f32 v0, v0, v38, v34
	v_fma_f32 v34, -v62, v61, v39
	v_rcp_f32_e32 v39, v76
	v_div_scale_f32 v77, null, v84, v84, v104
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v69, v60, v67
	v_mul_f32_e32 v62, v68, v70
	v_div_fmas_f32 v34, v34, v37, v61
	v_rcp_f32_e32 v37, v77
	v_div_fixup_f32 v59, v0, v36, v114
	v_fmac_f32_e32 v60, v38, v35
	v_fma_f32 v38, -v75, v62, v68
	v_fma_f32 v61, -v76, v39, 1.0
	v_div_fixup_f32 v20, v34, v36, v20
	v_div_scale_f32 v34, s0, v103, v84, v103
	v_fma_f32 v0, -v69, v60, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v62, v38, v70 :: v_dual_fmac_f32 v39, v61, v39
	v_fma_f32 v38, -v77, v37, 1.0
	v_div_scale_f32 v67, null, v84, v84, v106
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v61, s1, v104, v84, v104
	v_div_fmas_f32 v0, v0, v35, v60
	v_fma_f32 v35, -v75, v62, v68
	v_mul_f32_e32 v60, v34, v39
	v_fmac_f32_e32 v37, v38, v37
	v_rcp_f32_e32 v38, v67
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v68, null, v84, v84, v105
	v_div_fmas_f32 v35, v35, v70, v62
	v_fma_f32 v62, -v76, v60, v34
	v_mul_f32_e32 v69, v61, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v68
	v_div_fixup_f32 v18, v0, v36, v18
	v_div_fixup_f32 v19, v35, v36, v19
	v_fma_f32 v70, -v67, v38, 1.0
	v_fmac_f32_e32 v60, v62, v39
	v_fma_f32 v0, -v77, v69, v61
	v_div_scale_f32 v36, null, v84, v84, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v70, v38
	v_div_scale_f32 v35, s6, v106, v84, v106
	v_fma_f32 v34, -v76, v60, v34
	v_fmac_f32_e32 v69, v0, v37
	v_rcp_f32_e32 v70, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v62, -v68, v75, 1.0
	v_mul_f32_e32 v0, v35, v38
	v_div_fmas_f32 v34, v34, v39, v60
	v_fma_f32 v39, -v77, v69, v61
	v_div_scale_f32 v77, null, v84, v84, v96
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v75, v62, v75
	v_div_scale_f32 v62, s7, v105, v84, v105
	v_fma_f32 v60, -v67, v0, v35
	v_fma_f32 v61, -v36, v70, 1.0
	v_div_fmas_f32 v37, v39, v37, v69
	v_rcp_f32_e32 v39, v77
	v_mul_f32_e32 v76, v62, v75
	v_fmac_f32_e32 v0, v60, v38
	v_fmac_f32_e32 v70, v61, v70
	v_div_scale_f32 v78, s0, v95, v84, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v69, -v68, v76, v62
	v_div_fixup_f32 v60, v34, v84, v103
	v_div_fixup_f32 v61, v37, v84, v104
	v_fma_f32 v34, -v67, v0, v35
	v_mul_f32_e32 v35, v78, v70
	v_fma_f32 v37, -v77, v39, 1.0
	v_div_scale_f32 v83, null, v84, v84, v97
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v76, v69, v75
	v_div_fmas_f32 v0, v34, v38, v0
	v_fma_f32 v38, -v36, v35, v78
	v_fmac_f32_e32 v39, v37, v39
	v_rcp_f32_e32 v37, v83
	v_div_scale_f32 v85, null, v84, v84, v98
	v_fma_f32 v34, -v68, v76, v62
	v_div_scale_f32 v69, s1, v96, v84, v96
	v_fmac_f32_e32 v35, v38, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v85
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v62, v0, v84, v106
	v_div_fmas_f32 v34, v34, v75, v76
	v_mul_f32_e32 v75, v69, v39
	v_fma_f32 v68, -v83, v37, 1.0
	v_fma_f32 v0, -v36, v35, v78
	v_div_scale_f32 v76, null, v84, v84, v17
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v67, v34, v84, v105
	v_fma_f32 v34, -v77, v75, v69
	v_fmac_f32_e32 v37, v68, v37
	v_div_scale_f32 v36, s6, v97, v84, v97
	v_fma_f32 v68, -v85, v38, 1.0
	v_div_fmas_f32 v0, v0, v70, v35
	v_rcp_f32_e32 v35, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v75, v34, v39 :: v_dual_mul_f32 v34, v36, v37
	v_fmac_f32_e32 v38, v68, v38
	v_div_scale_f32 v70, s0, v98, v84, v98
	v_div_scale_f32 v78, null, v84, v84, v87
	v_div_fixup_f32 v68, v0, v84, v95
	v_fma_f32 v0, -v77, v75, v69
	v_fma_f32 v69, -v83, v34, v36
	v_mul_f32_e32 v77, v70, v38
	v_rcp_f32_e32 v86, v78
	v_fma_f32 v91, -v76, v35, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v69, v37
	v_div_fmas_f32 v0, v0, v39, v75
	v_fma_f32 v39, -v85, v77, v70
	v_fmac_f32_e32 v35, v91, v35
	v_div_scale_f32 v91, s1, v17, v84, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v69, v0, v84, v96
	v_fma_f32 v75, -v78, v86, 1.0
	v_fma_f32 v0, -v83, v34, v36
	v_fmac_f32_e32 v77, v39, v38
	v_mul_f32_e32 v36, v91, v35
	v_div_scale_f32 v83, null, v84, v84, v88
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v86, v75, v86
	v_div_scale_f32 v39, s7, v87, v84, v87
	v_div_fmas_f32 v0, v0, v37, v34
	v_fma_f32 v34, -v85, v77, v70
	v_fma_f32 v37, -v76, v36, v91
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v93, null, v84, v84, v89
	v_mul_f32_e32 v92, v39, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v37, v35
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v37, v93
	v_div_fmas_f32 v34, v34, v38, v77
	v_fma_f32 v38, -v78, v92, v39
	v_div_fixup_f32 v70, v0, v84, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v77, -v83, v85, 1.0
	v_fma_f32 v0, -v76, v36, v91
	v_div_fixup_f32 v75, v34, v84, v98
	v_fmac_f32_e32 v92, v38, v86
	v_div_scale_f32 v34, s0, v88, v84, v88
	v_fmac_f32_e32 v85, v77, v85
	v_fma_f32 v38, -v93, v37, 1.0
	v_div_scale_f32 v91, null, v84, v84, v90
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v94, null, v84, v84, v16
	v_div_fmas_f32 v0, v0, v35, v36
	v_fma_f32 v35, -v78, v92, v39
	v_mul_f32_e32 v36, v34, v85
	v_fmac_f32_e32 v37, v38, v37
	v_rcp_f32_e32 v38, v91
	v_div_scale_f32 v39, s1, v89, v84, v89
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v77, -v83, v36, v34
	v_div_fmas_f32 v35, v35, v86, v92
	v_mul_f32_e32 v78, v39, v37
	v_rcp_f32_e32 v92, v94
	v_div_fixup_f32 v17, v0, v84, v17
	v_fmac_f32_e32 v36, v77, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v91, v38, 1.0
	v_fma_f32 v0, -v93, v78, v39
	v_div_fixup_f32 v76, v35, v84, v87
	v_div_scale_f32 v35, s6, v90, v84, v90
	v_fmac_f32_e32 v38, v86, v38
	v_div_scale_f32 v86, null, v84, v84, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v94, v92, 1.0
	v_fma_f32 v34, -v83, v36, v34
	v_fmac_f32_e32 v78, v0, v37
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v0, v35, v38
	v_rcp_f32_e32 v87, v86
	v_fmac_f32_e32 v92, v77, v92
	v_div_scale_f32 v83, s7, v16, v84, v16
	v_div_fmas_f32 v34, v34, v85, v36
	v_fma_f32 v36, -v93, v78, v39
	v_div_scale_f32 v93, null, v84, v84, v14
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v39, -v91, v0, v35
	v_mul_f32_e32 v85, v83, v92
	v_div_fmas_f32 v36, v36, v37, v78
	v_rcp_f32_e32 v37, v93
	v_fma_f32 v77, -v86, v87, 1.0
	v_fmac_f32_e32 v0, v39, v38
	v_fma_f32 v39, -v94, v85, v83
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v95, s0, v15, v84, v15
	v_fmac_f32_e32 v87, v77, v87
	v_div_fixup_f32 v78, v36, v84, v89
	v_fmac_f32_e32 v85, v39, v92
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v93, v37, 1.0
	v_div_scale_f32 v39, null, v54, v54, v79
	v_div_fixup_f32 v77, v34, v84, v88
	v_fma_f32 v34, -v91, v0, v35
	v_mul_f32_e32 v35, v95, v87
	v_fmac_f32_e32 v37, v36, v37
	v_rcp_f32_e32 v36, v39
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v89, null, v54, v54, v80
	v_div_fmas_f32 v0, v34, v38, v0
	v_fma_f32 v38, -v86, v35, v95
	v_fma_f32 v34, -v94, v85, v83
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v83, v0, v84, v90
	v_fmac_f32_e32 v35, v38, v87
	v_fma_f32 v91, -v39, v36, 1.0
	v_div_fmas_f32 v34, v34, v92, v85
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v38, v89
	v_fma_f32 v0, -v86, v35, v95
	v_fmac_f32_e32 v36, v91, v36
	v_div_scale_f32 v91, null, v54, v54, v82
	v_div_scale_f32 v86, s6, v79, v54, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v87, v35
	v_rcp_f32_e32 v35, v91
	v_div_scale_f32 v87, s0, v80, v54, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v89, v38, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v38, v90, v38
	v_div_scale_f32 v90, null, v54, v54, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v91, v35, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v87, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v94, v35
	v_div_scale_f32 v88, s1, v14, v84, v14
	v_div_fixup_f32 v16, v34, v84, v16
	v_div_fixup_f32 v15, v0, v84, v15
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v88, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v34, -v93, v85, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v34, v37
	v_mul_f32_e32 v34, v86, v36
	v_fma_f32 v0, -v93, v85, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v39, v34, v86
	v_rcp_f32_e32 v93, v90
	v_div_fmas_f32 v0, v0, v37, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v88, v36
	v_fma_f32 v37, -v89, v92, v87
	v_div_scale_f32 v85, s1, v82, v54, v82
	v_div_fixup_f32 v14, v0, v84, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v39, v34, v86
	v_fma_f32 v88, -v90, v93, 1.0
	v_fmac_f32_e32 v92, v37, v38
	v_mul_f32_e32 v37, v85, v35
	v_div_scale_f32 v84, null, v54, v54, v71
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v39, s7, v81, v54, v81
	v_div_fmas_f32 v0, v0, v36, v34
	v_fma_f32 v36, -v91, v37, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v54, v54, v72
	v_fma_f32 v34, -v89, v92, v87
	v_mul_f32_e32 v87, v39, v93
	v_fmac_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v88
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v79, v0, v54, v79
	v_div_fmas_f32 v34, v34, v38, v92
	v_fma_f32 v38, -v90, v87, v39
	v_fma_f32 v89, -v84, v86, 1.0
	v_fma_f32 v0, -v91, v37, v85
	v_div_scale_f32 v85, null, v54, v54, v73
	v_div_fixup_f32 v80, v34, v54, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v87, v38, v93 :: v_dual_fmac_f32 v86, v89, v86
	v_div_scale_f32 v34, s0, v71, v54, v71
	v_fma_f32 v38, -v88, v36, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, null, v54, v54, v74
	v_div_fmas_f32 v0, v0, v35, v37
	v_fma_f32 v35, -v90, v87, v39
	v_mul_f32_e32 v37, v34, v86
	v_fmac_f32_e32 v36, v38, v36
	v_rcp_f32_e32 v38, v85
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v39, s1, v72, v54, v72
	v_div_fmas_f32 v35, v35, v93, v87
	v_fma_f32 v87, -v84, v37, v34
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v39, v36
	v_div_fixup_f32 v82, v0, v54, v82
	v_div_fixup_f32 v81, v35, v54, v81
	v_fma_f32 v91, -v85, v38, 1.0
	v_fmac_f32_e32 v37, v87, v86
	v_div_scale_f32 v87, null, v54, v54, v13
	v_fma_f32 v0, -v88, v90, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v91, v38
	v_div_scale_f32 v35, s6, v73, v54, v73
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v34, -v84, v37, v34
	v_rcp_f32_e32 v84, v87
	v_fmac_f32_e32 v90, v0, v36
	v_mul_f32_e32 v0, v35, v38
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s7, v74, v54, v74
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, null, v54, v54, v63
	v_div_fmas_f32 v34, v34, v86, v37
	v_fma_f32 v37, -v88, v90, v39
	v_fma_f32 v39, -v85, v0, v35
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v88, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v71, v34, v54, v71
	v_div_fmas_f32 v36, v37, v36, v90
	v_fmac_f32_e32 v0, v39, v38
	v_rcp_f32_e32 v37, v93
	v_fma_f32 v39, -v89, v86, v91
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s0, v13, v54, v13
	v_fma_f32 v34, -v85, v0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v39, v92
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v35, v88, v84
	v_div_fixup_f32 v72, v36, v54, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v93, v37, 1.0
	v_div_scale_f32 v39, null, v54, v54, v64
	v_div_fmas_f32 v0, v34, v38, v0
	v_fma_f32 v34, -v89, v86, v91
	v_fma_f32 v38, -v87, v35, v88
	v_div_scale_f32 v89, null, v54, v54, v65
	v_fmac_f32_e32 v37, v36, v37
	v_rcp_f32_e32 v36, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v84
	v_rcp_f32_e32 v38, v89
	v_div_scale_f32 v85, s1, v63, v54, v63
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v73, v0, v54, v73
	v_div_fmas_f32 v34, v34, v92, v86
	v_mul_f32_e32 v86, v85, v37
	v_fma_f32 v0, -v87, v35, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v39, v36, 1.0
	v_div_scale_f32 v87, s6, v64, v54, v64
	v_fma_f32 v88, -v89, v38, 1.0
	v_div_fixup_f32 v74, v34, v54, v74
	v_fma_f32 v34, -v93, v86, v85
	v_fmac_f32_e32 v36, v90, v36
	v_div_scale_f32 v90, null, v54, v54, v66
	v_fmac_f32_e32 v38, v88, v38
	v_div_scale_f32 v88, null, v54, v54, v12
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v86, v34, v37
	v_div_fmas_f32 v0, v0, v84, v35
	v_mul_f32_e32 v34, v87, v36
	v_rcp_f32_e32 v35, v90
	v_div_scale_f32 v84, s0, v65, v54, v65
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v0, v0, v54, v13
	v_fma_f32 v13, -v93, v86, v85
	v_fma_f32 v85, -v39, v34, v87
	v_mul_f32_e32 v91, v84, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v35, 1.0
	v_div_fmas_f32 v13, v13, v37, v86
	v_fmac_f32_e32 v34, v85, v36
	v_fma_f32 v37, -v89, v91, v84
	v_fma_f32 v86, -v88, v92, 1.0
	v_fmac_f32_e32 v35, v93, v35
	v_div_scale_f32 v85, s1, v66, v54, v66
	v_fma_f32 v39, -v39, v34, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v91, v37, v38 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v54, v54, v10
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v13, v13, v54, v63
	v_mul_f32_e32 v37, v85, v35
	v_div_scale_f32 v63, s7, v12, v54, v12
	v_div_fmas_f32 v34, v39, v36, v34
	v_fma_f32 v36, -v89, v91, v84
	v_rcp_f32_e32 v84, v86
	v_fma_f32 v39, -v90, v37, v85
	v_mul_f32_e32 v87, v63, v92
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v89, null, v54, v54, v11
	v_div_fmas_f32 v36, v36, v38, v91
	v_fmac_f32_e32 v37, v39, v35
	v_fma_f32 v39, -v88, v87, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v89
	v_fma_f32 v91, -v86, v84, 1.0
	v_div_fixup_f32 v34, v34, v54, v64
	v_fma_f32 v64, -v90, v37, v85
	v_fmac_f32_e32 v87, v39, v92
	v_div_scale_f32 v39, s0, v10, v54, v10
	v_fmac_f32_e32 v84, v91, v84
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v36, v54, v65
	v_div_fmas_f32 v35, v64, v35, v37
	v_fma_f32 v37, -v88, v87, v63
	v_mul_f32_e32 v63, v39, v84
	v_div_scale_f32 v64, null, v43, v43, v55
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v65, -v89, v38, 1.0
	v_div_fmas_f32 v37, v37, v92, v87
	v_rcp_f32_e32 v85, v64
	v_fma_f32 v87, -v86, v63, v39
	v_div_scale_f32 v90, null, v43, v43, v56
	v_fmac_f32_e32 v38, v65, v38
	v_div_scale_f32 v65, s1, v11, v54, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v87, v84
	v_div_fixup_f32 v12, v37, v54, v12
	v_div_fixup_f32 v35, v35, v54, v66
	v_mul_f32_e32 v88, v65, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v64, v85, 1.0
	v_fma_f32 v39, -v86, v63, v39
	v_div_scale_f32 v86, null, v43, v43, v58
	v_fma_f32 v37, -v89, v88, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v66, v90
	v_rcp_f32_e32 v87, v86
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v88, v37, v38
	v_div_fmas_f32 v39, v39, v84, v63
	v_div_scale_f32 v37, s6, v55, v43, v55
	v_div_scale_f32 v84, s0, v56, v43, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v63, -v89, v88, v65
	v_fma_f32 v91, -v90, v66, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v86, v87, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v43, v43, v57
	v_dual_fmac_f32 v66, v91, v66 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v89, s7, v58, v43, v58
	v_div_fmas_f32 v38, v63, v38, v88
	v_mul_f32_e32 v65, v37, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v93, v84, v66 :: v_dual_mul_f32 v88, v89, v87
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v10, v39, v54, v10
	v_div_fixup_f32 v11, v38, v54, v11
	v_div_scale_f32 v54, null, v43, v43, v47
	v_fma_f32 v38, -v86, v88, v89
	v_fma_f32 v91, -v64, v65, v37
	v_fma_f32 v63, -v90, v93, v84
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v38, v87
	v_rcp_f32_e32 v38, v54
	v_fmac_f32_e32 v65, v91, v85
	v_fmac_f32_e32 v93, v63, v66
	v_fma_f32 v39, -v92, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v37, -v64, v65, v37
	v_fma_f32 v63, -v90, v93, v84
	v_fmac_f32_e32 v94, v39, v94
	v_div_scale_f32 v39, s1, v57, v43, v57
	v_fma_f32 v64, -v86, v88, v89
	v_fma_f32 v84, -v54, v38, 1.0
	v_div_fmas_f32 v37, v37, v85, v65
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v65, v39, v94
	v_div_fmas_f32 v63, v63, v66, v93
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v38, v84, v38
	v_div_fmas_f32 v64, v64, v87, v88
	v_div_scale_f32 v84, s0, v47, v43, v47
	v_div_scale_f32 v66, null, v43, v43, v48
	v_fma_f32 v86, -v92, v65, v39
	v_div_fixup_f32 v37, v37, v43, v55
	v_div_fixup_f32 v55, v63, v43, v56
	v_div_fixup_f32 v56, v64, v43, v58
	v_mul_f32_e32 v58, v84, v38
	v_rcp_f32_e32 v85, v66
	v_fmac_f32_e32 v65, v86, v94
	v_div_scale_f32 v64, null, v43, v43, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v54, v58, v84
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v39, -v92, v65, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v87, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v58, v86, v38
	v_fma_f32 v63, -v66, v85, 1.0
	v_div_fmas_f32 v39, v39, v94, v65
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v86, null, v43, v43, v50
	v_fma_f32 v54, -v54, v58, v84
	v_fmac_f32_e32 v85, v63, v85
	v_div_scale_f32 v63, s6, v48, v43, v48
	v_fma_f32 v84, -v64, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v54, v38, v58
	v_div_scale_f32 v54, null, v43, v43, v9
	v_mul_f32_e32 v65, v63, v85
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v39, v39, v43, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v58, v54
	v_fmac_f32_e32 v87, v84, v87
	v_fma_f32 v57, -v66, v65, v63
	v_div_scale_f32 v84, null, v43, v43, v40
	v_div_fixup_f32 v38, v38, v43, v47
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v65, v57, v85
	v_div_scale_f32 v57, s0, v49, v43, v49
	v_fma_f32 v47, -v86, v88, 1.0
	v_fma_f32 v89, -v54, v58, 1.0
	v_rcp_f32_e32 v90, v84
	v_fma_f32 v63, -v66, v65, v63
	v_mul_f32_e32 v66, v57, v87
	v_fmac_f32_e32 v88, v47, v88
	v_div_scale_f32 v47, s1, v50, v43, v50
	v_fmac_f32_e32 v58, v89, v58
	v_div_scale_f32 v89, null, v43, v43, v41
	v_div_fmas_f32 v63, v63, v85, v65
	v_fma_f32 v65, -v64, v66, v57
	v_mul_f32_e32 v85, v47, v88
	v_div_scale_f32 v91, s6, v9, v43, v9
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v66, v65, v87
	v_fma_f32 v65, -v86, v85, v47
	v_mul_f32_e32 v94, v91, v58
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s7, v40, v43, v40
	v_div_fixup_f32 v48, v63, v43, v48
	v_fma_f32 v57, -v64, v66, v57
	v_fmac_f32_e32 v85, v65, v88
	v_fma_f32 v63, -v54, v94, v91
	v_mul_f32_e32 v64, v92, v90
	v_fma_f32 v65, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v47, -v86, v85, v47
	v_fmac_f32_e32 v94, v63, v58
	v_fma_f32 v63, -v84, v64, v92
	v_fmac_f32_e32 v93, v65, v93
	v_div_scale_f32 v65, s0, v41, v43, v41
	v_div_fmas_f32 v57, v57, v87, v66
	v_div_scale_f32 v66, null, v43, v43, v42
	v_fma_f32 v54, -v54, v94, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v64, v63, v90 :: v_dual_mul_f32 v63, v65, v93
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v49, v57, v43, v49
	v_div_fmas_f32 v47, v47, v88, v85
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v85, v66
	v_div_fmas_f32 v54, v54, v58, v94
	v_fma_f32 v58, -v84, v64, v92
	v_fma_f32 v84, -v89, v63, v65
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v47, v47, v43, v50
	v_div_fixup_f32 v9, v54, v43, v9
	v_div_fmas_f32 v58, v58, v90, v64
	v_fmac_f32_e32 v63, v84, v93
	v_div_scale_f32 v54, null, v43, v43, v33
	v_fma_f32 v57, -v66, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v40, v58, v43, v40
	v_fma_f32 v50, -v89, v63, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v58, v54
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v85, v57, v85
	v_div_scale_f32 v57, null, v43, v43, v6
	v_div_fmas_f32 v50, v50, v93, v63
	v_div_scale_f32 v63, null, v43, v43, v7
	v_div_scale_f32 v87, null, v43, v43, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v57
	v_rcp_f32_e32 v84, v63
	v_div_scale_f32 v64, vcc_lo, v42, v43, v42
	v_div_fixup_f32 v41, v50, v43, v41
	v_fma_f32 v50, -v54, v58, 1.0
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v64, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v58, v50, v58
	v_div_scale_f32 v50, s0, v33, v43, v33
	v_fma_f32 v88, -v57, v65, 1.0
	v_fma_f32 v91, -v63, v84, 1.0
	v_fma_f32 v90, -v66, v86, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v50, v58
	v_fma_f32 v93, -v87, v89, 1.0
	v_fmac_f32_e32 v65, v88, v65
	v_div_scale_f32 v88, s1, v6, v43, v6
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s6, v7, v43, v7
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v54, v92, v50
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s7, v8, v43, v8
	v_dual_mul_f32 v94, v88, v65 :: v_dual_mul_f32 v95, v91, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v90, v58
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v64, -v66, v86, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v66, -v57, v94, v88
	v_fma_f32 v90, -v63, v95, v91
	v_fma_f32 v50, -v54, v92, v50
	v_fma_f32 v54, -v87, v96, v93
	v_div_fmas_f32 v64, v64, v85, v86
	v_fmac_f32_e32 v94, v66, v65
	v_fmac_f32_e32 v95, v90, v84
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v96, v54, v89
	v_div_fmas_f32 v50, v50, v58, v92
	v_fma_f32 v57, -v57, v94, v88
	v_fma_f32 v54, -v63, v95, v91
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v58, -v87, v96, v93
	v_div_fixup_f32 v42, v64, v43, v42
	v_div_fmas_f32 v57, v57, v65, v94
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v50, v43, v33
	v_div_fmas_f32 v54, v54, v84, v95
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v6, v57, v43, v6
	v_div_fmas_f32 v58, v58, v89, v96
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v7, v54, v43, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v61
	v_rndne_f32_e32 v6, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v58, v43, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v78, v16
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v51
	v_rndne_f32_e32 v50, v52
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v52, v59
	v_rndne_f32_e32 v53, v60
	v_rndne_f32_e32 v57, v62
	v_rndne_f32_e32 v58, v67
	v_rndne_f32_e32 v59, v68
	v_rndne_f32_e32 v60, v69
	v_rndne_f32_e32 v61, v70
	v_rndne_f32_e32 v62, v75
	v_rndne_f32_e32 v63, v76
	v_rndne_f32_e32 v64, v77
	v_rndne_f32_e32 v67, v79
	v_rndne_f32_e32 v68, v80
	v_rndne_f32_e32 v69, v82
	v_rndne_f32_e32 v70, v81
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v81, v13
	v_cvt_i32_f32_e32 v101, v6
	v_cvt_i32_f32_e32 v103, v8
	v_and_b32_e32 v6, 15, v43
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v13, 15, v31
	v_and_b32_e32 v31, 15, v54
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v54, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v121
	v_and_b32_e32 v78, 16, v121
	v_lshlrev_b32_e32 v24, 4, v125
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v83
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_cvt_i32_f32_e32 v96, v9
	v_and_b32_e32 v9, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v26, 6, v78
	v_xor_b32_e32 v24, v24, v29
	v_lshlrev_b32_e32 v29, 6, v121
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v89, v55
	v_cvt_i32_f32_e32 v90, v56
	v_cvt_i32_f32_e32 v91, v39
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v26
	v_and_or_b32 v25, 0x1b00, v29, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v77, v17
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v80, v14
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v83, v36
	v_cvt_i32_f32_e32 v97, v40
	v_cvt_i32_f32_e32 v98, v41
	v_cvt_i32_f32_e32 v99, v42
	v_cvt_i32_f32_e32 v84, v35
	v_cvt_i32_f32_e32 v85, v12
	v_cvt_i32_f32_e32 v86, v10
	v_cvt_i32_f32_e32 v87, v11
	v_cvt_i32_f32_e32 v93, v48
	v_cvt_i32_f32_e32 v94, v49
	v_cvt_i32_f32_e32 v95, v47
	v_cvt_i32_f32_e32 v100, v33
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v30
	v_and_b32_e32 v10, 15, v44
	v_and_b32_e32 v11, 15, v45
	v_and_b32_e32 v12, 15, v32
	v_and_b32_e32 v15, 15, v46
	v_and_b32_e32 v30, 15, v53
	v_and_b32_e32 v32, 15, v57
	v_and_b32_e32 v33, 15, v58
	v_and_b32_e32 v34, 15, v59
	v_and_b32_e32 v35, 15, v60
	v_and_b32_e32 v36, 15, v61
	v_and_b32_e32 v37, 15, v62
	v_and_b32_e32 v39, 15, v63
	v_and_b32_e32 v40, 15, v64
	v_and_b32_e32 v41, 15, v65
	v_and_b32_e32 v44, 15, v79
	v_and_b32_e32 v46, 15, v67
	v_and_b32_e32 v47, 15, v68
	v_and_b32_e32 v48, 15, v69
	v_and_b32_e32 v49, 15, v70
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v63, 15, v89
	v_and_b32_e32 v64, 15, v90
	v_and_b32_e32 v65, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v27
	v_xad_u32 v79, v25, v178, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v38
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v17, 15, v51
	v_and_b32_e32 v18, 15, v52
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v21, 15, v76
	v_and_b32_e32 v38, 15, v77
	v_and_b32_e32 v42, 15, v66
	v_and_b32_e32 v45, 15, v80
	v_and_b32_e32 v50, 15, v71
	v_and_b32_e32 v51, 15, v72
	v_and_b32_e32 v52, 15, v73
	v_and_b32_e32 v55, 15, v81
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v70, 15, v96
	v_and_b32_e32 v71, 15, v97
	v_and_b32_e32 v72, 15, v98
	v_and_b32_e32 v73, 15, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v79
	ds_load_b128 v[14:17], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v79
	ds_load_b128 v[29:32], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v79
	ds_load_b128 v[46:49], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v79
	ds_load_b128 v[62:65], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v79
	ds_load_b128 v[18:21], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v79
	ds_load_b128 v[42:45], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v61, 15, v87
	v_cvt_i32_f32_e32 v74, v74
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v53, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v79
	ds_load_b128 v[58:61], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v100
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v76, 15, v102
	v_and_b32_e32 v77, 15, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v20, v30, 4, v25
	v_lshl_or_b32 v25, v42, 4, v33
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v125
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v79
	ds_load_b128 v[70:73], v79 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s45, 7, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v15, 4, v7
	v_lshl_or_b32 v15, v16, 4, v8
	v_lshl_or_b32 v16, v17, 4, v9
	v_lshl_or_b32 v17, v18, 4, v10
	v_lshl_or_b32 v18, v19, 4, v11
	v_lshl_or_b32 v13, v21, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v29, 4, v24
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v5, s0, v[0:1]
	v_mad_u64_u32 v[8:9], null, v175, s0, v[0:1]
	v_mad_u64_u32 v[9:10], null, v176, s0, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v32, 4, v27
	v_lshl_or_b32 v27, v44, 4, v35
	v_lshl_or_b32 v29, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v177, s0, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v16.l
	v_and_b16 v0.h, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v13.l
	v_and_b16 v5.h, 0xff, v12.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v31, 4, v26
	v_lshl_or_b32 v26, v43, 4, v34
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_lshlrev_b16 v5.l, 8, v29.l
	v_and_b16 v5.h, 0xff, v27.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v48, 4, v40
	v_lshl_or_b32 v33, v49, 4, v41
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v72, 4, v68
	v_lshl_or_b32 v46, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v37.l
	v_and_b16 v5.h, 0xff, v36.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v40, v64, 4, v56
	v_lshl_or_b32 v41, v65, 4, v57
	v_lshl_or_b32 v43, v70, 4, v66
	v_lshl_or_b32 v44, v71, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v8, s4
	v_lshlrev_b16 v0.l, 8, v33.l
	v_and_b16 v0.h, 0xff, v32.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v4.l, 0xff, v30.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v46.l
	v_and_b16 v5.h, 0xff, v45.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v41.l
	v_and_b16 v0.h, 0xff, v40.l
	v_lshlrev_b16 v3.l, 8, v39.l
	v_and_b16 v4.l, 0xff, v38.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v6.h, 0xff, v43.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v78
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v10, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v116
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v5, v6, v42
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s42, v23
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v121
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp71:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 504
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 504
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28304
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 504
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 504
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 151
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
