	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v36, 15, v0
	v_lshrrev_b32_e32 v2, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v31, 0xc0, v0
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 31, v0
	v_and_b32_e32 v38, 0xf0, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v37, 7, v0
	v_lshlrev_b32_e32 v34, 2, v0
	v_lshlrev_b32_e32 v33, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 1, v36
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 3, v31
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v32, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s41, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s55, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s72, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v36
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v36, 1
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v4, v0, 4, 1
	v_dual_mov_b32 v24, 0x7632 :: v_dual_and_b32 v5, 24, v32
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v1
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v12, 3, v37
	v_dual_mov_b32 v139, 0xff800000 :: v_dual_and_b32 v14, 30, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_lshlrev_b32 v13, 3, v0
	v_dual_mov_b32 v18, 0xff800000 :: v_dual_lshlrev_b32 v17, 3, v35
	v_lshlrev_b32_e32 v25, 4, v37
	v_bfe_i32 v27, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v29, v36, 5, v5
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v42, 0x800, v4
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v11, v1, s[56:59], 0 offen
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 0xe0, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v3, 0xf8, v0
	v_and_b32_e32 v22, 16, v0
	v_lshlrev_b32_e32 v8, 1, v31
	v_lshlrev_b32_e32 v19, 3, v36
	v_and_b32_e32 v26, 0x60, v0
	v_or_b32_e32 v43, s73, v4
	v_lshlrev_b32_e32 v48, 1, v14
	v_mov_b32_e32 v4, v1
	v_lshrrev_b32_e32 v47, 3, v7
	v_dual_mov_b32 v23, 0x5410 :: v_dual_lshlrev_b32 v10, 2, v36
	v_or3_b32 v40, s73, v2, 62
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v21, 24, v13
	v_lshrrev_b32_e32 v49, 4, v7
	v_mov_b32_e32 v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v28, 2, v3
	v_mov_b32_e32 v7, v1
	v_cmp_eq_u32_e64 s2, 0, v22
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_lshl_or_b32 v44, v36, 8, v17
	v_lshrrev_b32_e32 v52, 1, v3
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v50, v35, 2, v8
	v_mov_b32_e32 v8, v1
	v_lshl_or_b32 v17, v38, 4, v19
	v_mov_b32_e32 v19, v1
	v_lshl_or_b32 v53, v26, 6, v25
	v_and_or_b32 v26, 0x410, v27, v26
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v45, 0, v29
	v_xor_b32_e32 v27, 8, v29
	v_xor_b32_e32 v75, 16, v29
	v_xor_b32_e32 v29, 24, v29
	v_xor_b32_e32 v47, v34, v47
	v_lshl_or_b32 v48, v35, 6, v48
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_cndmask_b32_e64 v51, 0x1054, v23, s2
	s_lshr_b32 s0, s0, 29
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v46, 0x800, v28
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v74, 0, v27
	v_add_nc_u32_e32 v76, 0, v29
	v_xor_b32_e32 v27, 8, v48
	v_xor_b32_e32 v29, 16, v48
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v16, 6, v0
	v_lshrrev_b32_e32 v20, 1, v38
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v98, 0, v27
	v_add_nc_u32_e32 v100, 0, v29
	v_and_b32_e32 v15, 0x380, v33
	v_and_b32_e32 v16, 64, v16
	v_xor_b32_e32 v17, v17, v20
	v_lshl_or_b32 v20, v51, 8, v51
	v_xor_b32_e32 v49, v50, v49
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v9, v9, s15
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	v_and_b32_e32 v20, 0x540054, v20
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v84, 40, v44
	v_xor_b32_e32 v85, 48, v44
	v_xor_b32_e32 v86, 56, v44
	v_xor_b32_e32 v87, 64, v44
	v_xor_b32_e32 v88, 0x48, v44
	v_xor_b32_e32 v89, 0x50, v44
	v_xor_b32_e32 v90, 0x58, v44
	v_xor_b32_e32 v91, 0x60, v44
	v_xor_b32_e32 v92, 0x68, v44
	v_xor_b32_e32 v93, 0x70, v44
	v_xor_b32_e32 v94, 0x78, v44
	v_xor_b32_e32 v101, 20, v48
	v_xor_b32_e32 v102, 24, v48
	v_xor_b32_e32 v103, 28, v48
	v_xor_b32_e32 v104, 32, v48
	v_xor_b32_e32 v105, 36, v48
	v_xor_b32_e32 v106, 40, v48
	v_xor_b32_e32 v107, 44, v48
	v_xor_b32_e32 v108, 48, v48
	v_xor_b32_e32 v109, 52, v48
	v_xor_b32_e32 v110, 56, v48
	v_xor_b32_e32 v111, 60, v48
	v_xor_b32_e32 v112, 0x210, v49
	v_add_nc_u32_e32 v95, 0, v17
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v39, 2, v0
	s_add_i32 s8, s8, s9
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v41, 0x800, v10
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v21
	v_or_b32_e32 v51, 14, v43
	v_or_b32_e32 v54, 20, v43
	v_or_b32_e32 v55, 22, v43
	v_or_b32_e32 v56, 24, v43
	v_or_b32_e32 v57, 26, v43
	v_or_b32_e32 v58, 28, v43
	v_or_b32_e32 v59, 30, v43
	v_or_b32_e32 v60, 32, v43
	v_or_b32_e32 v61, 34, v43
	v_or_b32_e32 v62, 36, v43
	v_or_b32_e32 v63, 38, v43
	v_or_b32_e32 v64, 40, v43
	v_or_b32_e32 v65, 42, v43
	v_or_b32_e32 v66, 44, v43
	v_or_b32_e32 v67, 46, v43
	v_or_b32_e32 v68, 48, v43
	v_or_b32_e32 v69, 50, v43
	v_or_b32_e32 v70, 52, v43
	v_or_b32_e32 v71, 54, v43
	v_or_b32_e32 v72, 56, v43
	v_or_b32_e32 v73, 58, v43
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v104
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v112, 0, v112
	v_add3_u32 v135, s8, v10, v9
	v_or_b32_e32 v138, 60, v43
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s74, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	v_and_b32_e32 v30, 24, v6
	v_mov_b32_e32 v6, v1
	v_or3_b32 v50, v16, v15, v14
	v_xor_b32_e32 v14, 8, v44
	v_xor_b32_e32 v15, 16, v44
	v_xor_b32_e32 v13, v13, v30
	v_xor_b32_e32 v30, 32, v44
	v_xor_b32_e32 v16, 24, v44
	v_xor_b32_e32 v113, 4, v50
	v_xor_b32_e32 v114, 8, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[22:23], null, s43, v28, v[12:13]
	v_cndmask_b32_e64 v12, 0x3276, v24, s2
	v_xor_b32_e32 v23, v25, v52
	v_xor_b32_e32 v24, v26, v53
	v_xor_b32_e32 v25, 0x420, v47
	v_xor_b32_e32 v26, 4, v48
	v_xor_b32_e32 v28, 12, v48
	v_lshl_or_b32 v77, v37, 10, v23
	v_lshl_or_b32 v78, v37, 7, v24
	v_add_nc_u32_e32 v83, 0, v30
	v_add_nc_u32_e32 v96, 0, v25
	v_add_nc_u32_e32 v97, 0, v26
	v_add_nc_u32_e32 v99, 0, v28
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[23:24], v45
	ds_load_b64 v[25:26], v74
	ds_load_b64 v[27:28], v75
	ds_load_b64 v[29:30], v76
	v_lshl_or_b32 v12, v12, 8, v12
	v_xor_b32_e32 v115, 12, v50
	v_xor_b32_e32 v116, 16, v50
	v_xor_b32_e32 v117, 20, v50
	v_xor_b32_e32 v118, 24, v50
	v_and_b32_e32 v12, 0x760076, v12
	v_xor_b32_e32 v119, 28, v50
	v_add_nc_u32_e32 v79, 0, v13
	v_add_nc_u32_e32 v80, 0, v14
	v_add_nc_u32_e32 v81, 0, v15
	v_add_nc_u32_e32 v82, 0, v16
	v_lshl_or_b32 v13, v20, 4, v20
	v_xor_b32_e32 v14, 0x90, v77
	v_xor_b32_e32 v15, 0x120, v77
	v_xor_b32_e32 v16, 0x1b0, v77
	v_xor_b32_e32 v17, 0x240, v77
	v_xor_b32_e32 v20, 0x2d0, v77
	v_xor_b32_e32 v126, 0x360, v77
	v_xor_b32_e32 v127, 0x3f0, v77
	v_xor_b32_e32 v128, 16, v78
	v_xor_b32_e32 v129, 32, v78
	v_xor_b32_e32 v130, 48, v78
	v_xor_b32_e32 v131, 64, v78
	v_xor_b32_e32 v132, 0x50, v78
	v_xor_b32_e32 v133, 0x60, v78
	v_xor_b32_e32 v134, 0x70, v78
	v_lshl_or_b32 v12, v12, 4, v12
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s12, 0x3fb8aa3b
	v_or_b32_e32 v52, 16, v43
	v_or_b32_e32 v53, 18, v43
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v119, 0, v119
	v_and_b32_e32 v120, 0x5040504, v13
	v_add_nc_u32_e32 v121, 0, v14
	v_add_nc_u32_e32 v122, 0, v15
	v_add_nc_u32_e32 v123, 0, v16
	v_add_nc_u32_e32 v124, 0, v17
	v_add_nc_u32_e32 v125, 0, v20
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v137, s2, v11 :: v_dual_and_b32 v136, 0x7060706, v12
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s9, s55, s73
	v_dual_mov_b32 v144, v18 :: v_dual_add_nc_u32 v149, 0, v48
	v_or_b32_e32 v18, s9, v39
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v145, 0x800, v39
	v_dual_mov_b32 v143, v19 :: v_dual_add_nc_u32 v20, 0, v47
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s55, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[18:19], null, v18, s42, v[21:22]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s7, s55, v145
	v_or_b32_e32 v151, 2, v43
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s6, vcc_lo, s2
	v_or_b32_e32 v152, 4, v43
	v_or_b32_e32 v153, 6, v43
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s2, s1, s7
	v_or_b32_e32 v154, 8, v43
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_or_b32_e32 v155, 10, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v148, v135, s55, 1
	v_or_b32_e32 v156, 12, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v150, s55, v43, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[18:19], v18, s[56:59], 0 offen
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s4, s55, v42
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v145, v151, s55, 1
	v_add_lshl_u32 v151, v152, s55, 1
	v_add_lshl_u32 v152, v153, s55, 1
	v_add_lshl_u32 v153, v154, s55, 1
	v_add_lshl_u32 v154, v155, s55, 1
	v_add_lshl_u32 v157, v51, s55, 1
	v_add_lshl_u32 v158, v52, s55, 1
	v_add_lshl_u32 v159, v53, s55, 1
	v_add_lshl_u32 v155, v156, s55, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v148, 0x80000000, v148, s6
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v150, 0x80000000, v150, s4
	v_cndmask_b32_e64 v145, 0x80000000, v145, s4
	v_cndmask_b32_e64 v151, 0x80000000, v151, s4
	v_cndmask_b32_e64 v152, 0x80000000, v152, s4
	v_cndmask_b32_e64 v153, 0x80000000, v153, s4
	v_cndmask_b32_e64 v154, 0x80000000, v154, s4
	v_cndmask_b32_e64 v157, 0x80000000, v157, s4
	v_cndmask_b32_e64 v158, 0x80000000, v158, s4
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	v_cndmask_b32_e64 v155, 0x80000000, v155, s4
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v160, v54, s55, 1
	v_add_lshl_u32 v161, v55, s55, 1
	v_add_lshl_u32 v162, v56, s55, 1
	v_add_lshl_u32 v163, v57, s55, 1
	v_add_lshl_u32 v164, v58, s55, 1
	v_cndmask_b32_e64 v183, 0x80000000, v160, s4
	v_cndmask_b32_e64 v184, 0x80000000, v161, s4
	v_cndmask_b32_e64 v185, 0x80000000, v162, s4
	v_cndmask_b32_e64 v186, 0x80000000, v163, s4
	v_cndmask_b32_e64 v190, 0x80000000, v164, s4
	v_add_lshl_u32 v174, v68, s55, 1
	v_add_lshl_u32 v175, v69, s55, 1
	v_add_lshl_u32 v176, v70, s55, 1
	v_add_lshl_u32 v177, v71, s55, 1
	v_add_lshl_u32 v178, v72, s55, 1
	v_add_lshl_u32 v179, v73, s55, 1
	v_add_lshl_u32 v180, v138, s55, 1
	v_add_lshl_u32 v181, s55, v40, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v166, v60, s55, 1
	v_add_lshl_u32 v167, v61, s55, 1
	v_add_lshl_u32 v168, v62, s55, 1
	v_add_lshl_u32 v169, v63, s55, 1
	v_add_lshl_u32 v170, v64, s55, 1
	v_add_lshl_u32 v171, v65, s55, 1
	v_add_lshl_u32 v172, v66, s55, 1
	v_add_lshl_u32 v173, v67, s55, 1
	v_cndmask_b32_e64 v238, 0x80000000, v174, s4
	v_cndmask_b32_e64 v239, 0x80000000, v175, s4
	v_cndmask_b32_e64 v240, 0x80000000, v176, s4
	v_cndmask_b32_e64 v241, 0x80000000, v177, s4
	v_cndmask_b32_e64 v242, 0x80000000, v178, s4
	v_cndmask_b32_e64 v243, 0x80000000, v179, s4
	v_cndmask_b32_e64 v244, 0x80000000, v180, s4
	v_cndmask_b32_e64 v245, 0x80000000, v181, s4
	v_cndmask_b32_e64 v196, 0x80000000, v166, s4
	v_cndmask_b32_e64 v197, 0x80000000, v167, s4
	v_cndmask_b32_e64 v232, 0x80000000, v168, s4
	v_cndmask_b32_e64 v233, 0x80000000, v169, s4
	v_cndmask_b32_e64 v234, 0x80000000, v170, s4
	v_cndmask_b32_e64 v235, 0x80000000, v171, s4
	v_cndmask_b32_e64 v236, 0x80000000, v172, s4
	v_cndmask_b32_e64 v237, 0x80000000, v173, s4
	v_add_lshl_u32 v165, v59, s55, 1
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v17.l, 0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s5, s55, v46
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v139
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v140, v140, v140 :: v_dual_add_nc_u32 v141, 0, v77
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v165, 0x80000000, v165, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v246.l, v17.l
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s5, s0, s5
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v79, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b64 v[230:231], v148, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x9
	buffer_load_u16 v191, v150, s[64:67], 0 offen
	buffer_load_u16 v189, v145, s[64:67], 0 offen
	buffer_load_u16 v188, v151, s[64:67], 0 offen
	buffer_load_u16 v187, v152, s[64:67], 0 offen
	buffer_load_u16 v156, v153, s[64:67], 0 offen
	buffer_load_u16 v154, v154, s[64:67], 0 offen
	buffer_load_u16 v153, v155, s[64:67], 0 offen
	buffer_load_u16 v148, v157, s[64:67], 0 offen
	buffer_load_u16 v145, v158, s[64:67], 0 offen
	buffer_load_u16 v150, v159, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[157:160], v45 offset1:1
	ds_load_2addr_stride64_b64 v[161:164], v45 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[174:177], v74 offset1:1
	ds_load_2addr_stride64_b64 v[178:181], v74 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v151, v183, s[64:67], 0 offen
	buffer_load_u16 v152, v184, s[64:67], 0 offen
	buffer_load_u16 v155, v185, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[222:225], v76 offset1:1
	ds_load_2addr_stride64_b64 v[226:229], v76 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[192:195], v75 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[157:158], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[159:160], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[161:162], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[214:221], v[163:164], v[23:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v75 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[198:205], v[176:177], v[25:26], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[174:175], v[25:26], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[178:179], v[25:26], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[214:221], v[180:181], v[25:26], v[214:221] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[192:193], v[27:28], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[214:221], v[194:195], v[27:28], v[214:221] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[226:227], v[29:30], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[214:221], v[228:229], v[29:30], v[214:221] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v164, v206
	v_cvt_f32_i32_e32 v185, v212
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[198:205], v[11:12], v[27:28], v[198:205] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x12
	buffer_load_u16 v157, v186, s[64:67], 0 offen
	buffer_load_u16 v159, v190, s[64:67], 0 offen
	buffer_load_u16 v161, v165, s[64:67], 0 offen
	buffer_load_u16 v163, v196, s[64:67], 0 offen
	buffer_load_u16 v165, v197, s[64:67], 0 offen
	buffer_load_u16 v175, v232, s[64:67], 0 offen
	buffer_load_u16 v177, v233, s[64:67], 0 offen
	buffer_load_u16 v180, v234, s[64:67], 0 offen
	buffer_load_u16 v183, v235, s[64:67], 0 offen
	buffer_load_u16 v184, v236, s[64:67], 0 offen
	buffer_load_u16 v179, v237, s[64:67], 0 offen
	buffer_load_u16 v11, v238, s[64:67], 0 offen
	buffer_load_u16 v12, v239, s[64:67], 0 offen
	buffer_load_u16 v13, v240, s[64:67], 0 offen
	buffer_load_u16 v14, v241, s[64:67], 0 offen
	buffer_load_u16 v15, v242, s[64:67], 0 offen
	buffer_load_u16 v16, v243, s[64:67], 0 offen
	buffer_load_u16 v18, v244, s[64:67], 0 offen
	buffer_load_u16 v19, v245, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[166:173], v[9:10], v[27:28], v[166:173] neg_lo:[1,1,0]
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[198:205], v[224:225], v[29:30], v[198:205] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v190, v211
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[166:173], v[222:223], v[29:30], v[166:173] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v186, v213
	v_cvt_f32_i32_e32 v174, v207
	v_cvt_f32_i32_e32 v197, v199
	v_cvt_f32_i32_e32 v199, v201
	v_cvt_f32_i32_e32 v196, v166
	v_cvt_f32_i32_e32 v222, v167
	v_cvt_f32_i32_e32 v223, v168
	v_cvt_f32_i32_e32 v224, v169
	v_cvt_f32_i32_e32 v225, v170
	v_cvt_f32_i32_e32 v201, v202
	v_cvt_f32_i32_e32 v158, v203
	v_cvt_f32_i32_e32 v160, v204
	v_cvt_f32_i32_e32 v166, v214
	v_cvt_f32_i32_e32 v167, v215
	v_cvt_f32_i32_e32 v168, v216
	v_cvt_f32_i32_e32 v169, v217
	v_cvt_f32_i32_e32 v170, v218
	v_cvt_f32_i32_e32 v226, v171
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v182, 0, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v162, v205
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v146, 0, v50
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v142, 0, v78
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v192, v173
	v_cvt_f32_i32_e32 v227, v172
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v176, v208
	v_cvt_f32_i32_e32 v173, v221
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v221.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v158, v137, v158
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v172, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v220.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v162, v137, v162
	v_mul_f32_e32 v160, v137, v160
	v_cvt_f32_i32_e32 v181, v210
	v_cvt_f32_i32_e32 v171, v219
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v219.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v178, v209
	v_mul_f32_e32 v186, v137, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v208.l, v17.l
	v_mov_b16_e64 v210.l, v17.l
	v_mov_b16_e64 v209.l, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v178, v137, v178
	v_mul_f32_e32 v185, v137, v185
	v_mul_f32_e32 v171, v137, v171
	v_mul_f32_e32 v181, v137, v181
	v_mul_f32_e32 v169, v137, v169
	v_mul_f32_e32 v173, v137, v173
	v_mul_f32_e32 v167, v137, v167
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v9, 0xff80ff80, v230, s6
	v_cndmask_b32_e64 v10, 0xff80ff80, v231, s6
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v207, 16, v187
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v193.l, v9.l
	v_mov_b16_e64 v193.h, v10.l
	v_mov_b16_e64 v194.l, v9.h
	v_mov_b16_e64 v194.h, v10.h
	ds_store_b32 v20, v193
	ds_store_b32 v96, v194
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v202, v149
	ds_load_b32 v203, v97
	ds_load_b32 v204, v98
	ds_load_b32 v206, v99
	ds_load_b32 v211, v100
	ds_load_b32 v213, v101
	ds_load_b32 v214, v102
	ds_load_b32 v216, v103
	ds_load_b32 v217, v104
	ds_load_b32 v218, v105
	ds_load_b32 v215, v106
	ds_load_b32 v212, v107
	ds_load_b32 v195, v108
	ds_load_b32 v194, v109
	ds_load_b32 v193, v110
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v246.h, v10.l
	v_mov_b16_e32 v17.h, v9.l
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v205, v111
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v246
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(14)
	v_and_b32_e32 v187, 0xffff0000, v203
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v17
	v_cmp_neq_f32_e64 s7, 0xff800000, v9
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_and_b32 s2, s6, s2
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v187, 0x3fb8aa3b, v187
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v9, 0, 1, s2
	s_and_b32 s4, s6, s4
	s_and_b32 s7, s6, s7
	s_barrier
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v10
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s4
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v149, 0, 1, s7
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s6, s8
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v20, 0, 1, s6
	v_or_b16 v9.l, v10.l, v9.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v10.l, v20.l
	v_mov_b16_e64 v20.l, v149.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v221.h, v218.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v137, v164 :: v_dual_lshlrev_b32 v151, 16, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v9.h, 8, v10.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v137, v196
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v196.l, v17.l
	v_mov_b16_e64 v196.h, v206.l
	v_mov_b16_e64 v220.h, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v149.l, v20.l, v9.h
	ds_store_b16 v182, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v9.l, v17.l
	v_mov_b16_e64 v9.h, v202.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v147, 0, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v182, 16, v191
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v191, v137, v222 :: v_dual_mul_f32 v196, 0x3fb8aa3b, v196
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v20, 0x3fb8aa3b, v9 :: v_dual_lshlrev_b32 v175, 16, v175
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v174, v137, v174 :: v_dual_lshlrev_b32 v183, 16, v183
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v20, v10, v182
	v_mad_u64_u32 v[9:10], null, s9, s43, v[22:23]
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v10, 0xffff0000, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v182.l, v17.l
	v_mov_b16_e64 v182.h, v203.l
	v_lshlrev_b32_e32 v202, 16, v188
	v_mov_b16_e64 v203.l, v17.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v203.h, v214.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v188, 0x3fb8aa3b, v182
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v182.h, v211.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v10, v191, v189 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v191, v137, v223
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v189.l, v17.l
	v_mov_b16_e64 v189.h, v204.l
	v_mov_b16_e64 v223.l, v17.l
	v_mov_b16_e64 v223.h, v212.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v188, v191, v202 :: v_dual_mul_f32 v191, v137, v224
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v202.l, v17.l
	v_mov_b16_e64 v202.h, v213.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, v137, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v219.h, v216.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v187, v191, v207
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v207, v137, v225
	v_mul_f32_e32 v191, 0x3fb8aa3b, v189
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v189, 0xffff0000, v204
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v184, 16, v184
	v_mov_b16_e64 v222.l, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v191, v207, v156 :: v_dual_mul_f32 v156, v137, v226
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v189, 0x3fb8aa3b, v189
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v222.h, v215.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v137, v166 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v189, v156, v154 :: v_dual_mul_f32 v154, v137, v227
	.loc	1 838 37                        ; attention.py:838:37
	v_and_b32_e32 v156, 0xffff0000, v213
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v213, 0x3fb8aa3b, v221
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v155, 16, v155
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v196, v154, v153
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v153, v137, v192 :: v_dual_and_b32 v154, 0xffff0000, v206
	v_dual_mul_f32 v206, 0x3fb8aa3b, v220 :: v_dual_fmac_f32 v213, v176, v175
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v192, 0x3fb8aa3b, v154 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v154, 0xffff0000, v211
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v179, 16, v179
	v_mov_b16_e64 v207.l, v17.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.h, v17.l
	v_mov_b16_e64 v175.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v192, v153, v148
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v153, v137, v197
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v197, 0x3fb8aa3b, v154
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v148, v137, v198
	v_mul_f32_e32 v198, 0x3fb8aa3b, v182
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v182, 0xffff0000, v214
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v197, v153, v150
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v153, v137, v200 :: v_dual_mul_f32 v200, 0x3fb8aa3b, v202
	v_mul_f32_e32 v202, 0x3fb8aa3b, v203
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.h, v17.l
	v_mov_b16_e64 v176.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v200, v153, v151 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v151, v137, v199
	v_dual_mul_f32 v199, 0x3fb8aa3b, v156 :: v_dual_mul_f32 v156, v137, v201
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v201, 0x3fb8aa3b, v182
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v182, 0xffff0000, v216
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v216, 0x3fb8aa3b, v222
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v201, v158, v157
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v203, 0x3fb8aa3b, v182
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v182, 0xffff0000, v217
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v217, 0x3fb8aa3b, v223 :: v_dual_fmac_f32 v216, v181, v180
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v198, v148, v145 :: v_dual_fmac_f32 v199, v151, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v17.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v217, v185, v184 :: v_dual_mul_f32 v204, 0x3fb8aa3b, v219
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v211, 0x3fb8aa3b, v182
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v182, 0xffff0000, v218
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v17.l
	v_mov_b16_e64 v151.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v204, v160, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v152.h, v17.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v214, 0x3fb8aa3b, v182
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v182, v137, v190
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v190, 0xffff0000, v215
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v206, v164, v163
	v_dual_fmac_f32 v202, v156, v155 :: v_dual_fmac_f32 v203, v162, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.h, v17.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v215, 0x3fb8aa3b, v190
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v190, 0xffff0000, v212
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.h, v17.l
	v_mov_b16_e64 v157.h, v17.l
	v_mov_b16_e64 v158.h, v17.l
	v_mov_b16_e64 v159.h, v17.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v218, 0x3fb8aa3b, v190 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.h, v17.l
	v_mov_b16_e64 v161.h, v17.l
	v_mov_b16_e64 v162.h, v17.l
	v_mov_b16_e64 v163.h, v17.l
	v_mov_b16_e64 v164.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v214, v178, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.h, v17.l
	v_mov_b16_e64 v178.h, v17.l
	v_mov_b16_e64 v180.h, v17.l
	v_mov_b16_e64 v181.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v215, v182, v183
	v_fmac_f32_e32 v211, v174, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.h, v17.l
	v_mov_b16_e64 v174.h, v17.l
	v_mov_b16_e64 v182.h, v17.l
	v_mov_b16_e64 v183.h, v17.l
	v_mov_b16_e64 v184.h, v17.l
	v_mov_b16_e64 v185.h, v17.l
	v_mov_b16_e64 v190.h, v17.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v218, v186, v179
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.h, v17.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v17, 1, v9
	v_add_lshl_u32 v9, v9, s43, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v168, v137, v168
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v208.h, v195.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v170, v137, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v219, 0x80000000, v17, s5
	v_cndmask_b32_e64 v17, 0x80000000, v9, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v9, 0xffff0000, v195
	v_and_b32_e32 v195, 0xffff0000, v205
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v16, 16, v16
	v_mov_b16_e64 v207.h, v194.l
	v_mov_b16_e64 v209.h, v205.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v205, 0x3fb8aa3b, v208
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v223, 0x3fb8aa3b, v195
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v194, 0xffff0000, v194
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v209, 0x3fb8aa3b, v209 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16 v112, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v205, v166, v11
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v11, v113
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v113 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v223, v173, v19 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v221, 0x3fb8aa3b, v194 :: v_dual_mul_f32 v220, 0x3fb8aa3b, v9
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_u16_d16 v9, v146
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v146 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v172, v137, v172 :: v_dual_mul_f32 v207, 0x3fb8aa3b, v207
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v221, v169, v14 :: v_dual_fmac_f32 v220, v167, v12
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v12, v114
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v114 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v207, v168, v13 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v210.h, v193.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v13, v115
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v115 offset:32
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v193, 0xffff0000, v193
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v14, v116
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v14, v116 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v209, v172, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v194, 0x3fb8aa3b, v210
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v18, v119
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v18, v119 offset:32
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v222, 0x3fb8aa3b, v193
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v19.h, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v11.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v194, v170, v15
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v15, v117
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v15, v117 offset:32
	v_and_b16 v19.l, 1, v9.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v222, v171, v16
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v16, v118
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v118 offset:32
	v_cmp_eq_u16_e64 s8, 1, v19.h
	v_lshrrev_b16 v9.h, 8, v9.h
	v_cmp_eq_u16_e64 s5, 1, v19.l
	v_and_b16 v19.l, 1, v12.l
	v_and_b16 v19.h, 1, v12.h
	v_lshrrev_b16 v12.l, 8, v12.l
	v_and_b16 v9.h, 1, v9.h
	v_lshrrev_b16 v12.h, 8, v12.h
	v_cmp_eq_u16_e64 s19, 1, v19.l
	v_and_b16 v19.l, 1, v13.l
	v_cmp_eq_u16_e64 s9, 1, v19.h
	v_and_b16 v19.h, 1, v13.h
	v_lshrrev_b16 v13.l, 8, v13.l
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s15, 1, v19.l
	v_and_b16 v19.l, 1, v14.l
	v_cmp_eq_u16_e64 s10, 1, v19.h
	v_and_b16 v19.h, 1, v14.h
	v_lshrrev_b16 v14.l, 8, v14.l
	v_and_b16 v13.l, 1, v13.l
	v_cmp_eq_u16_e64 s16, 1, v19.l
	v_and_b16 v19.l, 1, v15.l
	v_cmp_eq_u16_e64 s11, 1, v19.h
	v_and_b16 v19.h, 1, v15.h
	v_lshrrev_b16 v15.l, 8, v15.l
	v_and_b16 v14.l, 1, v14.l
	v_cmp_eq_u16_e64 s17, 1, v19.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v19.l, 1, v16.l
	v_cmp_eq_u16_e64 s12, 1, v19.h
	v_and_b16 v19.h, 1, v16.h
	v_lshrrev_b16 v16.l, 8, v16.l
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u16_e64 s18, 1, v19.l
	v_and_b16 v19.l, 1, v18.l
	v_cmp_eq_u16_e64 s13, 1, v19.h
	v_and_b16 v19.h, 1, v18.h
	v_lshrrev_b16 v18.l, 8, v18.l
	v_lshrrev_b16 v18.h, 8, v18.h
	v_cmp_eq_u16_e64 s20, 1, v19.l
	v_and_b16 v19.l, 1, v9.l
	v_cmp_eq_u16_e64 s14, 1, v19.h
	v_and_b16 v19.h, 1, v11.l
	v_lshrrev_b16 v9.l, 8, v9.l
	v_and_b16 v16.l, 1, v16.l
	v_and_b16 v18.l, 1, v18.l
	v_lshrrev_b16 v11.l, 8, v11.l
	v_lshrrev_b16 v13.h, 8, v13.h
	v_lshrrev_b16 v14.h, 8, v14.h
	v_lshrrev_b16 v15.h, 8, v15.h
	v_lshrrev_b16 v16.h, 8, v16.h
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v18.h, 1, v18.h
	v_cmp_eq_u16_e64 s26, 1, v19.h
	v_cmp_eq_u16_e64 s29, 1, v12.l
	v_cmp_eq_u16_e64 s21, 1, v13.l
	v_cmp_eq_u16_e64 s22, 1, v14.l
	v_cmp_eq_u16_e64 s23, 1, v15.l
	v_cmp_eq_u16_e64 s24, 1, v16.l
	v_cmp_eq_u16_e64 s38, 1, v18.l
	v_cmp_eq_u16_e64 s30, 1, v9.h
	v_and_b16 v11.l, 1, v11.l
	v_and_b16 v11.h, 1, v11.h
	v_and_b16 v12.h, 1, v12.h
	v_and_b16 v13.h, 1, v13.h
	v_and_b16 v14.h, 1, v14.h
	v_and_b16 v15.h, 1, v15.h
	v_and_b16 v16.h, 1, v16.h
	v_cmp_eq_u16_e64 s25, 1, v19.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v188, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v191, s19
	v_cndmask_b32_e64 v172, 0xff800000, v196, s15
	v_cndmask_b32_e64 v188, 0xff800000, v198, s16
	v_cndmask_b32_e64 v191, 0xff800000, v200, s17
	v_cndmask_b32_e64 v193, 0xff800000, v202, s18
	v_cndmask_b32_e64 v195, 0xff800000, v204, s20
	v_cndmask_b32_e64 v198, 0xff800000, v206, s5
	v_cndmask_b32_e64 v171, 0xff800000, v189, s29
	v_cndmask_b32_e64 v173, 0xff800000, v192, s21
	v_cndmask_b32_e64 v189, 0xff800000, v197, s22
	v_cndmask_b32_e64 v192, 0xff800000, v199, s23
	v_cndmask_b32_e64 v210, 0xff800000, v194, s13
	v_cndmask_b32_e64 v194, 0xff800000, v201, s24
	v_cndmask_b32_e64 v196, 0xff800000, v203, s38
	v_cndmask_b32_e64 v199, 0xff800000, v211, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v18.h
	v_cmp_eq_u16_e64 s28, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v20, s25
	v_cndmask_b32_e64 v167, 0xff800000, v10, s27
	v_cndmask_b32_e64 v200, 0xff800000, v213, s8
	v_cndmask_b32_e64 v212, 0xff800000, v209, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v11.h
	v_cmp_eq_u16_e64 s33, 1, v12.h
	v_cmp_eq_u16_e64 s34, 1, v13.h
	v_cmp_eq_u16_e64 s35, 1, v14.h
	v_cmp_eq_u16_e64 s36, 1, v15.h
	v_cmp_eq_u16_e64 s37, 1, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v213, 0xff800000, v223, s39
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v189, v191, v192
	v_max3_f32 v19, v193, v194, v195
	v_max3_f32 v20, v196, v198, v199
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v187, s28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v202, 0xff800000, v216, s9
	v_cndmask_b32_e64 v204, 0xff800000, v217, s10
	v_cndmask_b32_e64 v206, 0xff800000, v205, s11
	v_cndmask_b32_e64 v208, 0xff800000, v207, s12
	v_cndmask_b32_e64 v201, 0xff800000, v214, s31
	v_cndmask_b32_e64 v203, 0xff800000, v215, s33
	v_cndmask_b32_e64 v205, 0xff800000, v218, s34
	v_cndmask_b32_e64 v209, 0xff800000, v221, s36
	v_cndmask_b32_e64 v211, 0xff800000, v222, s37
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v217, v212, v213
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v207, 0xff800000, v220, s35
	ds_store_b64 v147, v[166:167]
	ds_store_b64 v80, v[168:169]
	ds_store_b64 v81, v[170:171]
	ds_store_b64 v82, v[172:173]
	ds_store_b64 v83, v[188:189]
	ds_store_b64 v84, v[191:192]
	ds_store_b64 v85, v[193:194]
	ds_store_b64 v86, v[195:196]
	ds_store_b64 v87, v[198:199]
	ds_store_b64 v88, v[200:201]
	ds_store_b64 v89, v[202:203]
	ds_store_b64 v90, v[204:205]
	ds_store_b64 v91, v[206:207]
	ds_store_b64 v92, v[208:209]
	ds_store_b64 v93, v[210:211]
	ds_store_b64 v94, v[212:213]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[13:16], v219, s[68:71], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v218, v18, v19, v20
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v17, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v197, v166, v167
	v_max3_f32 v214, v169, v170, v171
	v_max3_f32 v146, v200, v201, v202
	v_max3_f32 v147, v203, v204, v205
	v_max3_f32 v187, v206, v207, v208
	v_max3_f32 v215, v172, v173, v188
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[9:12], v95 offset1:16
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v216, v209, v210
	v_max3_f32 v197, v197, v168, v214
	v_max3_f32 v146, v146, v147, v187
.Ltmp10:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v179, v144, v144
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v147, v216, v211, v217
	v_max3_f32 v187, v197, v215, v218
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v146, v187, v146, v147
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v147, v146, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v187, v11, v11
	v_max_f32_e32 v197, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v146, v139, v146, v147
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v147, v197, v187
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v197, v198, v146
	v_sub_f32_e32 v198, v201, v146
	v_sub_f32_e32 v201, v202, v146
	v_sub_f32_e32 v202, v205, v146
	v_sub_f32_e32 v205, v206, v146
	v_sub_f32_e32 v206, v209, v146
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v209, v139, v146
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v147, v147, v10, v12
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v209, v209
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v139, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v139, v139 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v168, v146
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v209, 0, v209, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v169, v169, v146
	v_sub_f32_e32 v171, v171, v146
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v139
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v168, v168
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v209
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v169, v169
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v209
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v166, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v167, v167, v146 :: v_dual_mul_f32 v2, v2, v209
	v_dual_sub_f32 v170, v170, v146 :: v_dual_mul_f32 v1, v1, v209
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v168, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v172, v172, v146 :: v_dual_mul_f32 v3, v3, v209
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v169, s28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v171, 0, v171, s29
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v188, v188, v146 :: v_dual_mul_f32 v5, v5, v209
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v148.l, v166.h
	v_mov_b16_e64 v149.l, v169.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v189, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v168.h
	v_mov_b16_e64 v153.l, v171.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v189, v192, v146
	v_dual_sub_f32 v192, v194, v146 :: v_dual_mul_f32 v7, v7, v209
	v_dual_sub_f32 v194, v196, v146 :: v_dual_max_f32 v139, v147, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v172, v172
	v_exp_f32_e32 v188, v188
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v147, 1, v148
	v_and_b32_e32 v148, 1, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v187
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v149, 1, v150
	v_and_b32_e32 v150, 1, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v189, v189
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s27
	v_cndmask_b32_e64 v170, 0, v170, s19
	v_cndmask_b32_e64 v172, 0, v172, s15
	v_cndmask_b32_e64 v188, 0, v188, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v173, v173, v146 :: v_dual_mul_f32 v8, v8, v209
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v187, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v145.l, v167.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v196, v199, v146
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v189, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v154.l, v170.h
	v_mov_b16_e64 v152.l, v172.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v191, v191, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v187.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v193, v193, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v188.h
	v_mov_b16_e64 v157.l, v189.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v195, v195, v146
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v192, v192
	v_exp_f32_e32 v194, v194
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v145, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v196, v196
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v154
	v_and_b32_e32 v152, 1, v152
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v191, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v193, v193
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v156
	v_and_b32_e32 v156, 1, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v195, v195
	v_exp_f32_e32 v198, v198
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s21
	v_cndmask_b32_e64 v192, 0, v192, s24
	v_cndmask_b32_e64 v194, 0, v194, s38
	v_cndmask_b32_e64 v191, 0, v191, s17
	v_cndmask_b32_e64 v196, 0, v196, s30
	v_cndmask_b32_e64 v193, 0, v193, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v151.l, v173.h
	v_mov_b16_e64 v159.l, v192.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v195, 0, v195, s20
	v_cndmask_b32_e64 v198, 0, v198, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v191.h
	v_mov_b16_e64 v160.l, v193.h
	v_mov_b16_e64 v161.l, v194.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v199, v200, v146
	v_dual_sub_f32 v200, v203, v146 :: v_dual_and_b32 v151, 1, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v195.h
	v_mov_b16_e64 v163.l, v196.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v202, v202
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v200, v200
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.l, v198.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v203, v204, v146
	v_sub_f32_e32 v204, v207, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v157, 1, v158
	v_and_b32_e32 v158, 1, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v197, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v160
	v_and_b32_e32 v160, 1, v161
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v199, v199
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v161, 1, v162
	v_and_b32_e32 v162, 1, v163
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v201, v201
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v200, 0, v200, s33
	v_cndmask_b32_e64 v202, 0, v202, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v204, v204
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v197, 0, v197, s5
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v212, v212, v146
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v175.l, v200.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v199, 0, v199, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.l, v202.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v207, v208, v146
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v201, 0, v201, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v164.l, v197.h
	v_mov_b16_e64 v174.l, v199.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v204, 0, v204, s35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v212, v212
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v176.l, v201.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v208, v211, v146 :: v_dual_and_b32 v163, 1, v164
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v206, v206
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v164, 1, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v203, v203
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v165, 1, v174
	v_and_b32_e32 v174, 1, v175
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v205, v205
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v175, 1, v176
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v208, v208
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v176, 1, v177
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v207, v207
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v206, 0, v206, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v180.l, v204.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v203, 0, v203, s10
	v_cndmask_b32_e64 v212, 0, v212, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v167, v167
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v205, 0, v205, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v182.l, v206.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v208, 0, v208, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.l, v203.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v207, 0, v207, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.l, v205.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v211, v213, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v184.l, v208.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v210, v210, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v183.l, v207.h
	v_and_b32_e32 v177, 1, v178
	v_and_b32_e32 v178, 1, v180
	v_and_b32_e32 v180, 1, v181
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v211, v211
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v181, 1, v182
	v_and_b32_e32 v182, 1, v183
	v_and_b32_e32 v183, 1, v184
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v210, v210
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v190.l, v212.h
	v_cmp_o_f32_e64 s8, v166, v166
	v_add3_u32 v145, v167, v145, 0x7fff
	v_add3_u32 v147, v166, v147, 0x7fff
	v_cmp_o_f32_e64 s9, v169, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v211, 0, v211, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v148, v169, v148, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v145.h, s5
	v_cndmask_b16 v145.l, 0x7fff, v147.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v210, 0, v210, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.l, v211.h
	v_cmp_o_f32_e64 s12, v170, v170
	v_add3_u32 v153, v170, v153, 0x7fff
	v_add3_u32 v170, v204, v178, 0x7fff
	v_mov_b16_e64 v185.l, v210.h
	v_cndmask_b16 v178.h, 0x7fff, v148.h, s9
	v_permlanex16_b32 v148, v145, s74, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s10, v168, v168
	v_cmp_o_f32_e64 s11, v171, v171
	v_and_b32_e32 v184, 1, v185
	v_and_b32_e32 v185, 1, v186
	v_and_b32_e32 v186, 1, v190
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v190, v139
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v149, v168, v149, 0x7fff
	v_cmp_o_f32_e64 s27, v200, v200
	v_cmp_o_f32_e64 s28, v201, v201
	v_cmp_o_f32_e64 s29, v202, v202
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v190, v190 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v203, v203
	v_add3_u32 v150, v171, v150, 0x7fff
	v_add3_u32 v166, v200, v174, 0x7fff
	v_add3_u32 v167, v201, v175, 0x7fff
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v147, v190, v190
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v168, v202, v176, 0x7fff
	v_cndmask_b16 v178.l, 0x7fff, v149.h, s10
	v_cmp_o_f32_e64 s13, v173, v173
	v_cmp_o_f32_e64 s14, v172, v172
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v147
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v147, v148, v145, v120
	v_perm_b32 v148, v148, v145, v136
	v_cmp_o_f32_e64 s16, v188, v188
	v_cmp_o_f32_e64 s17, v189, v189
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v145, v139
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v204, v204
	v_cmp_o_f32_e64 s33, v205, v205
	v_cmp_o_f32_e64 s34, v206, v206
	v_cmp_o_f32_e64 s35, v207, v207
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v145, v145 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v208, v208
	v_cmp_o_f32_e64 s37, v210, v210
	v_cmp_o_f32_e64 s38, v211, v211
	v_cmp_o_f32_e64 s39, v212, v212
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v145, v145
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v151, v173, v151, 0x7fff
	v_add3_u32 v152, v172, v152, 0x7fff
	v_add3_u32 v155, v188, v155, 0x7fff
	v_add3_u32 v156, v189, v156, 0x7fff
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v145
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v171, v205, v180, 0x7fff
	v_add3_u32 v173, v207, v182, 0x7fff
	v_add3_u32 v174, v208, v183, 0x7fff
	v_add3_u32 v175, v210, v184, 0x7fff
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v145, v139
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v180.h, 0x7fff, v150.h, s11
	v_cndmask_b16 v188.h, 0x7fff, v166.h, s27
	v_cndmask_b16 v188.l, 0x7fff, v167.h, s28
	v_cndmask_b16 v189.h, 0x7fff, v168.h, s29
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v150, v178, s74, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s15, v187, v187
	v_cmp_o_f32_e64 s18, v191, v191
	v_cmp_o_f32_e64 s19, v192, v192
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v145, v145
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v193, v193
	v_cmp_o_f32_e64 s21, v194, v194
	v_cmp_o_f32_e64 s22, v195, v195
	v_cmp_o_f32_e64 s23, v196, v196
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v145
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v154, v187, v154, 0x7fff
	v_add3_u32 v158, v192, v158, 0x7fff
	v_add3_u32 v159, v193, v159, 0x7fff
	v_add3_u32 v160, v194, v160, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v140, v140, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v162, v196, v162, 0x7fff
	v_cndmask_b16 v180.l, 0x7fff, v153.h, s12
	v_cndmask_b16 v196.h, 0x7fff, v170.h, s31
	v_cndmask_b16 v196.l, 0x7fff, v171.h, s33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v140
	v_sub_f32_e32 v11, v11, v140
	v_sub_f32_e32 v10, v10, v140
	v_sub_f32_e32 v12, v12, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v157, v191, v157, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v12, v12
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v161, v195, v161, 0x7fff
	v_cndmask_b16 v204.l, 0x7fff, v173.h, s35
	v_cndmask_b16 v205.h, 0x7fff, v174.h, s36
	v_cndmask_b16 v205.l, 0x7fff, v175.h, s37
	v_permlanex16_b32 v168, v188, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v149, v150, v178, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s4
	v_cndmask_b32_e64 v11, 0, v11, s7
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v12, 0, v12, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v150, v178, v136
	v_cmp_o_f32_e64 s24, v197, v197
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v11
.Ltmp52:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v11.l, v15.l
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v12
.Ltmp54:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v11.h, v19.l
	v_mov_b16_e32 v12.l, v16.l
	v_mov_b16_e32 v12.h, v20.l
	v_mov_b16_e32 v19.l, v15.h
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp56:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v20.l, v16.h
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v198, v198
	v_cmp_o_f32_e64 s26, v199, v199
	v_add3_u32 v163, v197, v163, 0x7fff
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v169, v203, v177, 0x7fff
	v_add3_u32 v177, v212, v186, 0x7fff
	v_add3_u32 v164, v198, v164, 0x7fff
	v_add3_u32 v165, v199, v165, 0x7fff
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v189.l, 0x7fff, v169.h, s30
	v_cndmask_b16 v182.h, 0x7fff, v154.h, s15
	v_cndmask_b16 v182.l, 0x7fff, v155.h, s16
	v_cndmask_b16 v183.h, 0x7fff, v156.h, s17
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v170, v189, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v183.l, 0x7fff, v157.h, s18
	v_cndmask_b16 v184.h, 0x7fff, v158.h, s19
	v_cndmask_b16 v184.l, 0x7fff, v159.h, s20
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v172, v206, v181, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v151.h, s13
	v_cndmask_b16 v181.l, 0x7fff, v152.h, s14
	v_cndmask_b16 v206.l, 0x7fff, v177.h, s39
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v204.h, 0x7fff, v172.h, s34
	v_permlanex16_b32 v152, v180, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v154, v181, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v197, v196, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v145, v9, v10
.Ltmp68:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v9.l, v13.l
	v_mov_b16_e32 v9.h, v17.l
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v10.l, v14.l
	v_mov_b16_e32 v10.h, v18.l
	v_mov_b16_e32 v18.l, v14.h
	ds_store_b32 v141, v9
	ds_store_b32 v121, v17
	ds_store_b32 v122, v10
	ds_store_b32 v123, v18
	ds_store_b32 v124, v11
	ds_store_b32 v125, v19
	ds_store_b32 v126, v12
	ds_store_b32 v127, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v142
	ds_load_b128 v[13:16], v128
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v18, v179, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v176, v211, v185, 0x7fff
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v145
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v185.h, 0x7fff, v160.h, s21
	v_cndmask_b16 v185.l, 0x7fff, v161.h, s22
	v_perm_b32 v167, v168, v188, v120
	v_cndmask_b16 v206.h, 0x7fff, v176.h, s38
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[171:174], v129
	ds_load_b128 v[175:178], v130
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v168, v168, v188, v136
	v_perm_b32 v169, v170, v189, v120
	v_perm_b32 v170, v170, v189, v136
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[188:191], v131
	ds_load_b128 v[192:195], v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v186.h, 0x7fff, v162.h, s23
	v_cndmask_b16 v186.l, 0x7fff, v163.h, s24
	v_cndmask_b16 v187.h, 0x7fff, v164.h, s25
	v_cndmask_b16 v187.l, 0x7fff, v165.h, s26
	v_permlanex16_b32 v156, v182, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v158, v183, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v160, v184, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v185, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v151, v152, v180, v120
	v_perm_b32 v152, v152, v180, v136
	v_perm_b32 v153, v154, v181, v120
	v_perm_b32 v154, v154, v181, v136
	v_perm_b32 v180, v197, v196, v120
	v_perm_b32 v181, v197, v196, v136
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v19, v144, v18
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v145, v17
.Ltmp74:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[196:199], v133
	ds_load_b128 v[200:203], v134
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v164, v186, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v166, v187, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v155, v156, v182, v120
	v_perm_b32 v156, v156, v182, v136
	v_perm_b32 v157, v158, v183, v120
	v_perm_b32 v158, v158, v183, v136
	v_perm_b32 v159, v160, v184, v120
	v_perm_b32 v160, v160, v184, v136
	v_perm_b32 v161, v162, v185, v120
	v_perm_b32 v162, v162, v185, v136
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v19, v19
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v20, v17
.Ltmp76:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[147:154], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v207, v204, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v208, v205, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v209, v206, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v163, v164, v186, v120
	v_perm_b32 v164, v164, v186, v136
	v_perm_b32 v165, v166, v187, v120
	v_perm_b32 v166, v166, v187, v136
.Ltmp77:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[155:162], v[1:8]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v182, v207, v204, v120
	v_perm_b32 v183, v207, v204, v136
	v_perm_b32 v184, v208, v205, v120
	v_perm_b32 v185, v208, v205, v136
	v_perm_b32 v186, v209, v206, v120
	v_perm_b32 v187, v209, v206, v136
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v9, 0, v19, s2
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v19, v17, v20
.Ltmp80:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[188:195], v[163:170], v[1:8]
	v_mov_b32_e32 v139, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v19, v143, v9
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[196:203], v[180:187], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v18, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v19, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	s_mov_b32 s1, 0x76543210
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp82:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v18 :: v_dual_cndmask_b32 v12, 0, v19
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v10, 28, v10
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp86:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp88:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v10, 0, v10
.Ltmp90:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v35
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v11 :: v_dual_add_f32 v12, v12, v13
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v11, v37, 2, 0
.Ltmp93:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp96:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v12, 0, v4 :: v_dual_mov_b32 v11, v3
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_dual_mov_b32 v5, v2 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp98:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_cndmask_b32 v8, 0, v8
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v9
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v11
	v_add_f32_e32 v1, v1, v4
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v9, v9 :: v_dual_mov_b32 v19, v15
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp114:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v3
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v7, v1
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v9, v2 :: v_dual_mov_b32 v6, v4
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_add_f32 v10, v3, v11
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_mov_b32 v18, v14
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v1, v1, v7
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v11, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v4, v6 :: v_dual_add_f32 v4, v10, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v5, v3 :: v_dual_add_f32 v8, v8, v20
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v1, v1, v11 :: v_dual_mov_b32 v16, v12
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v6, v4
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v7
.Ltmp134:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
.Ltmp135:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v17, v13
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v12, v12, v16
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_mov_b32 v16, v12
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_dual_add_f32 v17, v8, v20 :: v_dual_mov_b32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v12, v8 :: v_dual_mov_b32 v19, v15
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v17, v22 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp154:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp156:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp158:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp159:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v3, v5
.Ltmp160:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v34
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v4, v1, v2
.Ltmp162:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v32
	v_and_b32_e32 v1, 28, v32
	v_and_b32_e32 v2, 32, v33
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp164:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v31
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp165:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 247
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 247
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10956
; TotalNumSgprs: 77
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 247
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
