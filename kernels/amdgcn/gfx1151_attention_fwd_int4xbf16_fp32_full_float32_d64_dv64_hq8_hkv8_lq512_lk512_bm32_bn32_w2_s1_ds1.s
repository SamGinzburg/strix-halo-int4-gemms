	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[52:55], s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v0
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_and_b32 v40, 15, v0
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v43, 0x7531 :: v_dual_lshlrev_b32 v38, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v70, v37, 16, v40
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s6, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s4, v37
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s72, s4, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v70
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v45, 0x7632 :: v_dual_and_b32 v36, 16, v38
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v39
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[56:59], s[0:1], 0x30
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s52, v37
	s_mul_i32 s2, s52, s72
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s31, s52, v36
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	v_dual_mov_b32 v44, 0x5410 :: v_dual_and_b32 v47, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v1, v36, s2
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s31
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v49, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_and_b32 v51, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s72, v70
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0x3ffffff8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v42, 0x6420 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v47
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v46, 56, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v52, 3, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v71, v0, 4, 1
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v48, 1, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v41, v1, s[60:63], 0 offen
	v_cndmask_b32_e64 v42, 0x7531, v42, s0
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v50, 7, v0
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v73, 6, v47
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v47, 48, v52
	v_mov_b32_e32 v19, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v46
	v_xor_b32_e32 v51, v38, v51
	v_and_b32_e32 v38, 48, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v55, v48, 30, v71
	v_cndmask_b32_e64 v43, 0x6420, v43, s0
	v_lshl_or_b32 v42, v42, 8, v42
	v_mov_b32_e32 v23, v24
	v_xor_b32_e32 v38, v38, v46
	v_lshl_or_b32 v46, v50, 6, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v47, s6, v54
	v_dual_mov_b32 v11, v24 :: v_dual_and_b32 v42, 0x750031, v42
	v_or_b32_e32 v37, s6, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v74, 2, v55
	v_lshl_or_b32 v43, v43, 8, v43
	v_bfe_i32 v53, v0, 3, 1
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v57, 24, v48
	v_lshl_or_b32 v81, v50, 9, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v38, 3, v47
	v_mov_b32_e32 v22, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v79, 4, v74
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[61:62], null, s52, v37, v[36:37]
	v_lshl_or_b32 v36, v42, 4, v42
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v37, 0x750031, v43
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v52, 0x210, v53
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v53, 1, v71
	v_lshl_or_b32 v40, v40, 5, v57
	v_mul_lo_u32 v39, s5, v39
	v_mul_lo_u32 v38, s53, v38
	s_mul_i32 s4, s4, s8
	v_dual_mov_b32 v1, v24 :: v_dual_and_b32 v88, 0x7050301, v36
	v_lshl_or_b32 v36, v37, 4, v37
	s_mul_i32 s7, s7, s55
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v78, 0, v51
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v84, 0, v40
	v_xor_b32_e32 v55, 8, v51
	v_and_or_b32 v76, v48, 60, v73
	v_lshl_or_b32 v77, s3, 10, v53
	v_xor_b32_e32 v48, 8, v40
	v_xor_b32_e32 v51, 16, v40
	v_xor_b32_e32 v53, 24, v40
	v_mul_lo_u32 v40, s53, v47
	s_lshl2_add_u32 s4, s7, s4
	v_dual_mov_b32 v6, v24 :: v_dual_lshlrev_b32 v101, 1, v38
	v_xor_b32_e32 v42, 0x90, v81
	v_xor_b32_e32 v43, 0x120, v81
	v_lshl_add_u32 v89, v39, 2, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v49
	v_dual_mov_b32 v12, v24 :: v_dual_lshlrev_b32 v91, 1, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v93, 0, v43
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v92, 0, v42
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v90, v40, s53, 1
	v_cndmask_b32_e64 v42, 0x1054, v44, s4
	v_cndmask_b32_e64 v43, 0x3276, v45, s4
	v_dual_mov_b32 v110, v24 :: v_dual_and_b32 v103, 0x7050301, v36
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s54, 0x3fb8aa3b
	v_xor_b32_e32 v82, v46, v52
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v46, 2, v47
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v56, 3, v50
	v_dual_mov_b32 v18, v24 :: v_dual_lshlrev_b32 v75, 4, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v46, s53, v46
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v83, 0, v55
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s53, v56
	v_xor_b32_e32 v47, 0x1b0, v81
	v_xor_b32_e32 v50, 16, v82
	v_xor_b32_e32 v52, 32, v82
	v_xor_b32_e32 v54, 48, v82
	v_xor_b32_e32 v55, 0x420, v82
	v_xor_b32_e32 v56, 0x430, v82
	v_xor_b32_e32 v57, 0x410, v82
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v72, 4, v0
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v85, 0, v48
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v87, 0, v53
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v86, 0, v51
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v95, 0, v50
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v97, 0, v54
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v99, 0, v56
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v94, 0, v47
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v96, 0, v52
	v_xor_b32_e32 v80, 64, v76
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_add_nc_u32 v98, 0, v55
	v_add_nc_u32_e32 v100, 0, v57
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v102, 1, v46
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_movk_i32 s73, 0xffe0
	s_mov_b32 s74, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_lshl_b32 s54, s53, 6
	s_lshl_b32 s52, s52, 5
	s_mov_b32 s68, s56
	s_mov_b32 s69, s57
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	s_mov_b32 s71, s63
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v74, v32
	ds_bpermute_b32 v32, v79, v32
	ds_bpermute_b32 v38, v74, v33
	ds_bpermute_b32 v33, v79, v33
	ds_bpermute_b32 v39, v74, v34
	ds_bpermute_b32 v34, v79, v34
	ds_bpermute_b32 v40, v74, v35
	ds_bpermute_b32 v35, v79, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v41
	v_lshl_or_b32 v41, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v62, v32, v37, s4
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v104, s3, v36
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v64, v37, v32, s4
	v_and_b32_e32 v32, 0x540054, v41
	v_and_b32_e32 v36, 0x760076, v42
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v63, v33, v38, s4
	v_cndmask_b32_e64 v65, v38, v33, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v66, v34, v39, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_cndmask_b32_e64 v68, v39, v34, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v67, v35, v40, s4
	v_cndmask_b32_e64 v69, v40, v35, s4
	v_and_b32_e32 v105, 0x5040504, v32
	v_and_b32_e32 v106, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v40, 0x80000000, v61, s31
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v44, v73, v89
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_mov_b32 v33, s45
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[40:43], v40, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v130, 0x80000000, v44 :: v_dual_add_nc_u32 v45, v91, v75
	v_add_nc_u32_e32 v49, 16, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v46, v90, v75
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v50, 32, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v47, v102, v75
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v44, 48, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v48, v101, v75
	v_cndmask_b32_e64 v146, 0x80000000, v45, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v131, 0x80000000, v49, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v147, 0x80000000, v46, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v150, 0x80000000, v50, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v148, 0x80000000, v47, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v151, 0x80000000, v44, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v149, 0x80000000, v48, s1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s73, s73, 32
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v78, v[40:41]
	ds_store_b64 v83, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[40:43], v84 offset1:1
	ds_load_2addr_stride64_b64 v[122:125], v85 offset1:1
	ds_load_2addr_stride64_b64 v[126:129], v86 offset1:1
	ds_load_2addr_stride64_b64 v[142:145], v87 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v141, v77, s[64:67], 0 offen
	buffer_load_u16 v139, v77, s[64:67], 0 offen offset:4
	buffer_load_u16 v137, v77, s[64:67], 0 offen offset:8
	buffer_load_u16 v135, v77, s[64:67], 0 offen offset:12
	buffer_load_u16 v133, v77, s[64:67], 0 offen offset:16
	buffer_load_u16 v111, v77, s[64:67], 0 offen offset:20
	buffer_load_u16 v112, v77, s[64:67], 0 offen offset:24
	buffer_load_u16 v113, v77, s[64:67], 0 offen offset:28
	buffer_load_u16 v114, v77, s[64:67], 0 offen offset:32
	buffer_load_u16 v115, v77, s[64:67], 0 offen offset:36
	buffer_load_u16 v116, v77, s[64:67], 0 offen offset:40
	buffer_load_u16 v117, v77, s[64:67], 0 offen offset:44
	buffer_load_u16 v118, v77, s[64:67], 0 offen offset:48
	buffer_load_u16 v119, v77, s[64:67], 0 offen offset:52
	buffer_load_u16 v120, v77, s[64:67], 0 offen offset:56
	buffer_load_u16 v121, v77, s[64:67], 0 offen offset:60
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v89, 0x80, v89
	v_add_nc_u32_e32 v77, 64, v77
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[40:41], v[62:63], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[42:43], v[62:63], v[32:39] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[41:44], v130, s[68:71], 0 offen
	buffer_load_b128 v[37:40], v131, s[68:71], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[122:123], v[66:67], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[124:125], v[66:67], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[126:127], v[64:65], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[128:129], v[64:65], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[142:143], v[68:69], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[144:145], v[68:69], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v142, v45
	v_cvt_f32_i32_e32 v140, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v138, v47
	v_cvt_f32_i32_e32 v136, v48
	v_cvt_f32_i32_e32 v134, v49
	v_cvt_f32_i32_e32 v122, v50
	v_cvt_f32_i32_e32 v123, v51
	v_cvt_f32_i32_e32 v124, v52
	v_cvt_f32_i32_e32 v125, v53
	v_cvt_f32_i32_e32 v126, v54
	v_cvt_f32_i32_e32 v127, v55
	v_cvt_f32_i32_e32 v128, v56
	v_cvt_f32_i32_e32 v129, v57
	v_cvt_f32_i32_e32 v130, v58
	v_cvt_f32_i32_e32 v131, v59
	v_cvt_f32_i32_e32 v132, v60
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[49:52], v150, s[68:71], 0 offen
	buffer_load_b128 v[45:48], v151, s[68:71], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[57:60], v148, s[40:43], 0 offen
	buffer_load_b128 v[53:56], v146, s[40:43], 0 offen
	buffer_load_b128 v[32:35], v147, s[40:43], 0 offen
	buffer_load_b128 v[144:147], v149, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v75, s54, v75
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v113, 16, v113
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v119, 16, v119
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e32 v38, 0xff800000, v38, vcc_lo
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e32 v50, 0xff800000, v50, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v149.l, v57.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v148.l, v53.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v148.h, v32.l
	v_mov_b16_e32 v32.l, v53.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v149.h, v144.l
	v_mov_b16_e64 v144.l, v57.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v57, 0xff800000, v44, vcc_lo
	v_cndmask_b32_e32 v53, 0xff800000, v39, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v143, v32 :: v_dual_add_nc_u32 v32, 0, v81
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v39, 0xff800000, v48, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v57
	v_cmp_neq_f32_e64 s13, 0xff800000, v50
	v_cmp_neq_f32_e64 s14, 0xff800000, v53
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v32, v[148:149], v[143:144] offset1:8
	v_mov_b16_e64 v148.h, v33.l
	v_mov_b16_e32 v33.l, v54.h
	v_mov_b16_e64 v149.l, v58.l
	v_mov_b16_e64 v149.h, v145.l
	v_mov_b16_e64 v148.l, v54.l
	v_mov_b16_e64 v145.l, v58.h
	v_mov_b32_e32 v144, v33
	v_mov_b16_e32 v32.h, v34.l
	v_mov_b16_e32 v34.l, v55.h
	v_mov_b16_e32 v33.l, v59.l
	v_mov_b16_e64 v33.h, v146.l
	ds_store_2addr_b64 v92, v[148:149], v[144:145] offset1:8
	v_mov_b16_e32 v32.l, v55.l
	v_mov_b16_e64 v146.l, v59.h
	v_mov_b32_e32 v145, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v59, 0xff800000, v42 :: v_dual_cndmask_b32 v58, 0xff800000, v41
	v_cndmask_b32_e32 v55, 0xff800000, v37, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, vcc_lo, s5
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v93, v[32:33], v[145:146] offset1:8
	v_mov_b16_e64 v33.h, v147.l
	v_mov_b16_e64 v147.l, v60.h
	v_mov_b16_e32 v32.l, v56.l
	v_mov_b16_e32 v32.h, v35.l
	v_mov_b16_e32 v35.l, v56.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v56, 0xff800000, v43, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v36, v147
	v_mov_b16_e32 v33.l, v60.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v59
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v54, 0xff800000, v40 :: v_dual_cndmask_b32 v43, 0xff800000, v49
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v56
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v94, v[32:33], v[35:36] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v32, 0, 1, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v33, 0xff800000, v51, vcc_lo
	v_cndmask_b32_e32 v35, 0xff800000, v52, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v58
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s20, vcc_lo, s9
	v_cndmask_b32_e64 v36, 0, 1, s7
	v_cndmask_b32_e64 v37, 0, 1, s20
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s6
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v44, 0, 1, s19
	v_or_b16 v42.h, v36.l, v32.l
	v_mov_b16_e32 v32.l, v37.l
	s_and_b32 s6, vcc_lo, s11
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e32 v40, 0xff800000, v45, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v45, 0, 1, s6
	v_mov_b16_e32 v36.l, v44.l
	v_lshlrev_b16 v32.l, 8, v32.l
	s_and_b32 s5, vcc_lo, s10
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v34, 0xff800000, v47 :: v_dual_cndmask_b32 v41, 0xff800000, v46
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v46, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v42.l, v36.l, v32.l
	v_mov_b16_e32 v32.l, v45.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v43
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, vcc_lo, s13
	v_mov_b16_e32 v36.l, v46.l
	v_cndmask_b32_e64 v37, 0, 1, s10
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v54
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s12
	s_and_b32 s13, vcc_lo, s14
	v_cndmask_b32_e64 v47, 0, 1, s9
	v_or_b16 v44.h, v36.l, v32.l
	v_mov_b16_e32 v32.l, v37.l
	s_and_b32 s14, vcc_lo, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v45, 0, 1, s14
	v_mov_b16_e32 v36.l, v47.l
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v55
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, vcc_lo, s18
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v39
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s18
	v_or_b16 v44.l, v36.l, v32.l
	v_mov_b16_e32 v32.l, v45.l
	v_cndmask_b32_e64 v36, 0, 1, s13
	s_and_b32 s17, vcc_lo, s16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v34
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, vcc_lo, s22
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v41
	v_cmp_neq_f32_e64 s23, 0xff800000, v40
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, vcc_lo, s21
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_cndmask_b32_e64 v48, v58, v59, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v45.h, v36.l, v32.l
	v_mov_b16_e32 v32.l, v37.l
	v_cndmask_b32_e64 v36, 0, 1, s17
	s_and_b32 s16, vcc_lo, s24
	s_and_b32 s15, vcc_lo, s23
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v51, v79, v48
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v49, v57, v56, s0
	v_cndmask_b32_e64 v52, v56, v57, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v141
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v48.h, 0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v45.l, v36.l, v32.l
	v_cndmask_b32_e64 v32, 0, 1, s12
	v_cndmask_b32_e64 v36, 0, 1, s11
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v56, v74, v49
	ds_bpermute_b32 v57, v79, v52
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v108
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v107
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s73, 0x1e0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v46.h, v36.l, v32.l
	v_cndmask_b32_e64 v32, 0, 1, s16
	v_cndmask_b32_e64 v36, 0, 1, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v32.l, 8, v32.l
	v_or_b16 v46.l, v36.l, v32.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v32, v59, v58, s0
	v_cndmask_b32_e64 v59, v38, v55, s0
	v_cndmask_b32_e64 v38, v55, v38, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v104, v142
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v49, v57, v56, s4
	ds_bpermute_b32 v47, v74, v32
	ds_bpermute_b32 v59, v74, v59
	ds_bpermute_b32 v60, v79, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v137
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v52, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v49, v104, v138
	v_cndmask_b32_e64 v56, v56, v57, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v48.h
	v_mov_b16_e64 v138.h, v48.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v32, v51, v47, s4
	v_cndmask_b32_e64 v51, v47, v51, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v38, v60, v59, s4
	v_cndmask_b32_e64 v57, v59, v60, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v104, v122
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v122, v104, v125 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v38
	v_mul_f32_e32 v125, v104, v128
	v_mul_f32_e32 v128, v104, v131
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v32, v36, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v36, v104, v140 :: v_dual_fmac_f32 v55, v49, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v139
	v_mov_b32_e32 v49, v110
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v110, v54, v53, s0
	v_cndmask_b32_e64 v53, v53, v54, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v58, v104, v136
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v36, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v109, v109
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v54, v74, v110
	ds_bpermute_b32 v53, v79, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v109, 16, v135
	v_lshlrev_b32_e32 v131, 16, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.h, v48.h
	v_mov_b16_e32 v47.h, v48.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v107, v107
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v110, v53, v54, s4
	v_cndmask_b32_e64 v53, v54, v53, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v135, 0x3fb8aa3b, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v36, 0, v82
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v110, 16, v133
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v133, v50, v43, s0
	v_cndmask_b32_e64 v43, v43, v50, s0
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v135, v58, v109
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v109, v104, v134
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v53, 0x3fb8aa3b, v53
	ds_bpermute_b32 v133, v74, v133
	ds_bpermute_b32 v43, v79, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.h, v48.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v50, v43, v133, s4
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v61, s52, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v43, v133, v43, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v134, 0x3fb8aa3b, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v50.h, v48.h
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v43, 0x3fb8aa3b, v43 :: v_dual_fmac_f32 v134, v109, v110
	v_cndmask_b32_e64 v109, v35, v33, s0
	v_cndmask_b32_e64 v33, v33, v35, s0
	v_cndmask_b32_e64 v35, v41, v40, s0
	v_cndmask_b32_e64 v40, v40, v41, s0
	v_cndmask_b32_e64 v41, v39, v34, s0
	v_cndmask_b32_e64 v34, v34, v39, s0
	ds_bpermute_b32 v54, v74, v109
	ds_bpermute_b32 v33, v79, v33
	ds_bpermute_b32 v35, v74, v35
	ds_bpermute_b32 v40, v79, v40
	ds_bpermute_b32 v41, v74, v41
	ds_bpermute_b32 v34, v79, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v109, v104, v123
	v_mul_f32_e32 v110, v104, v124
	v_mul_f32_e32 v123, v104, v126
	v_mul_f32_e32 v124, v104, v127
	v_mul_f32_e32 v126, v104, v129
	v_dual_mul_f32 v129, v104, v132 :: v_dual_mul_f32 v132, 0x3fb8aa3b, v51
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v127, v104, v130 :: v_dual_lshlrev_b32 v130, 16, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v48.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v132, v122, v114
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v59, v33, v54, s4
	v_cndmask_b32_e64 v33, v54, v33, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v54, v40, v35, s4
	v_cndmask_b32_e64 v35, v35, v40, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v40, v34, v41, s4
	v_cndmask_b32_e64 v34, v41, v34, s4
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v41, v45, v42, v88
	v_perm_b32 v42, v45, v42, v103
	v_perm_b32 v45, v46, v44, v88
	v_perm_b32 v46, v46, v44, v103
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v59, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v40
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v41, v74, v41
	ds_bpermute_b32 v42, v79, v42
	ds_bpermute_b32 v45, v74, v45
	ds_bpermute_b32 v46, v79, v46
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v121, 16, v121
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v59, v60, v111 :: v_dual_fmac_f32 v40, v110, v113
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v35
	v_dual_mul_f32 v33, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v43, v126, v118 :: v_dual_fmac_f32 v54, v109, v112
	v_dual_fmac_f32 v51, v123, v130 :: v_dual_fmac_f32 v56, v124, v131
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v34, v129, v121
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[109:112], v36
	ds_load_b128 v[113:116], v95
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.h, v48.h
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v57, v42, v41, s4
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v127, v119
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v60, v46, v45, s4
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v53, v125, v117
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, v41, v42, s4
	v_cndmask_b32_e64 v42, v45, v46, s4
	v_and_b32_e32 v46, 0x100, v57
	v_and_b32_e32 v117, 1, v60
	v_and_b32_e32 v118, 0x100, v60
	v_and_b32_e32 v125, 0x1000000, v60
	v_and_b32_e32 v60, 0x10000, v60
	v_cmp_eq_u32_e64 s33, 0, v46
	v_cmp_eq_u32_e64 s34, 1, v117
	v_cmp_eq_u32_e64 s35, 0, v118
	v_cmp_eq_u32_e64 s36, 0, v125
	v_cmp_eq_u32_e64 s37, 0, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, v52, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 1, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v59, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v124, 0x10000, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, v54, 0xff800000, s37
	v_cndmask_b32_e64 v140, v40, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v126, 0x1000000, v57
	v_and_b32_e32 v57, 0x10000, v57
	v_cmp_eq_u32_e64 s3, 1, v45
	v_cmp_eq_u32_e64 s29, 0, v124
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v35, v128, v120 :: v_dual_and_b32 v120, 1, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s38, 0, v126
	v_cmp_eq_u32_e64 s39, 0, v57
	v_and_b32_e32 v119, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, v56, 0xff800000, s29
	v_cndmask_b32_e64 v129, 0xff800000, v32, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v122, 0x1000000, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v134, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v123, 0x1000000, v41
	v_and_b32_e32 v41, 0x100, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v135, 0xff800000, s38
	v_cndmask_b32_e64 v135, v55, 0xff800000, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v121, 0x100, v42
	v_and_b32_e32 v42, 0x10000, v42
	v_cmp_eq_u32_e64 s24, 1, v120
	v_cmp_eq_u32_e64 s28, 0, v123
	v_cmp_eq_u32_e64 s30, 0, v41
	v_cmp_eq_u32_e64 s25, 0, v121
	v_cmp_eq_u32_e64 s26, 0, v42
	v_cmp_eq_u32_e64 s27, 1, v119
	v_cmp_eq_u32_e64 s23, 0, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, v51, 0xff800000, s30
	v_cndmask_b32_e64 v46, 0xff800000, v43, s24
	v_cndmask_b32_e64 v125, v33, 0xff800000, s25
	v_cndmask_b32_e64 v126, v35, 0xff800000, s26
	v_cndmask_b32_e64 v128, v53, 0xff800000, s28
	v_cndmask_b32_e64 v51, v34, 0xff800000, s23
	v_cndmask_b32_e64 v132, 0xff800000, v132, s27
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v129, v130
	v_max3_f32 v32, v46, v125, v126
	v_max3_f32 v33, v45, v127, v128
	v_max3_f32 v35, v134, v131, v133
	v_max3_f32 v40, v139, v140, v132
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[121:124], v99
	ds_load_b128 v[117:120], v98
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v32, v33, v32, v51
	v_max3_f32 v33, v34, v135, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v32, v33, v40, v32
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v32, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v52, v108, v32, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v130, v52
	v_sub_f32_e32 v34, v135, v52
	v_sub_f32_e32 v35, v134, v52
	v_sub_f32_e32 v33, v129, v52
	v_sub_f32_e32 v40, v131, v52
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v133, v52
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v40, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v139, v52
	v_sub_f32_e32 v43, v140, v52
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, v32, 0, s33
	v_cndmask_b32_e64 v34, v34, 0, s39
	v_cndmask_b32_e64 v35, v35, 0, s38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.l, v32.h
	v_mov_b16_e64 v136.l, v34.h
	v_cmp_o_f32_e64 s3, v32, v32
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v53, 1, v48
	v_mov_b16_e32 v48.l, v35.h
	v_and_b32_e32 v55, 1, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, v41, 0, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.l, v33.h
	v_add3_u32 v32, v32, v53, 0x7fff
	v_and_b32_e32 v53, 1, v48
	v_cmp_o_f32_e64 s34, v34, v34
	v_cmp_o_f32_e64 s35, v35, v35
	v_add3_u32 v34, v34, v55, 0x7fff
	v_and_b32_e32 v54, 1, v58
	v_add3_u32 v35, v35, v53, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, v42, 0, s37
	v_cndmask_b32_e64 v43, v43, 0, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s34
	v_cmp_o_f32_e64 s33, v33, v33
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s35
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v108, v52
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v54, 0x7fff
	v_mov_b16_e32 v48.l, v41.h
	v_mov_b16_e64 v137.l, v40.h
	v_mov_b16_e64 v138.l, v42.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s3
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s33
	v_and_b32_e32 v33, 1, v48
	v_mov_b16_e32 v48.l, v43.h
	v_cmp_o_f32_e64 s37, v41, v41
	v_and_b32_e32 v56, 1, v137
	v_permlanex16_b32 v54, v32, s74, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v33, v41, v33, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v35, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v57, 1, v138
	v_and_b32_e32 v55, 1, v48
	v_cmp_o_f32_e64 s38, v42, v42
	v_cmp_o_f32_e64 s39, v43, v43
	v_add3_u32 v40, v40, v56, 0x7fff
	v_perm_b32 v53, v54, v32, v105
	v_perm_b32 v54, v54, v32, v106
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v57, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v32, v43, v55, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v40.h, s36
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s37
	v_cndmask_b16 v32.l, 0x7fff, v42.h, s38
	v_permlanex16_b32 v35, v34, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s39
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v33, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v55, v35, v34, v105
	v_perm_b32 v56, v35, v34, v106
	v_permlanex16_b32 v34, v32, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v41
	v_mul_f32_e32 v27, v27, v41
	v_mul_f32_e32 v28, v28, v41
	v_mul_f32_e32 v29, v29, v41
	v_mul_f32_e32 v30, v30, v41
	v_mul_f32_e32 v31, v31, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v40, v33, v105
	v_perm_b32 v58, v40, v33, v106
	v_perm_b32 v59, v34, v32, v105
	v_perm_b32 v60, v34, v32, v106
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v41
	v_mul_f32_e32 v18, v18, v41
	v_mul_f32_e32 v19, v19, v41
	v_mul_f32_e32 v20, v20, v41
	v_mul_f32_e32 v21, v21, v41
	v_mul_f32_e32 v23, v23, v41
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[109:116], v[53:60], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[112:115], v95 offset:2048
	ds_load_b128 v[108:111], v36 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v41
	v_mul_f32_e32 v9, v9, v41
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[117:124], v[53:60], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[116:119], v98 offset:2048
	ds_load_b128 v[120:123], v99 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v41
	v_mul_f32_e32 v11, v11, v41
	v_mul_f32_e32 v12, v12, v41
	v_mul_f32_e32 v13, v13, v41
	v_mul_f32_e32 v14, v14, v41
	v_mul_f32_e32 v15, v15, v41
	v_mul_f32_e32 v0, v0, v41
	v_mul_f32_e32 v1, v1, v41
	v_mul_f32_e32 v2, v2, v41
	v_mul_f32_e32 v3, v3, v41
	v_mul_f32_e32 v4, v4, v41
	v_mul_f32_e32 v5, v5, v41
	v_mul_f32_e32 v6, v6, v41
	v_mul_f32_e32 v7, v7, v41
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v36 offset:1024
	ds_load_b128 v[40:43], v36 offset:3072
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v132, v129, s4
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[116:123], v[53:60], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v128, v52
	v_sub_f32_e32 v119, v126, v52
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[108:115], v[53:60], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, v129, v132, s4
	v_cndmask_b32_e64 v54, v45, v130, s4
	v_cndmask_b32_e64 v55, v130, v45, s4
	v_cndmask_b32_e64 v56, v46, v131, s4
	v_cndmask_b32_e64 v57, v131, v46, s4
	v_cndmask_b32_e64 v58, v125, v133, s4
	v_cndmask_b32_e64 v59, v133, v125, s4
	v_cndmask_b32_e64 v109, v51, v140, s4
	v_cndmask_b32_e64 v110, v140, v51, s4
	v_cndmask_b32_e64 v111, v127, v135, s4
	v_cndmask_b32_e64 v112, v135, v127, s4
	v_cndmask_b32_e64 v60, v126, v139, s4
	v_cndmask_b32_e64 v108, v139, v126, s4
	ds_bpermute_b32 v54, v76, v54
	ds_bpermute_b32 v55, v80, v55
	ds_bpermute_b32 v56, v76, v56
	ds_bpermute_b32 v57, v80, v57
	ds_bpermute_b32 v58, v76, v58
	ds_bpermute_b32 v59, v80, v59
	ds_bpermute_b32 v109, v76, v109
	ds_bpermute_b32 v110, v80, v110
	ds_bpermute_b32 v111, v76, v111
	ds_bpermute_b32 v112, v80, v112
	ds_bpermute_b32 v53, v80, v53
	ds_bpermute_b32 v36, v76, v36
	v_cndmask_b32_e64 v113, v128, v134, s4
	v_cndmask_b32_e64 v114, v134, v128, s4
	ds_bpermute_b32 v60, v76, v60
	ds_bpermute_b32 v108, v80, v108
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v132, v52
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v113, v76, v113
	ds_bpermute_b32 v114, v80, v114
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v52
	v_sub_f32_e32 v118, v125, v52
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(14)
	v_cndmask_b32_e64 v120, v55, v54, s0
	v_cndmask_b32_e64 v55, v54, v55, s0
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v121, v57, v56, s0
	v_cndmask_b32_e64 v56, v56, v57, s0
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v57, v59, v58, s0
	v_cndmask_b32_e64 v58, v58, v59, s0
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v59, v110, v109, s0
	v_cndmask_b32_e64 v110, v109, v110, s0
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v122, v112, v111, s0
	v_cndmask_b32_e64 v123, v111, v112, s0
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(4)
	v_dual_max_f32 v54, v53, v53 :: v_dual_max_f32 v109, v36, v36
.Ltmp7:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, v53, v36, s0
	v_cndmask_b32_e64 v36, v36, v53, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v124, v108, v60, s0
	v_cndmask_b32_e64 v125, v60, v108, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v115
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v54, v109, v54
	v_max3_f32 v109, v56, v57, v58
	v_max3_f32 v60, v60, v108, v59
	v_max3_f32 v108, v55, v122, v123
.Ltmp9:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v127, v52
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v126, v114, v113, s0
	v_cndmask_b32_e64 v127, v113, v114, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v117
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v117, v119
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v113, v114, v121
	v_max3_f32 v60, v109, v60, v110
	v_max3_f32 v54, v54, v120, v108
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v116
	v_exp_f32_e32 v116, v118
.Ltmp12:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v54, v54, v113, v60
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s24
	v_cndmask_b32_e64 v109, v117, 0, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v53.h
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v60, v54
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v53, v53
	v_mov_b16_e32 v50.l, v46.h
	v_mov_b16_e32 v44.l, v109.h
	v_and_b32_e32 v39, 1, v39
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, v45, 0, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v50, 1, v50
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v39, v53, v39, 0x7fff
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v60, v60
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, v112, 0, s29
	v_cndmask_b32_e64 v112, v115, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v46, v46
	v_add3_u32 v46, v46, v50, 0x7fff
	v_add3_u32 v50, v109, v44, 0x7fff
	v_mov_b16_e32 v48.l, v45.h
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v54, v53
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, v116, 0, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v109, v109
	v_cmp_o_f32_e64 s24, v45, v45
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s22
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v109, v37, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v48
	v_mov_b16_e32 v48.l, v112.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v129, v38, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v114, v114
	v_mov_b16_e32 v47.l, v108.h
	v_add3_u32 v37, v45, v37, 0x7fff
	v_and_b32_e32 v44, 1, v48
	v_mov_b16_e32 v48.l, v114.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v38, v111, v109 :: v_dual_and_b32 v47, 1, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v37.h, s24
	v_cmp_o_f32_e64 s25, v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v37, 1, v48
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v108, v47, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v108, v125, v109 :: v_dual_sub_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v114, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v59, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.l, 0x7fff, v47.h, s25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v47, v121, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v128.h, 0x7fff, v37.h, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v120, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s19
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v47, v47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v112, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v112, v44, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v45, v39, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v128.l, 0x7fff, v46.h, s27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v127, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.h, 0x7fff, v44.h, s26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s11
	v_cndmask_b32_e64 v47, 0, v47, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v53, v45, v39, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s7
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v54, v45, v39, v106
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v123, v109
	v_sub_f32_e32 v45, v126, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v51, v51
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[115:118], v97
	ds_load_b128 v[111:114], v96
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s14
	v_cndmask_b32_e64 v36, 0, v36, s20
	v_cndmask_b32_e64 v51, v51, 0, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v45, 0, v45, s13
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v38, v36
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v55, v109
	v_sub_f32_e32 v55, v56, v109
	v_sub_f32_e32 v56, v57, v109
	v_dual_sub_f32 v57, v58, v109 :: v_dual_add_f32 v130, v45, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v48.l, v51.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v57, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_add3_u32 v48, v51, v48, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v56, 0, v56, s5
	v_cndmask_b32_e64 v57, 0, v57, s6
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v58, v124, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v55, v47, v55 :: v_dual_add_f32 v56, v56, v57
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v48.h, s5
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v58, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v110, 0, v110, s12
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v57, v58, v108
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_mov_b32_e32 v108, v52
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v107, v129
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v58, v59, v110 :: v_dual_mov_b32 v107, v129
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v52, v52
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v57, v58
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v56, v55, v56 :: v_dual_sub_f32 v39, v122, v109
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s18
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v52, 0, v52, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v59, v36, v37
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s17
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v39, v44
.Ltmp41:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[119:122], v96 offset:2048
	ds_load_b128 v[123:126], v97 offset:2048
	ds_load_b128 v[36:39], v100
	ds_load_b128 v[44:47], v100 offset:2048
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v127, v130
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v127, v60, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v59, v110
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v55, v127, v60, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v51, v56
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v56, v127, v60, v106
	v_permlanex16_b32 v51, v128, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v60, v50, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v110, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v51, v128, v105
	v_perm_b32 v58, v51, v128, v106
	v_perm_b32 v59, v60, v50, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v110, v110 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v60, v60, v50, v106
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v48, v110
.Ltmp53:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[111:118], v[53:60], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[53:60], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[119:126], v[53:60], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[53:60], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v110, v49, v52
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v33, v74, v110
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 16, v71
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v33, v33, v24
	v_div_scale_f32 v36, null, v33, v33, v25
	v_div_scale_f32 v38, null, v33, v33, v26
	v_div_scale_f32 v40, null, v33, v33, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v34
	v_rcp_f32_e32 v45, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v42, null, v33, v33, v28
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v43, null, v33, v33, v29
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v35, vcc_lo, v24, v33, v24
	v_fma_f32 v52, -v34, v44, 1.0
	v_fma_f32 v53, -v36, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v54, -v38, v46, 1.0
	v_div_scale_f32 v37, s0, v25, v33, v25
	v_div_scale_f32 v39, s1, v26, v33, v26
	v_rcp_f32_e32 v51, v43
	v_fma_f32 v55, -v40, v47, 1.0
	v_dual_fmac_f32 v44, v52, v44 :: v_dual_fmac_f32 v45, v53, v45
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v41, s3, v27, v33, v27
	v_fma_f32 v56, -v42, v48, 1.0
	v_fmac_f32_e32 v47, v55, v47
	v_dual_mul_f32 v53, v35, v44 :: v_dual_mul_f32 v54, v37, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v46 :: v_dual_fmac_f32 v48, v56, v48
	v_div_scale_f32 v49, s4, v28, v33, v28
	v_fma_f32 v52, -v43, v51, 1.0
	v_fma_f32 v56, -v34, v53, v35
	v_fma_f32 v58, -v36, v54, v37
	v_mul_f32_e32 v57, v41, v47
	v_fma_f32 v59, -v38, v55, v39
	v_dual_fmac_f32 v51, v52, v51 :: v_dual_mul_f32 v52, v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v56, v44 :: v_dual_fmac_f32 v54, v58, v45
	v_fma_f32 v60, -v40, v57, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v46
	v_div_scale_f32 v50, null, v33, v33, v30
	v_fma_f32 v34, -v34, v53, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v60, v47
	v_fma_f32 v35, -v36, v54, v37
	v_fma_f32 v36, -v38, v55, v39
	v_div_scale_f32 v38, s5, v29, v33, v29
	v_fma_f32 v37, -v40, v57, v41
	v_rcp_f32_e32 v39, v50
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v40, v38, v51
	v_div_fmas_f32 v34, v34, v44, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v34, v33, v24
	v_div_scale_f32 v34, null, v33, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v50, v39, 1.0
	v_div_fmas_f32 v36, v36, v46, v55
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v44, v34
	v_div_fixup_f32 v25, v35, v33, v25
	v_fmac_f32_e32 v39, v41, v39
	v_div_fixup_f32 v26, v36, v33, v26
	v_div_scale_f32 v36, s1, v30, v33, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v34, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v35, v37, v47, v57
	v_fma_f32 v37, -v42, v52, v49
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, s3, v31, v33, v31
	v_div_fixup_f32 v27, v35, v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v37, v48
	v_fma_f32 v35, -v43, v40, v38
	v_div_scale_f32 v37, null, v33, v33, v16
	v_mul_f32_e32 v46, v41, v44
	v_fma_f32 v42, -v42, v52, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v35, v51
	v_mul_f32_e32 v35, v36, v39
	v_rcp_f32_e32 v45, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v48, v52
	v_fma_f32 v38, -v43, v40, v38
	v_div_scale_f32 v48, null, v33, v33, v17
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v50, v35, v36
	v_div_fmas_f32 v38, v38, v51, v40
	v_rcp_f32_e32 v40, v48
	v_div_fixup_f32 v28, v42, v33, v28
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v37, v45, 1.0
	v_div_fixup_f32 v29, v38, v33, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v48, v40, 1.0
	v_fmac_f32_e32 v35, v43, v39
	v_fma_f32 v43, -v34, v46, v41
	v_fmac_f32_e32 v40, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v50, v35, v36
	v_fmac_f32_e32 v46, v43, v44
	v_div_scale_f32 v43, null, v33, v33, v18
	v_div_scale_f32 v42, null, v33, v33, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v36, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v34, v46, v41
	v_div_scale_f32 v41, s1, v17, v33, v17
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s4, v16, v33, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v35, v33, v30
	v_div_fmas_f32 v34, v34, v44, v46
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v43, v39, 1.0
	v_mul_f32_e32 v38, v47, v45
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v34, v33, v31
	v_fma_f32 v35, -v48, v44, v41
	v_fmac_f32_e32 v39, v46, v39
	v_fma_f32 v36, -v37, v38, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v35, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v36, v45
	v_rcp_f32_e32 v36, v42
	v_fma_f32 v34, -v37, v38, v47
	v_div_scale_f32 v37, s3, v18, v33, v18
	v_div_scale_f32 v47, null, v33, v33, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v36, 1.0
	v_mul_f32_e32 v35, v37, v39
	v_div_fmas_f32 v34, v34, v45, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v33, v33, v21
	v_div_fixup_f32 v16, v34, v33, v16
	v_fma_f32 v34, -v48, v44, v41
	v_fma_f32 v41, -v43, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v49, v46
	v_div_scale_f32 v45, s4, v19, v33, v19
	v_fma_f32 v50, -v47, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v41, v39
	v_div_fmas_f32 v34, v34, v40, v44
	v_div_scale_f32 v41, s1, v20, v33, v20
	v_fmac_f32_e32 v38, v50, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v46, v49, 1.0
	v_div_fixup_f32 v17, v34, v33, v17
	v_fma_f32 v34, -v43, v35, v37
	v_mul_f32_e32 v37, v41, v38
	v_div_scale_f32 v43, null, v33, v33, v22
	v_fmac_f32_e32 v49, v44, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v39, v35
	v_fma_f32 v39, -v47, v37, v41
	v_mul_f32_e32 v48, v45, v36
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v34, v33, v18
	v_fmac_f32_e32 v37, v39, v38
	v_fma_f32 v40, -v42, v48, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v37, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v36
	v_div_scale_f32 v40, s5, v21, v33, v21
	v_div_scale_f32 v47, null, v33, v33, v9
	v_fma_f32 v35, -v42, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v49
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v45, null, v33, v33, v23
	v_div_fmas_f32 v35, v35, v36, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v44, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v36, v45
	v_div_fmas_f32 v34, v34, v38, v37
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v39, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v43, v42, 1.0
	v_div_fixup_f32 v19, v35, v33, v19
	v_div_scale_f32 v35, s3, v22, v33, v22
	v_fma_f32 v37, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v39, -v45, v36, 1.0
	v_div_scale_f32 v40, s1, v23, v33, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v49, v44
	v_div_fixup_f32 v20, v34, v33, v20
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, null, v33, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v37, v33, v21
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v46, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v33, v33, v11
	v_fma_f32 v34, -v45, v46, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v48, -v47, v37, 1.0
	v_mul_f32_e32 v38, v35, v42
	v_fmac_f32_e32 v46, v34, v36
	v_div_scale_f32 v34, s4, v8, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v48, v37
	v_fma_f32 v44, -v43, v38, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v42
	v_fma_f32 v44, -v39, v41, 1.0
	v_fma_f32 v35, -v43, v38, v35
	v_div_scale_f32 v43, null, v33, v33, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v44, v41
	v_div_fmas_f32 v35, v35, v42, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v38, -v45, v46, v40
	v_div_scale_f32 v42, s3, v9, v33, v9
	v_mul_f32_e32 v40, v34, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v35, v33, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v42, v37
	v_div_fmas_f32 v36, v38, v36, v46
	v_fma_f32 v48, -v39, v40, v34
	v_fma_f32 v45, -v43, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v50, v42
	v_div_fixup_f32 v23, v36, v33, v23
	v_fmac_f32_e32 v40, v48, v41
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v10, v33, v10
	v_fmac_f32_e32 v50, v38, v37
	v_div_scale_f32 v38, null, v33, v33, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v36, -v49, v51, 1.0
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v50, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v46, v45
	v_fmac_f32_e32 v51, v36, v51
	v_div_scale_f32 v36, s1, v11, v33, v11
	v_div_fmas_f32 v34, v34, v41, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v36, v51
	v_div_fmas_f32 v37, v39, v37, v50
	v_fma_f32 v39, -v43, v46, v45
	v_div_scale_f32 v41, null, v33, v33, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v34, v33, v8
	v_div_fmas_f32 v39, v39, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v36
	v_div_fixup_f32 v9, v37, v33, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v12, v33, v12
	v_fmac_f32_e32 v40, v44, v51
	v_div_fixup_f32 v10, v39, v33, v10
	v_div_scale_f32 v39, null, v33, v33, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v42, v35
	v_fma_f32 v37, -v41, v43, 1.0
	v_fma_f32 v36, -v49, v40, v36
	v_rcp_f32_e32 v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v38, v34, v42
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s4, v13, v33, v13
	v_div_fmas_f32 v36, v36, v51, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v37, v43
	v_div_scale_f32 v44, null, v33, v33, v15
	v_div_fixup_f32 v11, v36, v33, v11
	v_fma_f32 v36, -v38, v34, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v40, v37
	v_fma_f32 v42, -v39, v45, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v36, v35, v34
	v_div_scale_f32 v35, null, v33, v33, v0
	v_fmac_f32_e32 v40, v38, v43
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v33, v33, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v36, s1, v14, v33, v14
	v_div_fixup_f32 v12, v34, v33, v12
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v37, -v41, v40, v37
	v_mul_f32_e32 v41, v36, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v35, v38, 1.0
	v_div_scale_f32 v34, s3, v15, v33, v15
	v_div_fmas_f32 v37, v37, v43, v40
	v_fma_f32 v40, -v39, v41, v36
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v33, v33, v2
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s4, v0, v33, v0
	v_fma_f32 v50, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v52, v49, v38
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v1, v33, v1
	v_div_fixup_f32 v13, v37, v33, v13
	v_fma_f32 v36, -v39, v41, v36
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_fmac_f32_e32 v51, v40, v51
	v_div_scale_f32 v40, s1, v2, v33, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v40, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, null, v33, v33, v3
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v36, v33, v14
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v15, v34, v33, v15
	v_div_fixup_f32 v0, v35, v33, v0
	v_div_scale_f32 v35, null, v33, v33, v4
	v_fmac_f32_e32 v37, v42, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v33, v33, v7
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v47, v37, v40
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v1, v38, v33, v1
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v33, v33, v5
	v_div_scale_f32 v38, null, v33, v33, v6
	v_div_scale_f32 v39, vcc_lo, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v2, v34, v33, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v4, v33, v4
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	v_fma_f32 v48, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v34, v37 :: v_dual_fmac_f32 v47, v51, v47
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v5, v33, v5
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v6, v33, v6
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v7, v33, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v52, v46, v40 :: v_dual_mul_f32 v53, v49, v42
	v_fmac_f32_e32 v50, v48, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v47
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v48, -v38, v53, v49
	v_fma_f32 v34, -v35, v50, v34
	v_fma_f32 v35, -v45, v54, v51
	v_div_fmas_f32 v39, v39, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v41, v40 :: v_dual_fmac_f32 v53, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v35, v47
	v_div_fmas_f32 v34, v34, v37, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v45, v54, v51
	v_div_fixup_f32 v3, v39, v33, v3
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v34, v33, v4
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v36, v33, v5
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v33, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v33, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v33, s53, v70
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
	s_mul_i32 s0, s53, s72
	v_add_nc_u32_e32 v34, v33, v71
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s53, v71
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s59, 0xffff
	s_mov_b32 s4, s58
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	v_add_lshl_u32 v38, v33, v71, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s53, v32
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v71
	v_or_b32_e32 v36, 48, v71
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v35
	v_cmp_gt_i32_e64 s3, s53, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
	v_add_nc_u32_e32 v24, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v39, s[4:7], 0 offen
	buffer_store_b32 v31, v40, s[4:7], 0 offen
	v_add_lshl_u32 v24, v33, v32, 2
	v_add_nc_u32_e32 v25, 0x48, v38
	v_add_nc_u32_e32 v26, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v38
	v_add_nc_u32_e32 v18, 0x70, v38
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v38
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v33, v35, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
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
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v33, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v72
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
	v_add_lshl_u32 v9, v33, v37, 2
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
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 152
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 152
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10680
; TotalNumSgprs: 77
; NumVgprs: 152
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 152
; Occupancy: 9
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     152
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
