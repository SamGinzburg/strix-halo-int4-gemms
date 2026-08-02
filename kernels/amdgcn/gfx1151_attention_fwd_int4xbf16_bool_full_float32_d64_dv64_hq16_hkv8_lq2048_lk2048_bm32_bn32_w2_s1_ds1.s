	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v43, 0x7531 :: v_dual_lshlrev_b32 v38, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 1, v0
	s_clause 0x1
	s_load_b256 s[40:47], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v45, 0x7632 :: v_dual_and_b32 v32, 16, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s6, v3
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s39, s6, s2
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_and_b32 v40, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v39
	s_clause 0x1
	s_load_b64 s[68:69], s[0:1], 0x20
	s_load_b128 s[60:63], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v64, v3, 16, v40
	v_dual_mov_b32 v44, 0x5410 :: v_dual_and_b32 v47, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[52:53], null, s56, v3, v[32:33]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s36, s56, v32
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s65, s41, 0xffff
	s_mov_b32 s64, s40
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v49, 16, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s36
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s39, v[52:53]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v64
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_and_b32 v51, 24, v0
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_lshlrev_b32 v53, 3, v0
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v48, 1, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v68, v0, 4, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[64:67], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s39, v64
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s65, s47, 0xffff
	v_mov_b32_e32 v42, 0x6420
	s_mov_b32 s64, s46
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v46, 56, v0
	v_lshlrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v50, 7, v0
	v_bfe_i32 v54, v0, 3, 1
	v_mov_b32_e32 v28, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v31, v24
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v53, 48, v53
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v41, v1, s[64:67], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s0, 4
	v_xor_b32_e32 v83, v38, v51
	v_and_b32_e32 v51, 24, v48
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v47
	v_and_b32_e32 v38, 48, v38
	v_and_or_b32 v56, v48, 30, v68
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v37, 3, v50
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v54, 0x210, v54
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v55, 1, v46
	v_lshl_or_b32 v85, v40, 5, v51
	v_cndmask_b32_e64 v40, 0x6420, v43, s0
	v_xor_b32_e32 v38, v38, v46
	v_lshl_or_b32 v43, v50, 6, v53
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v84, 2, v56
	v_cndmask_b32_e64 v42, 0x7531, v42, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s7, s1, 0x10007
	v_xor_b32_e32 v89, v43, v54
	s_add_i32 s7, s1, s7
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s57, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s57, v55, v[37:38]
	v_mul_lo_u32 v37, s5, v39
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v87, 4, v84
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s6, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s59, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v42, 0x750031, v42
	s_add_i32 s4, s4, s6
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v88, v50, 9, v38
	v_add3_u32 v112, s4, v32, v37
	v_mov_b32_e32 v18, v24
	v_lshl_or_b32 v38, v42, 4, v42
	v_and_b32_e32 v39, 0x750031, v40
	v_xor_b32_e32 v40, 0x90, v88
	v_xor_b32_e32 v42, 0x120, v88
	v_xor_b32_e32 v43, 0x1b0, v88
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v49
	v_dual_mov_b32 v8, v24 :: v_dual_and_b32 v113, 0x7050301, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v115, 0, v42
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v114, 0, v40
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v116, 0, v43
	v_xor_b32_e32 v57, 0x430, v89
	v_xor_b32_e32 v58, 0x410, v89
	v_lshl_or_b32 v37, v39, 4, v39
	v_cndmask_b32_e64 v42, 0x1054, v44, s4
	v_cndmask_b32_e64 v43, 0x3276, v45, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v74, 4, v0
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v121, 0, v57
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v122, 0, v58
	v_mov_b32_e32 v5, v24
	v_xor_b32_e32 v55, 48, v89
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[57:58], null, s57, 3, v[53:54]
	v_and_b32_e32 v54, 0x7050301, v37
	v_lshl_or_b32 v37, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v47, 6, v47
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v119, 0, v55
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v91, v24
	v_xor_b32_e32 v56, 8, v83
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s7, s7, 0x80000
	v_mov_b32_e32 v23, v24
	s_sext_i32_i16 s7, s7
	v_mov_b32_e32 v4, v24
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s7, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 2, v68
	v_or_b32_e32 v80, 4, v68
	v_or_b32_e32 v79, 6, v68
	v_or_b32_e32 v78, 8, v68
	v_or_b32_e32 v77, 10, v68
	v_or_b32_e32 v76, 12, v68
	v_or_b32_e32 v75, 14, v68
	v_or_b32_e32 v73, 16, v68
	v_or_b32_e32 v72, 18, v68
	v_or_b32_e32 v71, 20, v68
	v_or_b32_e32 v70, 22, v68
	v_or_b32_e32 v69, 24, v68
	v_or_b32_e32 v67, 26, v68
	v_or_b32_e32 v66, 28, v68
	v_or_b32_e32 v65, 30, v68
	v_and_or_b32 v86, v48, 60, v47
	v_xor_b32_e32 v46, 8, v85
	v_xor_b32_e32 v47, 16, v85
	v_xor_b32_e32 v48, 24, v85
	v_add_nc_u32_e32 v90, 0, v56
	v_xor_b32_e32 v50, 16, v89
	v_xor_b32_e32 v51, 32, v89
	v_xor_b32_e32 v56, 0x420, v89
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s7, s7, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s58, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s58, s7, s3
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v93, 0, v46
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v95, 0, v48
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v94, 0, v47
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v117, 0, v50
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v118, 0, v51
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v120, 0, v56
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v123, s57, v53
	v_xor_b32_e32 v92, 64, v86
	v_or_b32_e32 v96, s58, v68
	v_or_b32_e32 v97, s58, v81
	v_or_b32_e32 v98, s58, v80
	v_or_b32_e32 v99, s58, v79
	v_or_b32_e32 v100, s58, v78
	v_or_b32_e32 v101, s58, v77
	v_or_b32_e32 v102, s58, v76
	v_or_b32_e32 v103, s58, v75
	v_or_b32_e32 v104, s58, v73
	v_or_b32_e32 v105, s58, v72
	v_or_b32_e32 v106, s58, v71
	v_or_b32_e32 v107, s58, v70
	v_or_b32_e32 v108, s58, v69
	v_or_b32_e32 v109, s58, v67
	v_or_b32_e32 v110, s58, v66
	v_or_b32_e32 v111, s58, v65
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v127, s57, 1, v53
	s_mov_b32 s48, 0
	s_and_b32 s43, s43, 0xffff
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s41, s48
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s66
	s_mov_b32 s47, s67
	s_mov_b32 s64, s42
	s_mov_b32 s65, s43
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v32, v84, v33
	ds_bpermute_b32 v33, v87, v33
	ds_bpermute_b32 v38, v84, v34
	ds_bpermute_b32 v34, v87, v34
	ds_bpermute_b32 v39, v84, v35
	ds_bpermute_b32 v35, v87, v35
	ds_bpermute_b32 v40, v84, v36
	ds_bpermute_b32 v36, v87, v36
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	v_mov_b32_e32 v7, v24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v55, v33, v32, s4
	v_cndmask_b32_e64 v58, v32, v33, s4
	v_and_b32_e32 v32, 0x540054, v37
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v124, s8, v41 :: v_dual_and_b32 v33, 0x760076, v42
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v56, v34, v38, s4
	v_cndmask_b32_e64 v59, v38, v34, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v33, 4, v33
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v60, v35, v39, s4
	v_cndmask_b32_e64 v62, v39, v35, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v61, v36, v40, s4
	v_cndmask_b32_e64 v63, v40, v36, s4
	v_and_b32_e32 v125, 0x5040504, v32
	v_and_b32_e32 v126, 0x7060706, v33
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e64 v128.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v138.h, v137.l
	v_mov_b16_e64 v137.l, v128.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v137.h, v136.l
	v_mov_b16_e64 v136.l, v128.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v136.h, v135.l
	v_mov_b16_e64 v150.l, v128.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v150.h, v133.l
	v_mov_b16_e64 v151.l, v128.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v151.h, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v34, v124, v34
	v_mul_f32_e32 v135, v124, v35
	v_mul_f32_e32 v154, v124, v37
	v_mul_f32_e32 v155, v124, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v146.h, v145.l
	v_mov_b16_e64 v145.l, v128.l
	v_mov_b16_e64 v145.h, v144.l
	v_mov_b16_e64 v144.l, v128.l
	v_mov_b16_e64 v144.h, v143.l
	v_mov_b16_e64 v141.h, v140.l
	v_mov_b16_e64 v140.l, v128.l
	v_mov_b16_e64 v140.h, v139.l
	v_mov_b16_e64 v139.l, v128.l
	v_mov_b16_e64 v139.h, v138.l
	v_mov_b16_e64 v138.l, v128.l
	v_mov_b16_e64 v149.l, v128.l
	v_mov_b16_e64 v149.h, v134.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v43, v124, v43
	v_mul_f32_e32 v42, v124, v42
	v_mul_f32_e32 v33, v124, v33
	v_dual_mul_f32 v153, v124, v36 :: v_dual_mul_f32 v134, v34, v137
	v_dual_mul_f32 v46, v124, v46 :: v_dual_mul_f32 v135, v135, v136
	v_dual_mul_f32 v34, v154, v150 :: v_dual_mul_f32 v47, v124, v47
	v_mul_f32_e32 v136, v155, v151
	v_mul_f32_e32 v32, v124, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v128.h, v146.l
	v_mov_b16_e64 v146.l, v128.l
	v_mov_b16_e64 v143.h, v142.l
	v_mov_b16_e64 v142.l, v128.l
	v_mov_b16_e64 v142.h, v141.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v152.h, v131.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_dual_mul_f32 v156, v124, v39 :: v_dual_mul_f32 v131, v43, v144
	v_dual_mul_f32 v36, v42, v145 :: v_dual_mul_f32 v39, v32, v139
	v_dual_mul_f32 v32, v33, v138 :: v_dual_mul_f32 v45, v124, v45
	v_dual_mul_f32 v132, v47, v140 :: v_dual_mul_f32 v41, v124, v41
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v42, 8, v48
	v_lshrrev_b32_e32 v47, 24, v48
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v44
	v_mul_f32_e32 v38, v45, v142
	v_dual_mul_f32 v40, v124, v40 :: v_dual_mul_f32 v35, v41, v146
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.h, 0xff, v42.l
	v_and_b16 v42.l, 0xff, v48.h
	v_cmp_ne_u16_e64 s7, 0, v47.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v143.l, v128.l
	v_mov_b16_e64 v141.l, v128.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v44, v124, v44
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.l, 0xff, v48.l
	v_lshrrev_b32_e32 v45, 8, v50
	v_cmp_ne_u16_e64 s5, 0, v41.h
	v_cmp_ne_u16_e64 s6, 0, v42.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s12, vcc_lo, s7
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_lshrrev_b32_e32 v147, 8, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v133, v46, v141
	v_mul_f32_e32 v37, v44, v143
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.h, 0xff, v49.l
	v_and_b16 v44.l, 0xff, v50.l
	v_and_b16 v44.h, 0xff, v45.l
	v_cmp_ne_u16_e64 s3, 0, v41.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v41, 0, 1, s12
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v43.h, 0xff, v49.h
	v_lshrrev_b32_e32 v48, 24, v49
	v_lshrrev_b32_e32 v49, 24, v50
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s10, vcc_lo, s5
	s_and_b32 s11, vcc_lo, s6
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v43.l, 0xff, v147.l
	v_cmp_ne_u16_e64 s8, 0, v42.h
	v_cmp_ne_u16_e64 s17, 0, v44.l
	v_cmp_ne_u16_e64 s18, 0, v44.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v44, 0, 1, s10
	v_cndmask_b32_e64 v42, 0, 1, s11
	v_lshlrev_b16 v41.l, 8, v41.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v45.l, 0xff, v50.h
	v_cmp_ne_u16_e64 s20, 0, v49.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, vcc_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s14, 0, v43.l
	v_cmp_ne_u16_e64 s15, 0, v43.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v43, 0, 1, s9
	v_or_b16 v143.h, v42.l, v41.l
	v_mov_b16_e32 v41.l, v44.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v45.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s20, vcc_lo, s20
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_lshrrev_b32_e32 v148, 8, v51
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s16, 0, v48.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v48, 0, 1, s20
	v_lshlrev_b16 v41.l, 8, v41.l
	v_mov_b16_e32 v42.l, v43.l
	s_and_b32 s19, vcc_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v46.l, 0xff, v148.l
	v_and_b16 v46.h, 0xff, v51.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v47, 0, 1, s19
	v_or_b16 v143.l, v42.l, v41.l
	v_mov_b16_e32 v41.l, v48.l
	s_and_b32 s18, vcc_lo, s18
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v45.h, 0xff, v51.l
	v_cmp_ne_u16_e64 s22, 0, v46.l
	v_cmp_ne_u16_e64 s23, 0, v46.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v46, 0, 1, s18
	v_lshlrev_b16 v41.l, 8, v41.l
	v_mov_b16_e32 v42.l, v47.l
	s_and_b32 s17, vcc_lo, s17
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v45.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v45, 0, 1, s17
	s_and_b32 s16, vcc_lo, s16
	v_or_b16 v43.h, v42.l, v41.l
	v_mov_b16_e32 v41.l, v46.l
	v_cndmask_b32_e64 v138, 0, 1, s16
	v_mov_b16_e32 v42.l, v45.l
	s_and_b32 s15, vcc_lo, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v50, 24, v51
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v41.l, 8, v41.l
	v_cndmask_b32_e64 v51, 0, 1, s15
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s13, vcc_lo, s8
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v50.l
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v43.l, v42.l, v41.l
	v_mov_b16_e64 v41.l, v138.l
	v_cndmask_b32_e64 v50, 0, 1, s14
	v_mov_b16_e32 v42.l, v51.l
	v_cndmask_b32_e64 v49, 0, 1, s13
	s_and_b32 s24, vcc_lo, s24
	v_lshlrev_b16 v41.l, 8, v41.l
	v_cndmask_b32_e64 v142, 0, 1, s24
	s_and_b32 s23, vcc_lo, s23
	s_and_b32 s22, vcc_lo, s22
	v_cndmask_b32_e64 v141, 0, 1, s23
	v_or_b16 v44.h, v42.l, v41.l
	v_mov_b16_e32 v41.l, v50.l
	v_mov_b16_e32 v42.l, v49.l
	v_cndmask_b32_e64 v140, 0, 1, s22
	s_and_b32 s21, vcc_lo, s21
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v33, v153, v149
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v41.l, 8, v41.l
	v_cndmask_b32_e64 v139, 0, 1, s21
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s29, s29, s57
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v152.l, v128.l
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v129
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v44.l, v42.l, v41.l
	v_mov_b16_e64 v41.l, v142.l
	v_mov_b16_e64 v42.l, v141.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v41.l, 8, v41.l
	v_or_b16 v41.h, v42.l, v41.l
	v_mov_b16_e64 v41.l, v140.l
	v_mov_b16_e64 v42.l, v139.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v41.l, 8, v41.l
	v_or_b16 v41.l, v42.l, v41.l
	v_perm_b32 v42, v44, v143, v113
	v_perm_b32 v44, v44, v143, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v45, v41, v43, v113
	v_perm_b32 v41, v41, v43, v54
	ds_bpermute_b32 v42, v84, v42
	ds_bpermute_b32 v44, v87, v44
	ds_bpermute_b32 v43, v84, v45
	ds_bpermute_b32 v41, v87, v41
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v49, v44, v42, s4
	v_cndmask_b32_e64 v50, v42, v44, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v51, v41, v43, s4
	v_cndmask_b32_e64 v154, v43, v41, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v40, v128 :: v_dual_and_b32 v41, 1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v158, 0x1000000, v154
	v_cmp_eq_u32_e64 s27, 1, v41
	v_and_b32_e32 v41, 0x100, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v156, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v41
	v_and_b32_e32 v41, 1, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, v35, 0xff800000, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s25, 1, v41
	v_and_b32_e32 v41, 0x100, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v40, s27
	v_cndmask_b32_e64 v140, 0xff800000, v37, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s26, 0, v41
	v_and_b32_e32 v41, 1, v50
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v157, v138, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, v38, 0xff800000, s26
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s7, 1, v41
	v_and_b32_e32 v41, 0x100, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s8, 0, v41
	v_and_b32_e32 v41, 1, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, v32, 0xff800000, s8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 1, v41
	v_and_b32_e32 v41, 0x100, v154
	v_and_b32_e32 v154, 0x10000, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v39, s7
	v_cndmask_b32_e64 v35, v142, v145, s4
	v_cndmask_b32_e64 v143, 0xff800000, v33, s5
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 0, v41
	v_cmp_eq_u32_e64 s30, 0, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, v139, v138, s4
	v_cndmask_b32_e64 v33, v138, v139, s4
	v_cndmask_b32_e64 v37, v143, v140, s4
	v_cndmask_b32_e64 v38, v140, v143, s4
	v_cndmask_b32_e64 v144, v34, 0xff800000, s6
	ds_bpermute_b32 v32, v86, v32
	ds_bpermute_b32 v33, v92, v33
	ds_bpermute_b32 v37, v86, v37
	ds_bpermute_b32 v38, v92, v38
	v_cndmask_b32_e64 v136, v136, 0xff800000, s30
	v_cndmask_b32_e64 v39, v144, v141, s4
	v_cndmask_b32_e64 v40, v141, v144, s4
	v_cndmask_b32_e64 v34, v145, v142, s4
	ds_bpermute_b32 v35, v92, v35
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v154, v143, v144, v136
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v39, v86, v39
	ds_bpermute_b32 v40, v92, v40
	ds_bpermute_b32 v34, v86, v34
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v150, v33, v32, s0
	v_cndmask_b32_e64 v151, v32, v33, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v146, v38, v37, s0
	v_cndmask_b32_e64 v147, v37, v38, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, s29, v127, 1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v155, v32, v33
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v32, s29, v53, 1
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v148, v40, v39, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, v39, v40, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v152, v35, v34, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, v34, v35, s0
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[45:48], v37, s[44:47], 0 offen
	v_add_lshl_u32 v37, s29, v57, 1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v156, v147, v148, v149
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[41:44], v32, s[44:47], 0 offen
	v_add_lshl_u32 v32, s29, v123, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s29, 0, v158
	v_and_b32_e32 v158, 0x1000000, v50
	v_and_b32_e32 v50, 0x10000, v50
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, v137, 0xff800000, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v158
	v_cmp_eq_u32_e64 s33, 0, v50
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[37:40], v37, s[44:47], 0 offen
	buffer_load_b128 v[32:35], v32, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v135, 0xff800000, s31
	v_cndmask_b32_e64 v134, v134, 0xff800000, s33
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v145, v134, v135
	v_max3_f32 v50, v50, v154, v137
.Ltmp12:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v154, 0x1000000, v51
	v_and_b32_e32 v51, 0x10000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s34, 0, v154
	v_cmp_eq_u32_e64 s35, 0, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v132, 0xff800000, s34
	v_cndmask_b32_e64 v133, v133, 0xff800000, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v159, v137, v132, s4
	v_cndmask_b32_e64 v160, v132, v137, s4
	v_cndmask_b32_e64 v154, v136, v133, s4
	v_cndmask_b32_e64 v158, v133, v136, s4
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v133, v132, v139
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v159, v86, v159
	ds_bpermute_b32 v160, v92, v160
	ds_bpermute_b32 v154, v86, v154
	ds_bpermute_b32 v158, v92, v158
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v163, v160, v159, s0
	v_cndmask_b32_e64 v159, v159, v160, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v161, v158, v154, s0
	v_cndmask_b32_e64 v162, v154, v158, s0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v154, v154, v158, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v154, v156, v154, v159
.Ltmp16:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v156, 0x1000000, v49
	v_and_b32_e32 v49, 0x10000, v49
	v_cmp_eq_u32_e64 s3, 0, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s37, 0, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v131, 0xff800000, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v36, v36, 0xff800000, s37
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v131, v140, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, v134, v36, s4
	v_cndmask_b32_e64 v158, v135, v131, s4
	v_cndmask_b32_e64 v160, v131, v135, s4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v157, v36, v49
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, v36, v134, s4
	ds_bpermute_b32 v156, v86, v156
	ds_bpermute_b32 v158, v86, v158
	ds_bpermute_b32 v160, v92, v160
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v49, v51, v50
.Ltmp22:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v157, v92, v157
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v51, v82, v82
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v50, v49, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v50, v129, v49, v50
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v50
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v165, v158, v160, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v164, v157, v156, s0
	v_cndmask_b32_e64 v156, v156, v157, s0
	v_cndmask_b32_e64 v157, v160, v158, s0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v158, v158, v160, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v166, v153, v164, v156
	v_max3_f32 v155, v155, v152, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v154, v155, v158, v154
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v155, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v155, v155 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v155, v155, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v154, v154, v155
.Ltmp28:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v82, v51, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v146, v82
	v_sub_f32_e32 v147, v147, v82
	v_sub_f32_e32 v148, v148, v82
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v148, v148
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s17
	v_cndmask_b32_e64 v147, 0, v147, s18
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v51, v129, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s19
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v129, v150, v82
	v_sub_f32_e32 v150, v152, v82
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v146, v147
.Ltmp30:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v51, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v164, v82
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v150, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v152, v152
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v155, 0, v51, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v82
	v_sub_f32_e32 v159, v159, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v130
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v131, v131, v50 :: v_dual_mul_f32 v18, v18, v155
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v143, v143, v50 :: v_dual_mul_f32 v14, v14, v155
	v_dual_sub_f32 v144, v144, v50 :: v_dual_mul_f32 v29, v29, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v136, v136, v50 :: v_dual_mul_f32 v31, v31, v155
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v162, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v137, v137, v50 :: v_dual_mul_f32 v0, v0, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v147, v148, v149 :: v_dual_sub_f32 v160, v163, v82
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v163, v131, 0, s3
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v155
	v_mul_f32_e32 v30, v30, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v137, v137
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s11
	v_cndmask_b32_e64 v152, 0, v152, s13
	v_cndmask_b32_e64 v162, v36, 0, s37
	v_cndmask_b32_e64 v158, 0, v158, s22
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v141, v141, v50 :: v_dual_mul_f32 v20, v20, v155
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, v136, 0, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v132, v132, v50 :: v_dual_mul_f32 v25, v25, v155
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v160, v159
.Ltmp34:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v49, v130, v130
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v133, v133, v50 :: v_dual_mul_f32 v22, v22, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v49, v49, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v145, v145, v50 :: v_dual_mul_f32 v10, v10, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v139, v139, v50 :: v_dual_mul_f32 v8, v8, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v154, v130, v49
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v151, v82
	v_sub_f32_e32 v151, v153, v82
	v_sub_f32_e32 v153, v156, v82
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v132, v132, 0, s34
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v154, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v153, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v133, v133, 0, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v135, v135, v50 :: v_dual_mul_f32 v12, v12, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v134, v50 :: v_dual_mul_f32 v27, v27, v155
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v51, 0, v154, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v157, v82
	v_sub_f32_e32 v157, v161, v82
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v161, v130
	v_exp_f32_e32 v130, v143
	v_exp_f32_e32 v143, v144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v129, s9
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v157, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s12
	v_cndmask_b32_e64 v153, 0, v153, s14
	v_cndmask_b32_e64 v129, v137, 0, s29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v165, v82
.Ltmp35:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v136, v150, v151 :: v_dual_add_f32 v137, v152, v153
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s15
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v144, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, v135, 0, s31
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v131, v136
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v130, s5
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v148, v157, v158
.Ltmp42:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v155
	v_mul_f32_e32 v24, v24, v155
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s16
	v_cndmask_b32_e64 v134, v134, 0, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v144, v154, v156
	v_dual_add_f32 v136, v137, v144 :: v_dual_add_f32 v137, v146, v147
	v_add_f32_e32 v144, v148, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v142, v142, v50 :: v_dual_add_f32 v131, v131, v136
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v137, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v138, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v138.h, v128.l
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v131, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v136, v131
	v_mov_b32_dpp v136, v136 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp49:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v140, v140, v50 :: v_dual_add_f32 v131, v131, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v136, v142, 0, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v142.l, v137.h
	v_mov_b16_e64 v142.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v136.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v155 :: v_dual_and_b32 v142, 1, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v136, v136
	.loc	1 897 23                        ; attention.py:897:23
	v_dual_fmac_f32 v131, v91, v51 :: v_dual_and_b32 v138, 1, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v142, v137, v142, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v136, v138, 0x7fff
	v_mov_b16_e64 v138.l, v162.h
	v_mov_b32_e32 v91, v131
	v_mov_b16_e64 v142.l, v140.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v136.h, 0x7fff, v138.h, s3
	v_cmp_o_f32_e64 s3, v137, v137
	v_mov_b16_e64 v137.l, v163.h
	v_mov_b16_e64 v137.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.l, 0x7fff, v142.h, s3
	v_and_b32_e32 v137, 1, v137
	v_cmp_o_f32_e64 s3, v163, v163
	v_and_b32_e32 v138, 1, v138
	v_mov_b16_e64 v142.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v163, v137, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v138, v162, v138, 0x7fff
	v_and_b32_e32 v142, 1, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s3
	v_cmp_o_f32_e64 s3, v162, v162
	v_add3_u32 v142, v140, v142, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v137.l, 0x7fff, v138.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, v141, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v128.l
	v_mov_b16_e64 v141.l, v138.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v138, v138
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v141, v138, v141, 0x7fff
	v_mov_b16_e64 v141.l, v133.h
	v_cndmask_b16 v138.h, 0x7fff, v141.h, s3
	v_cmp_o_f32_e64 s3, v140, v140
	v_mov_b16_e64 v140.l, v132.h
	v_mov_b16_e64 v140.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.l, 0x7fff, v142.h, s3
	v_and_b32_e32 v140, 1, v140
	v_cmp_o_f32_e64 s3, v132, v132
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v140, v132, v140, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, v145, 0, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v133, v141, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v140.h, 0x7fff, v140.h, s3
	v_cmp_o_f32_e64 s3, v133, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v139, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v132.h
	v_mov_b16_e64 v139.h, v128.l
	v_cndmask_b16 v140.l, 0x7fff, v141.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v141.l, v133.h
	v_mov_b16_e64 v141.h, v128.l
	v_and_b32_e32 v139, 1, v139
	v_cmp_o_f32_e64 s3, v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v139, v132, v139, 0x7fff
	v_mov_b16_e64 v132.l, v135.h
	v_mov_b16_e64 v132.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v133, v141, 0x7fff
	v_cndmask_b16 v142.h, 0x7fff, v139.h, s3
	v_cmp_o_f32_e64 s3, v133, v133
	v_mov_b16_e64 v133.l, v134.h
	v_mov_b16_e64 v133.h, v128.l
	v_and_b32_e32 v132, 1, v132
	v_permlanex16_b32 v139, v140, s40, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v142.l, 0x7fff, v141.h, s3
	v_cmp_o_f32_e64 s3, v135, v135
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v132, v135, v132, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v141, v142, s40, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v133, v134, v133, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v144.h, 0x7fff, v132.h, s3
	v_cmp_o_f32_e64 s3, v134, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, v143, 0, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v130.h
	v_mov_b16_e64 v134.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v144.l, 0x7fff, v133.h, s3
	v_mov_b16_e64 v133.l, v132.h
	v_mov_b16_e64 v133.h, v128.l
	v_and_b32_e32 v134, 1, v134
	v_cmp_o_f32_e64 s3, v132, v132
	v_permlanex16_b32 v143, v144, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v134, v130, v134, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v133, v132, v133, 0x7fff
	v_mov_b16_e64 v132.l, v36.h
	v_mov_b16_e64 v132.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v145.h, 0x7fff, v133.h, s3
	v_cmp_o_f32_e64 s3, v130, v130
	v_mov_b16_e64 v130.l, v129.h
	v_mov_b16_e64 v130.h, v128.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v145.l, 0x7fff, v134.h, s3
	v_cmp_o_f32_e64 s3, v129, v129
	v_and_b32_e32 v128, 1, v130
	v_and_b32_e32 v130, 1, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v146, v145, s40, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v128, v129, v128, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v130, v36, v130, 0x7fff
	v_permlanex16_b32 v129, v137, s40, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v128.h, 0x7fff, v128.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_permlanex16_b32 v36, v136, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v134, v129, v137, v125
	v_perm_b32 v135, v129, v137, v126
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v129.l, v45.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v128.l, 0x7fff, v130.h, s3
	v_permlanex16_b32 v130, v138, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v132, v36, v136, v125
	v_perm_b32 v133, v36, v136, v126
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v129.h, v37.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v147, v128, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v136, v130, v138, v125
	v_perm_b32 v137, v130, v138, v126
	v_perm_b32 v138, v139, v140, v125
	v_perm_b32 v139, v139, v140, v126
	v_perm_b32 v140, v141, v142, v125
	v_perm_b32 v141, v141, v142, v126
	v_perm_b32 v142, v143, v144, v125
	v_perm_b32 v143, v143, v144, v126
	v_perm_b32 v144, v146, v145, v125
	v_perm_b32 v145, v146, v145, v126
	v_perm_b32 v146, v147, v128, v125
	v_perm_b32 v147, v147, v128, v126
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v128.h, v32.l
	v_mov_b16_e32 v32.l, v41.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v155
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v128.l, v41.l
	v_add_nc_u32_e32 v130, 0, v88
	v_mov_b16_e32 v37.l, v45.h
	v_mov_b32_e32 v36, v32
	v_mov_b16_e32 v32.h, v34.l
	v_mov_b16_e32 v34.l, v43.h
	v_mov_b16_e32 v32.l, v43.l
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s41, 32
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v130, v[128:129], v[36:37] offset1:8
	v_mov_b16_e64 v128.h, v33.l
	v_mov_b16_e32 v33.l, v42.h
	v_mov_b16_e64 v129.l, v46.l
	v_mov_b16_e64 v129.h, v38.l
	v_mov_b16_e64 v128.l, v42.l
	v_mov_b16_e32 v38.l, v46.h
	v_mov_b32_e32 v37, v33
	v_mov_b16_e32 v33.l, v47.l
	v_mov_b16_e32 v33.h, v39.l
	v_mov_b16_e32 v39.l, v47.h
	v_mov_b32_e32 v130, v49
	ds_store_2addr_b64 v114, v[128:129], v[37:38] offset1:8
	v_mov_b32_e32 v38, v34
	v_mov_b32_e32 v129, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s41, 0x7e0
	s_mov_b32 s41, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v115, v[32:33], v[38:39] offset1:8
	v_mov_b16_e32 v33.h, v40.l
	v_mov_b16_e32 v40.l, v48.h
	v_mov_b16_e32 v33.l, v48.l
	v_mov_b16_e32 v32.l, v44.l
	v_mov_b16_e32 v32.h, v35.l
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b32_e32 v36, v40
	v_add_nc_u32_e32 v48, 0, v89
	ds_store_2addr_b64 v116, v[32:33], v[35:36] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v48
	ds_load_b128 v[40:43], v48 offset:2048
	ds_load_b128 v[36:39], v117
	ds_load_b128 v[44:47], v117 offset:2048
	ds_load_b128 v[148:151], v118
	ds_load_b128 v[156:159], v118 offset:2048
	ds_load_b128 v[152:155], v119
	ds_load_b128 v[160:163], v119 offset:2048
	ds_load_b128 v[164:167], v120
	ds_load_b128 v[172:175], v120 offset:2048
	ds_load_b128 v[168:171], v121
	ds_load_b128 v[176:179], v121 offset:2048
	ds_load_b128 v[180:183], v48 offset:1024
	ds_load_b128 v[188:191], v48 offset:3072
	ds_load_b128 v[184:187], v122
	ds_load_b128 v[192:195], v122 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[132:139], v[24:31]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[40:47], v[132:139], v[8:15]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[148:155], v[140:147], v[24:31]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[156:163], v[140:147], v[8:15]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[164:171], v[132:139], v[16:23]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[172:179], v[132:139], v[0:7]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[180:187], v[140:147], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[188:195], v[140:147], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s29, s41, s58
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v36, 0, v83
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[32:33], null, s29, s56, v[52:53]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v37, s41, v96, 1
	v_add_lshl_u32 v38, s41, v97, 1
	v_add_lshl_u32 v39, s41, v98, 1
	v_add_lshl_u32 v40, s41, v99, 1
	v_add_lshl_u32 v41, s41, v100, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v154, s55 :: v_dual_mov_b32 v149, s50
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s36
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v42, s41, v101, 1
	v_add_lshl_u32 v43, s41, v102, 1
	v_add_lshl_u32 v44, s41, v103, 1
	v_add_lshl_u32 v45, s41, v104, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[32:35], v32, s[64:67], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v46, s41, v105, 1
	v_add_lshl_u32 v47, s41, v106, 1
	v_add_lshl_u32 v48, s41, v107, 1
	v_add_lshl_u32 v49, s41, v108, 1
	v_add_lshl_u32 v50, s41, v109, 1
	v_add_lshl_u32 v51, s41, v110, 1
	v_add_lshl_u32 v128, s41, v111, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v153, s54 :: v_dual_mov_b32 v152, s53
	v_dual_mov_b32 v147, s48 :: v_dual_mov_b32 v150, s51
	v_mov_b32_e32 v148, s49
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v90, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v146, v37, s[68:71], 0 offen
	buffer_load_u16 v145, v38, s[68:71], 0 offen
	buffer_load_u16 v144, v39, s[68:71], 0 offen
	buffer_load_u16 v143, v40, s[68:71], 0 offen
	buffer_load_u16 v142, v41, s[68:71], 0 offen
	buffer_load_u16 v141, v42, s[68:71], 0 offen
	buffer_load_u16 v140, v43, s[68:71], 0 offen
	buffer_load_u16 v139, v44, s[68:71], 0 offen
	buffer_load_u16 v138, v45, s[68:71], 0 offen
	buffer_load_u16 v137, v46, s[68:71], 0 offen
	buffer_load_u16 v136, v47, s[68:71], 0 offen
	buffer_load_u16 v135, v48, s[68:71], 0 offen
	buffer_load_u16 v134, v49, s[68:71], 0 offen
	buffer_load_u16 v133, v50, s[68:71], 0 offen
	buffer_load_u16 v132, v51, s[68:71], 0 offen
	buffer_load_u16 v131, v128, s[68:71], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v151, s52 :: v_dual_add_nc_u32 v32, 0, v85
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[48:51], v32 offset1:1
	ds_load_2addr_stride64_b64 v[155:158], v93 offset1:1
	ds_load_2addr_stride64_b64 v[159:162], v94 offset1:1
	ds_load_2addr_stride64_b64 v[163:166], v95 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[55:56], v[147:154] neg_lo:[1,1,0]
	v_mov_b32_e32 v49, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[55:56], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[155:156], v[60:61], v[40:47] neg_lo:[1,1,0]
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[157:158], v[60:61], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, 0
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[159:160], v[58:59], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[161:162], v[58:59], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[163:164], v[62:63], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[165:166], v[62:63], v[32:39] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v48, s41, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v49, 31, v48
	v_add_co_u32 v48, s3, s60, v48
	v_add_co_ci_u32_e64 v49, null, s61, v49, s3
	global_load_b128 v[48:51], v[48:49], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v32, v84, v131
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v32, v32, v24
	v_div_scale_f32 v35, null, v32, v32, v25
	v_div_scale_f32 v37, null, v32, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v32, v32, v27
	v_div_scale_f32 v41, null, v32, v32, v28
	v_div_scale_f32 v42, null, v32, v32, v29
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v54, -v35, v45, 1.0
	v_fma_f32 v55, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_fma_f32 v56, -v39, v47, 1.0
	v_fma_f32 v57, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fmac_f32_e32 v47, v56, v47
	v_dual_mul_f32 v55, v36, v45 :: v_dual_mul_f32 v56, v38, v46
	v_fmac_f32_e32 v51, v53, v51
	v_fmac_f32_e32 v48, v57, v48
	v_fma_f32 v57, -v33, v54, v34
	v_div_scale_f32 v40, s3, v27, v32, v27
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v57, v44
	v_mul_f32_e32 v58, v40, v47
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_scale_f32 v49, s4, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fmac_f32_e32 v55, v59, v45
	v_fma_f32 v61, -v39, v58, v40
	v_fmac_f32_e32 v56, v60, v46
	v_rcp_f32_e32 v52, v43
	v_div_fmas_f32 v33, v33, v44, v54
	v_fma_f32 v34, -v35, v55, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v56, v38
	v_mul_f32_e32 v37, v50, v51
	v_mul_f32_e32 v53, v49, v48
	v_fmac_f32_e32 v58, v61, v47
	v_div_fixup_f32 v24, v33, v32, v24
	v_div_scale_f32 v33, null, v32, v32, v31
	v_div_fmas_f32 v34, v34, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v58, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v32, v25
	v_div_fmas_f32 v34, v36, v47, v58
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v27, v34, v32, v27
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v53, v49
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v32, v32, v16
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v53, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v52
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v51, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v32, v32, v18
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v28, v40, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v37, v32, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v16, v32, v16
	v_div_fmas_f32 v34, v35, v52, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v32, v32, v19
	v_div_scale_f32 v40, s1, v17, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v30, v34, v32, v30
	v_div_fixup_f32 v31, v33, v32, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v18, v32, v18
	v_div_scale_f32 v46, null, v32, v32, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v32, v32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s4, v19, v32, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v33, v32, v16
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v20, v32, v20
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v33, v32, v17
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v32, v32, v22
	v_div_fixup_f32 v18, v33, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v21, v32, v21
	v_div_scale_f32 v46, null, v32, v32, v9
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v32, v32, v23
	v_div_fmas_f32 v34, v34, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v35, v44
	v_div_fmas_f32 v33, v33, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v19, v34, v32, v19
	v_div_scale_f32 v34, s3, v22, v32, v22
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v23, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v20, v33, v32, v20
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v36, v32, v21
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v32, v32, v11
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v8, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v9, v32, v9
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v23, v35, v32, v23
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v32, v10
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v32, v32, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v11, v32, v11
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v32, v32, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v33, v32, v8
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v9, v36, v32, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v32, v12
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v38, v32, v10
	v_div_scale_f32 v38, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v13, v32, v13
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v32, v32, v15
	v_div_fixup_f32 v11, v35, v32, v11
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v32, v32, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v32, v32, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v14, v32, v14
	v_div_fixup_f32 v12, v33, v32, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v15, v32, v15
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v32, v32, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v32, v0
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v32, v15
	v_div_fixup_f32 v0, v34, v32, v0
	v_div_scale_f32 v34, null, v32, v32, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v32, v32, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v32, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v32, v32, v5
	v_div_scale_f32 v37, null, v32, v32, v6
	v_div_scale_f32 v38, vcc_lo, v3, v32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v32, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v4, v32, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v32, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v32, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v7, v32, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v34, v32, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v32, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s57, v64
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s57, s39
	v_add_nc_u32_e32 v34, v32, v68
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s57, v68
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s63, 0xffff
	s_mov_b32 s4, s62
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v68, 2
	v_add_lshl_u32 v38, v32, v81, 2
	v_add_lshl_u32 v39, v32, v80, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s57, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[4:7], 0 offen
	buffer_store_b32 v25, v38, s[4:7], 0 offen
	buffer_store_b32 v26, v39, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v79, 2
	v_add_lshl_u32 v25, v32, v78, 2
	v_add_lshl_u32 v26, v32, v77, 2
	v_add_lshl_u32 v37, v32, v76, 2
	v_add_lshl_u32 v38, v32, v75, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v37, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v73, 2
	v_add_lshl_u32 v25, v32, v72, 2
	v_add_lshl_u32 v26, v32, v71, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v70, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v69, 2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v68
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v67, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s57, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_lshl_u32 v18, v32, v66, 2
	v_add_lshl_u32 v19, v32, v65, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v32, v33, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v68
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s57, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v35, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 62, v74
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v32, v36, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 196
		.amdhsa_next_free_sgpr 72
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 196
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 72
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10784
; TotalNumSgprs: 74
; NumVgprs: 196
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 74
; NumVGPRsForWavesPerEU: 196
; Occupancy: 7
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.quad	.Ltmp28-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     74
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     196
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
